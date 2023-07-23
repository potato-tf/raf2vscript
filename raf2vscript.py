import os
import time

os.system('')  # enables ansi escape characters in terminal

COLOR = {
    'CYAN': '\033[96m',
    'HEADER': '\033[95m',
    'GREEN': '\033[94m',
    'YELLOW': '\033[93m',
    'GREEN': '\033[92m',
    'RED': '\033[91m',
    "ENDC": '\033[0m',
}

path = os.getcwd

print(COLOR['HEADER'],'HOW TO USE:', COLOR['ENDC'])
print(COLOR['GREEN'],'================================================================================', COLOR['ENDC'])
print(COLOR['CYAN'],'1. isolate ONLY YOUR POINT TEMPLATES into a single popfile (paste the entire PointTemplate block into a new .pop)', COLOR['ENDC'])
print(COLOR['CYAN'],'2. Place this script in the same directory as your isolated file', COLOR['ENDC'])
print(COLOR['CYAN'],'3. Enter the filename of the specified file and press enter', COLOR['ENDC'])
print(COLOR['GREEN'],'================================================================================', COLOR['ENDC'])

print(COLOR['YELLOW'],'Enter the filename with isolated point templates',COLOR['ENDC'])
print(COLOR['RED'],'(DO NOT ENTER THE UNMODIFIED POPFILE)',COLOR['ENDC'])

filename = input('').strip()

properties = {}

formatted_properties, entity_list, name_list, extralines = [], [], [], []
giveitem = False

funcname = ''

def read_file(filename):
	if '.pop' in filename:
		filename = filename.split('.pop', 1)[0]

	filename = f'{filename}.pop'

	file_path = os.path.join(os.getcwd(), filename)
	
	try:
		with open(file_path, 'r') as file:
			lines = file.readlines()
			content = ''.join(process_line(line) for line in lines)
			return content
	except: 
		print(COLOR['RED'],'Invalid filename!', COLOR['ENDC'])
		input('Press enter to close')

def process_line(line):
    # Remove line comments starting with //
	# print(line.split())
	line = line.split('//', 1)[0]
	line = f'{line}\n'
    # Remove inline comments starting with //
	if '//' in line:
		line = remove_inline_comments(line)
    
	return line

def remove_inline_comments(line):
	in_string = False
	result = ''
	i = 0

	while i < len(line):
		if line[i] == '"':
			in_string = not in_string

		if line[i:i+2] == '//':
			if not in_string:
				break
		
		result += line[i]
		i += 1
	return result


input_text = read_file(filename)
input_text = input_text.strip()

#split each block
text_list = input_text.split('}\n')

#remove indentation
text_list = [text.replace('\t', '') for text in text_list]
# print(text_list)
# Create a dictionary to store the properties

entprefixes = [ 
	'ai',
	'ambient_generic',
	'archer', 
	'assault_', 
	'bot_', 
	'color_correction', 
	'cycler', 
	'dynamic_prop', 
	'entity', 
	'env_', 
	'filter_', 
	'func_', 
	'game_', 
	'gibshooter', 
	'halloween_', 
	'hammer_updateignorelist', 
	'hightower_', 
	'info', 
	'item_', 
	'keyframe_', 
	'light_', 
	'logic_', 
	'mapobj_cart_dispenser',
	'math_', 
	'momentary_', 
	'move_', 
	'npc_', 
	'obj_',
	'path_',
	'phys',
	'point_',
	'prop_',
	'script_',
	'shadow_',
	'sky_',
	'tanktrain_',
	'team_',
	'test_traceline',
	'tf_',
	'training',
	'trigger_',
	'vgui_',
	'water_lod_control',
	'wheel_of_doom',
	'world'
]

outputs = [
	'onspawnoutput',
	'onparentkilledoutput'
]

blacklisted = [
	'onlyvelocitycheck',
]
convertedkeys = [
	'$playsoundtoself',
	'$displaytextchat',
	'$displaytextcenter',
	'$addcond',
	'$removecond',
	'$addplayerattribute',
	'$removeplayerattribute',
	'$setprop',
	'$setclientprop',
	'$addcurrency',
	'$removecurrency',
	'$setmodeloverride',
	'$teleporttoentity',
	'$setkey',
	'$giveitem',
	'$awardandgiveextraitem'
]

def convert_proptype(prop, propval, arrayval):
	# DO NOT USE
	# if prop.startswith('m_sz') or prop.startswith('m_isz'):
	# 	proptype = 'String'

	# elif prop.startswith('m_h'):
	# 	proptype = 'Entity'
	
	# elif prop.startswith('m_i') or prop.startswith('m_n'):
	# 	proptype = 'Int'
	
	# elif prop.startswith('m_fl'):
	# 	proptype = 'Float'

	# else:

	print(COLOR['CYAN'], 'Enter Property Type for', COLOR['ENDC'], COLOR['GREEN'], f'{prop}',COLOR['ENDC'])
	print(COLOR['CYAN'],'Acceptable values:',COLOR['ENDC'],COLOR['GREEN'], 'str, int, fl, ent, bool, vec', COLOR['ENDC'])
	print(COLOR['CYAN'],'Alternatively:',COLOR['ENDC'],COLOR['GREEN'], 's, i, f, e, b, v', COLOR['ENDC'])
	proptype = input('Property Type: ')
	
	if proptype.startswith('s'):
		proptype = 'String'

	elif proptype.startswith('i'):
		proptype = 'Int'

	elif proptype.startswith('f'):
		proptype = 'Float'
	
	elif proptype.startswith('e'):
		proptype = 'Entity'

	elif proptype.startswith('b'):
		proptype = 'Bool'
	
	elif proptype.startswith('v'):
		proptype = 'Vector'
	
	else:
		print(COLOR['RED'], 'Invalid Property Type! Search for SetPropINVALID in generated .nut', COLOR['ENDC'])
		proptype = 'INVALID'
		
	print(COLOR['CYAN'],f'Proptype for {prop} set to',COLOR['ENDC'],COLOR['GREEN'],proptype,COLOR['ENDC'])

	if not arrayval == -1: 
		proptype = f'{proptype}Array'	
		if proptype == 'String':
			return f'NetProps.SetProp{proptype}(self, `{prop}`, `{propval}`, {arrayval})'
		else:
			return f'NetProps.SetProp{proptype}(self, `{prop}`, {propval}, {arrayval})'
	else:
		if proptype == 'String':
			if prop == "m_iszMvMPopfileName":
				print(COLOR['YELLOW'],'WARNING! Changing m_iszMvMPopfileName can break map rotation! Change back to default on mission complete',COLOR['ENDC'])
			return f'NetProps.SetProp{proptype}(self, `{prop}`, `{propval}`)'
		else:
			return f'NetProps.SetProp{proptype}(self, `{prop}`, {propval})'

def convert_raf_keyvalues(value):
	# print(value.split(','))
	global giveitem
	if 'addoutput' in value or 'AddOutput' in value:
		splitval = value.split(':')
	else:
		splitval = value.split(',')
	# print(splitval)
	# if not '$setclientprop' in splitval[1].lower() or not '$setprop' in splitval[1].lower: splitval[1] = splitval[1].lower()

	# convert global $PlaySoundToSelf inputs to tf_gamerules PlayVORed
	# TODO: implement point_clientcommand play inputs or something else for !activator/player specific sounds
	if 'player' in splitval[0].lower() and '$playsoundtoself' in splitval[1].lower():
		print(COLOR['HEADER'], f'converted {splitval[1]} input to PlayVORed', COLOR['ENDC'])
		splitval[0] = 'tf_gamerules'
		splitval[1] = 'PlayVORed'


	# convert $SetProp and $SetClientProp to vscript alternative
	elif '$setclientprop' in splitval[1].lower() or '$setprop' in splitval[1].lower():
		print(COLOR['HEADER'], f'converted {splitval[1]} to vscript alternative', COLOR['ENDC'])
		splitprop = splitval[1].split('$')
		if len(splitprop) == 4: 
			arrayval = splitprop[3]
			splitval[2] = convert_proptype(splitprop[2], splitval[2], arrayval)
			splitval[1] = 'RunScriptCode'
		else: 
			arrayval = -1
			splitval[2] = convert_proptype(splitprop[2], splitval[2], arrayval)
			splitval[1] = 'RunScriptCode'
		# print(f'NetProps.SetProp{convert_proptype(splitprop[3])}(self, {splitprop[3]}, {splitval[2]})')

	#convert $DisplayText to ClientPrint
	elif '$displaytextchat' in splitval[1].lower() or '$displaytextcenter' in splitval[1].lower():
		print(COLOR['HEADER'], f'converted {splitval[1]} to ClientPrint', COLOR['ENDC'])

		if splitval[2].startswith('{') and '$displaytextchat' in splitval[1]:
			splitcolor = splitval[2].split("{")
			removebracket = splitcolor[1].split('}')
			color = r'\x07' + ''.join(removebracket)
			splitval[1] = 'RunScriptCode'
			splitval[2] = f'ClientPrint(self, 3, `{color}`)'
			
		else:
			splitval[1] = 'RunScriptCode'
			splitval[2] = f'ClientPrint(self, 4, `{splitval[2]}`)'
		# print(color)
		# input('')

	#convert $DisplayText to ClientPrint
	elif 'player' in splitval[0].lower() and '$displaytextcenter' in splitval[1].lower():
		print(COLOR['HEADER'], f'converted {splitval[1]} to vscript alternative', COLOR['ENDC'])

	#convert $SetKey to AddOutput (probably won't work everywhere)
	elif '$setkey' in splitval[1].lower():
		splitkey = splitval[1].split('$')
		print(COLOR['HEADER'], f'Converted {splitval[1]} to AddOutput {splitkey[2]}.  This may not work for certain inputs!', COLOR['ENDC'])
		splitval[1] = 'AddOutput'
		splitval[2] = f'{splitkey[2]} {splitval[2]}'

	elif '$addcond' in splitval[1].lower() or '$removecond' in splitval[1].lower():
		print(COLOR['HEADER'], f'converted {splitval[1]} to vscript alternative', COLOR['ENDC'])
		if '$addcond' in splitval[1].lower():
			splitval[1] = 'RunScriptCode'
			splitval[2] = f'self.AddCond({splitval[2]})'
		else:
			splitval[1] = 'RunScriptCode'
			splitval[2] = f'self.RemoveCond({splitval[2]})'

	elif '$addplayerattribute' in splitval[1].lower() or '$removeplayerattribute' in splitval[1].lower():
		print(COLOR['HEADER'], f'converted {splitval[1]} to vscript alternative', COLOR['ENDC'])
		if '$addplayerattribute' in splitval[1].lower():
			splitattrib = splitval[2].split('|')
			# print(splitattrib)
			splitval[1] = 'RunScriptCode'
			splitval[2] = f'self.AddCustomAttribute(`{splitattrib[0]}`, {splitattrib[1]}, -1)'
		else:
			splitval[1] = 'RunScriptCode'
			splitval[2] = f'self.RemoveCustomAttribute(`{splitval[2]}`)'

	elif '$teleporttoentity' in splitval[1].lower():
		print(COLOR['HEADER'], f'converted {splitval[1]} to vscript alternative', COLOR['ENDC'])
		splitval[1] = 'RunScriptCode'
		splitval[2] = f'self.SetOrigin({splitval[2]}.GetOrigin())'
	# 	print(splitval)
	
	elif '$setmodeloverride' in splitval[1].lower():
		print(COLOR['HEADER'], f'converted {splitval[1]} to SetCustomModelWithClassAnimations', COLOR['ENDC'])
		splitval[1] = 'SetCustomModelWithClassAnimations'
	
	# elif '$removeoutput' in splitval[1].lower():
	# 	print(COLOR['HEADER'], f'converted {splitval[1]} to SetCustomModelWithClassAnimations', COLOR['ENDC'])
	# 	splitval[1] = 'RunScriptCode'
	# 	splitval[2] = 'EntityOutputs.RemoveOutput(self,``,`effects`,)'

	elif '$giveitem' in splitval[1].lower() or '$awardandgiveextraitem' in splitval[1].lower():
		giveitem = True

		print(COLOR['CYAN'], 'Enter The item classname and definiton index for',COLOR['ENDC'],COLOR['HEADER'],f'{splitval[2]}',COLOR['ENDC'])
		print(COLOR['CYAN'],'Find them here:',COLOR['ENDC'],COLOR['GREEN'],'https://wiki.alliedmods.net/Team_fortress_2_item_definition_indexes',COLOR['ENDC'])
		print(COLOR['CYAN'],'Enter null for wearable model if you are not creating a tf_wearable weapon',COLOR['ENDC'])
		print(COLOR['HEADER'], 'Enter ? for an example input',COLOR['ENDC'])
		formatval = input('Format: Classname ? Index ? Wearable Model: ')
		if formatval == '?':
			print(COLOR['CYAN'],'Example input (the bat outta hell):',COLOR['ENDC'],COLOR['GREEN'], 'tf_weapon_bottle ? 939 ? null', COLOR['ENDC'])
			print(COLOR['CYAN'],'Example tf_wearable input (cozy camper):',COLOR['ENDC'],COLOR['GREEN'], 'tf_wearable ? 642 ? models/workshop/player/items/sniper/xms_sniper_commandobackpack/xms_sniper_commandobackpack.mdl', COLOR['ENDC'])
			formatval = input('Format: Classname ? Index ? Wearable Model: ')
		formatval = formatval.split('?')
		if len(formatval) == 2:
			formatval.append('null')
		if len(formatval) < 2 or len(formatval) > 3:
			print(COLOR['RED'], 'Invalid input, search for `INVALID` in the generated .nut file')
			print(COLOR['RED'], 'Press enter to continue')
			input('')
			formatval = ['INVALID', '-1', 'null']
			
		splitval[1] = 'RunScriptCode'
		splitval[2] = f'GiveWeapon(self,`{formatval[0]}`,{int(formatval[1])},{formatval[2]})'

	elif '$addcurrency' in splitval[1].lower() or '$removecurrency' in splitval[1].lower():
		print(COLOR['HEADER'], f'converted {splitval[1]} to vscript alternative', COLOR['ENDC'])
		
		if '$addcurrency' in splitval[1].lower():
			splitval[1] = 'RunScriptCode'
			splitval[2] = f'self.AddCurrency({splitval[2]})'
		else:
			splitval[1] = 'RunScriptCode'
			splitval[2] = f'self.RemoveCurrency({splitval[2]})'

	# print(splitval)
	# input('')
	if 'addoutput' in value or 'AddOutput' in value:
		value = ':'.join(splitval)
		return value
	else:
		value = ','.join(splitval)
		return value	

j, b, g = 1, 1, 1
oldname = ''

#format rafmod to spawnentityfromtable
def format_entities(lines, entity_name):
	brushname = f'{entity_name}_brush'
	brushent = False
	global j, b, g

	for _, line in enumerate(lines):
		try:
			# if line.split('"')[0] == '}':
			if '"' in line:
				parts = line.split('"')
				key, value = parts[1::2]
			else:
				if len(parts) > 0 and not any(lines[2].startswith(prefix) for prefix in entprefixes):
					parts = line.split()
					# print(parts)
					key, value = parts[0], parts[1]
					# value = ' '.join(parts[1:])
					# print(key, value)
			if key == '}': continue
			properties[key] = value
			# print(f'{key} : {value}')
			lowerkey = key.lower()
			if '\\' in value: value.replace('\\','/')
			
			# there's bound to be more kv's that start with 'on' that will fuck this up, just blacklist them as they appear
			if (lowerkey.startswith('on') or lowerkey.startswith('outvalue')) and not any(lowerkey.startswith(blacklist) for blacklist in blacklisted):
				# if any(lowervalue.startswith(k) for k in convertedkeys):
				# if any(lowervalue.startswith(k) for k in convertedkeys):
				# if '$' in value:
				if any(k in value.lower() for k in convertedkeys):
					# print(value)
					value = convert_raf_keyvalues(value)
					# print(value)

				formatted_properties.append(f'"{key}#{j}": "{value}"')

				j += 1
			
			else:
				if 'mins' in key: 
					brushent = True
					brushsizemin = f'\t{brushname}{b}.KeyValueFromString("{key}", "{value}")'
				if 'maxs' in key: 
					brushent = True
					brushsizemax = f'\t{brushname}{b}.KeyValueFromString("{key}", "{value}")'
				if key.startswith('origin'):
					splitval = value.split(' ')
					value = f'Vector({splitval[0]}, {splitval[1]}, {splitval[2]})'

				if key.startswith('angles'):
					splitval = value.split(' ')
					value = f'QAngle({splitval[0]}, {splitval[1]}, {splitval[2]})'
				
				if value.isdigit() or 'Vector' in value or 'QAngle' in value:
					formatted_properties.append(f'{key} = {value}')
				else:
					try:
						formatted_properties.append(f'{key} = {float(value)}')
					except ValueError:
						formatted_properties.append(f'{key} = "{value}"')
		except: pass
			# print(COLOR['GREEN'], 'Converting', COLOR['ENDC'], COLOR['YELLOW'], entity_name, COLOR['ENDC'])
	j = 1
	# if len(entity_name) < 1: continue

	global funcname, oldname
	if not brushent:
		if funcname != oldname and funcname != '':
			oldname = funcname
			spawnfunc = f'}}\n::{funcname} <- function(origin, angles)\n{{\n'
			output_text = f'{spawnfunc}\tlocal {entity_name}{g} = SpawnEntityFromTable("{entity_name}", {{\n\t    {",\n\t    ".join(formatted_properties)}\n\t}})\n\n\tif(origin != null)\n\t\t{entity_name}{g}.SetOrigin(origin)\n\tif(angles != null)\n\t\t{entity_name}{g}.SetAngles(angles)\n'
		else:
			output_text = f'\tlocal {entity_name}{g} = SpawnEntityFromTable("{entity_name}", {{\n\t    {",\n\t    ".join(formatted_properties)}\n\t}})\n\n\tif(origin != null)\n\t\t{entity_name}{g}.SetOrigin(origin)\n\tif(angles != null)\n\t\t{entity_name}{g}.SetAngles(angles)\n'
		g += 1
	else:
		if funcname != oldname and funcname != '':
			oldname = funcname
			spawnfunc = f'}}\n::{funcname} <- function()\n{{\n'
			output_text = f'{spawnfunc}\tlocal {brushname}{b} = SpawnEntityFromTable("{entity_name}", {{\n\t    {",\n\t    ".join(formatted_properties)}\n\t}})\n\t{brushname}{b}.KeyValueFromInt("solid", 2)\n{brushsizemin}\n{brushsizemax}\n\n\tif(origin != null)\n\t\t{brushname}{b}.SetOrigin(origin)\n\tif(angles != null)\n\t\t{brushname}{b}.SetAngles(angles)\n'
		else:
			output_text = f'\tlocal {brushname}{b} = SpawnEntityFromTable("{entity_name}", {{\n\t    {",\n\t    ".join(formatted_properties)}\n\t}})\n\t{brushname}{b}.KeyValueFromInt("solid", 2)\n{brushsizemin}\n{brushsizemax}\n\n\tif(origin != null)\n\t\t{brushname}{b}.SetOrigin(origin)\n\tif(angles != null)\n\t\t{brushname}{b}.SetAngles(angles)\n'
		brushent = False
		b += 1
	entity_list.append(f'{output_text}\n')
	# print(funcname)
	# print(output_text)
	# print(lines)
	# input('')
	name_list.append(entity_name)
	formatted_properties.clear()

def convert_spawntemplates(lines):
	for line in lines:
		if line[0].startswith("SpawnTemplate"):
			print(line[0])

#convert OnSpawnOutput/OnParentKilledOutput to relays
def convert_entities():
	o, p = 1, 1
	global extralines
	try:
		# Split the input into lines
		for i in text_list:
			lines = i.split('\n')
			# Remove empty lines
			lines = [line.strip() for line in lines if line.strip()]

			# print([line.split('//') for line in lines if line.split('//')])
			if len(lines) < 1:
				continue
			else:

				if lines[0] == '}':
					lines = lines[1:]

				if lines[0].lower().startswith('pointtemplates'):
					print(lines)
					lines = lines[2:]

				if lines[0].startswith('{'):
					lines = lines[1:]

				if not any(lines[0].startswith(prefix) for prefix in entprefixes) and not lines[0].lower() == 'onspawnoutput' and not lines[0].lower() == 'onparentkilledoutput':
					global funcname
					funcname = lines[0]
					# print(lines)
					
				if 'nofixup' in lines[1].lower() or any(lines[2].startswith(prefix) for prefix in entprefixes):
					lines = lines[2:]

				if 'nofixup' in lines[2].lower():
					# print(lines)
					lines = lines[3:]

				# Get the entity name
				if lines[0].endswith(' {'):
					lines[0] = lines[0].removesuffix('{')

				entity_name = ''
				
				# convert OnSpawnOutput to logic_relay

				# print(lines)
				if lines[2].startswith('OnSpawnOutput') or lines[2].startswith('OnParentKilledOutput'):
					lines = lines[2:]

				if lines[0].startswith('OnSpawnOutput') or lines[0].startswith('OnParentKilledOutput'):
					for index, item in enumerate(lines):
						if item == '}':
							extralines = lines[index:]
							extralines = extralines[1:]
							lines = lines[:index]
							# print(lines)
							# print(f'EXTRA {extralines}')
							break
					if len(lines) < 2: continue

					lines = [line.replace('"','').strip() for line in lines]
					if lines[0].startswith('OnSpawnOutput'):
						relayline = ['logic_relay','{','','"spawnflags" "1"',f'"targetname" "SPAWNOUTPUT_CONVERSION{o}"']
						print(COLOR['HEADER'], f'converted OnSpawnOutput to logic_relay named SPAWNOUTPUT_CONVERSION{o}.', COLOR['ENDC'])
						o += 1
					elif lines[0].startswith('OnParentKilledOutput'):
						relayline = ['logic_relay','{','','"spawnflags" "1"',f'"targetname" "PARENTKILLEDOUTPUT_CONVERSION{p}"']
						print(COLOR['HEADER'], f'converted OnSpawnOutput to logic_relay named PARENTKILLEDOUTPUT_CONVERSION{p}.', COLOR['ENDC'])
						p += 1
					# print(lines)
					# lines[0] = 'logic_relay'
					if lines[2].startswith('Target'):

						lines[3] = lines[3].removeprefix('Action ')
						lines[2] = lines[2].split('Target')
						# lines[2] = lines[2].replace('Target', 'OnSpawn')
						# lines[2] = 'OnSpawn'.join(lines[2])
						# print(lines)
					
					if len(lines) == 4:
						relayline[2] = f'"OnTrigger" "{lines[2][1].strip()},{lines[3]},,0.0,-1"'
						# print(relayline)
					
					if len(lines) == 5:
						if lines[4].startswith('Delay'):
							lines[4] = lines[4].removeprefix('Delay').strip()
							# print(lines)
							relayline[2] = f'"OnTrigger" "{lines[2][1].strip()},{lines[3]},,{lines[4]},-1"'
							# print(relayline)

						elif lines[4].startswith('Param'):
							lines[4] = lines[4].removeprefix('Param').strip()
							relayline[2] = f'"OnTrigger" "{lines[2][1].strip()},{lines[3]},{lines[4]},0.0,-1"'
							# print(relayline)

					if len(lines) >= 6:
						lines[4] = lines[4].removeprefix('Param').strip()
						lines[5] = lines[5].removeprefix('Delay').strip()
						if len(lines[2]) > 1:
							lines[2] = lines[2][1:]
							relayline[2] = f'"OnTrigger" "{lines[2][0].strip()},{lines[3]},{lines[4]},{lines[5]},-1"'
							# print(relayline[2])
						else:
							relayline[2] = f'"OnTrigger" "{lines[2].strip()},{lines[3]},{lines[4]},{lines[5]},-1"'
						# print(relayline)

					# if '$' in relayline[2]:
					# 	print(relayline[2])
					# 	relayline[2] = convert_raf_keyvalues(relayline[2])
					# 	print(relayline[2])
					# 	input('')
					lines = relayline
						# input('')

				# lines = lines[0][0]

				# print(lines)
				if any(lines[0].startswith(prefix) for prefix in entprefixes):
					entity_name = lines[0]

				if len(extralines) > 0:
					# print(f'EXTRALINES: {extralines}')
					entity_name = extralines[0]
					format_entities(extralines, entity_name)
					extralines.clear()
					entity_name = lines[0]
					format_entities(lines, entity_name)
				else:
					format_entities(lines, entity_name)
				# print(lines)
				# Remove the entity name line
			# convert_spawntemplates(lines)
	except Exception as IndexError:
		# print(COLOR['RED'],f'Conversion complete! press enter to write entities to file',COLOR['ENDC'])
		print(COLOR['CYAN'],f'Writing entities to file...',COLOR['ENDC'])
		entity_list.append(f'\n}}\n')
		name_list.append('END OF FILE')
		time.sleep(1)
		# input('')
	except:
		print(COLOR['RED'],f'An error has occured. Press enter to continue',COLOR['ENDC'])
		input('')

def write_ents_to_file():
	global giveitem
	i = 0
	newfilename = filename
	if '.pop' in filename:
		newfilename = filename.split('.pop', 1)[0]

	script = open(f'r2v_{newfilename}.nut', 'w')
	invalidprop = False
	if giveitem:
		# func = '::GiveWeapon <- function(player, classname, itemid, model)\n{\n\tif (model != null && (classname == \"tf_wearable\" || classname == \"tf_wearable_demoshield\" || classname == \"tf_wearable_razorback\"))\n\t{\n\t\tlocal wearable = Entities.CreateByClassname(classname);\n\t\tNetProps.SetPropInt(wearable, \"m_nModelIndex\", PrecacheModel(model));\n\t\tNetProps.SetPropBool(wearable, \"m_bValidatedAttachedEntity\", true);\n\t\tNetProps.SetPropBool(wearable, \"m_AttributeManager.m_Item.m_bInitialized\", true);\n\t\tNetProps.SetPropEntity(wearable, \"m_hOwnerEntity\", player);\n\t\twearable.SetOwner(player);\n\t\twearable.DispatchSpawn();\n\t\tEntFireByHandle(wearable, \"SetParent\", \"!activator\", 0.0, player, player);\n\t\tNetProps.SetPropInt(wearable, \"m_fEffects\", 129);\n\t\tfor (local i = 0; i < 7; i++)\n\t\t{\n\t\t\tlocal heldWeapon = GetPropEntityArray(player, \"m_hMyWeapons\", i);\n\t\t\tif (heldWeapon == null) \n\t\t\t\tcontinue;\n\t\t\tif (heldWeapon.GetSlot() != wearable.GetSlot()) \n\t\t\t\tcontinue;\n\t\t\theldWeapon.Destroy();\n\t\t\tSetPropEntityArray(player, \"m_hMyWeapons\", wearable, i);\n\t\t\tbreak;\n\t\t}\n\t\treturn wearable;\n\t} else {\n\t\tlocal weapon = Entities.CreateByClassname(classname);\n\t\tSetPropInt(weapon, \"m_AttributeManager.m_Item.m_iItemDefinitionIndex\", itemid);\n\t\tSetPropBool(weapon, \"m_AttributeManager.m_Item.m_bInitialized\", true);\n\t\tSetPropBool(weapon, \"m_bValidatedAttachedEntity\", true);\n\t\tEntities.DispatchSpawn(weapon);\n\t\tfor (local i = 0; i < 7; i++)\n\t\t{\n\t\t\tlocal heldWeapon = GetPropEntityArray(player, \"m_hMyWeapons\", i);\n\t\t\tif (heldWeapon == null) \n\t\t\t\tcontinue;\n\t\t\tif (heldWeapon.GetSlot() != weapon.GetSlot()) \n\t\t\t\tcontinue;\n\t\t\theldWeapon.Destroy();\n\t\t\tSetPropEntityArray(player, \"m_hMyWeapons\", weapon, i);\n\t\t\tbreak;\n\t\t}\n\t\tplayer.Weapon_Equip(weapon);\n\t}\n\treturn weapon;\n}'
		func = '::GiveWeapon <- function(player, classname, itemid, model)\n{\n\tif (model != null && (classname == \"tf_wearable\" || classname == \"tf_wearable_demoshield\" || classname == \"tf_wearable_razorback\"))\n\t{\n\t\tlocal wearable = Entities.CreateByClassname(classname);\n\t\tNetProps.SetPropInt(wearable, \"m_nModelIndex\", PrecacheModel(model));\n\t\tNetProps.SetPropBool(wearable, \"m_bValidatedAttachedEntity\", true);\n\t\tNetProps.SetPropBool(wearable, \"m_AttributeManager.m_Item.m_bInitialized\", true);\n\t\tNetProps.SetPropEntity(wearable, \"m_hOwnerEntity\", player);\n\t\twearable.SetOwner(player);\n\t\twearable.DispatchSpawn();\n\t\tEntFireByHandle(wearable, \"SetParent\", \"!activator\", 0.0, player, player);\n\t\tNetProps.SetPropInt(wearable, \"m_fEffects\", 129);\n\t\tfor (local i = 0; i < 7; i++)\n\t\t{\n\t\t\tlocal heldWeapon = GetPropEntityArray(player, \"m_hMyWeapons\", i);\n\t\t\tif (heldWeapon == null) \n\t\t\t\tcontinue;\n\t\t\tif (heldWeapon.GetSlot() != wearable.GetSlot()) \n\t\t\t\tcontinue;\n\t\t\theldWeapon.Destroy();\n\t\t\tSetPropEntityArray(player, \"m_hMyWeapons\", wearable, i);\n\t\t\tbreak;\n\t\t}\n\t\treturn wearable;\n\t} else {\n\t\tlocal weapon = Entities.CreateByClassname(classname);\n\t\tSetPropInt(weapon, \"m_AttributeManager.m_Item.m_iItemDefinitionIndex\", itemid);\n\t\tSetPropBool(weapon, \"m_AttributeManager.m_Item.m_bInitialized\", true);\n\t\tSetPropBool(weapon, \"m_bValidatedAttachedEntity\", true);\n\t\tEntities.DispatchSpawn(weapon);\n\t\tfor (local i = 0; i < 7; i++)\n\t\t{\n\t\t\tlocal heldWeapon = GetPropEntityArray(player, \"m_hMyWeapons\", i);\n\t\t\tif (heldWeapon == null) \n\t\t\t\tcontinue;\n\t\t\tif (heldWeapon.GetSlot() != weapon.GetSlot()) \n\t\t\t\tcontinue;\n\t\t\theldWeapon.Destroy();\n\t\t\tSetPropEntityArray(player, \"m_hMyWeapons\", weapon, i);\n\t\t\tbreak;\n\t\t}\n\t\tplayer.Weapon_Equip(weapon);\n\t}\n\treturn weapon;\n'
	# this function does not have tf_wearable compatibility
	# func = '::GiveWeapon <- function(player, classname, itemid)\n{\n\t\t// local clientcommand = Entities.CreateByClassname(\"point_clientcommand\");\n\n\tlocal weapon = Entities.CreateByClassname(classname);\n\n\tSetPropInt(weapon, \"m_AttributeManager.m_Item.m_iItemDefinitionIndex\", itemid);\n\tSetPropBool(weapon, \"m_AttributeManager.m_Item.m_bInitialized\", true);\n\tSetPropBool(weapon, \"m_bValidatedAttachedEntity\", true);\n\tEntities.DispatchSpawn(weapon);\n\n\tfor (local i = 0; i < 7; i++)\n\t{\n\t\tlocal heldWeapon = GetPropEntityArray(player, \"m_hMyWeapons\", i);\n\n\t\tif (heldWeapon == null)\n\t\t\tcontinue;\n\t\tif (heldWeapon.GetSlot() != weapon.GetSlot())\n\t\t\tcontinue;\n\n\t\theldWeapon.Destroy();\n\t\tSetPropEntityArray(player, \"m_hMyWeapons\", weapon, i);\n\t\tbreak;\n\t}\n\tplayer.Weapon_Equip(weapon);\n\n\treturn weapon;\n}'
		script.write(func)
	for e in entity_list:
		print(COLOR['GREEN'],'Writing',COLOR['ENDC'],COLOR['CYAN'],name_list[i],COLOR['ENDC'],COLOR['GREEN'],'to file...',COLOR['ENDC'])
		script.write(e)
		# print(COLOR['GREEN'], f'writing {name_list[i]} to file')
		i += 1
		if 'INVALID' in e: invalidprop = True
	script.close()
	print(COLOR['GREEN'],'File written!',COLOR['ENDC'],COLOR['YELLOW'],len(name_list) - 1,COLOR['ENDC'],COLOR['GREEN'],'Entities Converted',COLOR['ENDC'])

	if invalidprop:
		print(COLOR['RED'],f'invalid property type entered, search for SetPropINVALID in the provided .nut file',COLOR['ENDC'])

if __name__ == '__main__':

		convert_entities()
		write_ents_to_file()
		input('Press Enter To Close...')