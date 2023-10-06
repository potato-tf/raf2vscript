import os
import time
from itemdef_dict import itemdefs, offset
# import itemdef_dict

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

newcolors = {
	'blue': '99ccff',
	'red': 'ff3f3f',
	'green': '99ff99',
	'darkgreen': '40ff40',
	'yellow': 'ffb200',
	'grey': 'cccccc',
	'newline': '\\n'
}

lumpchars = ['','ø','','','ß','','�']

path = os.getcwd()

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

formatted_properties, entity_list, name_list, extralines, log, func_list = [], [], [], [], [], []
giveitem, switchslot, changeattribs, lumpfile, vmffile, stripweps =  False, False, False, False, False, False
funcname = ''

#TODO: Implement some actual list of entity names instead of doing this
# also make ent name check stop after finding the first match to avoid targetnames with similar names.
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
	'world',
	'$'
]

outputs = [
	'onspawnoutput',
	'onparentkilledoutput',
	'keepalive 1',
	'nofixup 1'
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
	'$awardandgiveextraitem',
	'$weaponswitchslot',
	'$changeattributes',
	'$setowner',
	'$weaponstripslot'
]
# Define a regular expression pattern to match key-value pairs
# nvm regex scares me
# pattern = r'(\S+)\s+([^\n]+)'

def read_file(filename):
	global lumpfile, vmffile
	file_path = os.path.join(os.getcwd(), filename)


	try:
		if os.path.exists(f'{file_path}.pop'):
				file_path = f'{file_path}.pop'
				lumpfile = False
				vmffile = False

		elif os.path.exists(f'{file_path}.lmp'):
				file_path = f'{file_path}.lmp'
				lumpfile = True

		elif os.path.exists(f'{file_path}.vmf'):
				file_path = f'{file_path}.vmf'
				vmffile = True

		with open(file_path, 'r') as file:
			lines = file.readlines()
			content = ''.join(process_line(line) for line in lines)
			return content

	except:
		print(COLOR['RED'],'Invalid filename!', COLOR['ENDC'])
		input('Press enter to close')

def process_line(line):

	if not '$displaytext' in line.lower():
		line = line.split('//', 1)[0]
		line = f'{line}\n'
   		# Remove inline comments
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
# print(input_text)
input_text = input_text.strip()

#split each block
text_list = input_text.split('}\n')

#remove indentation
text_list = [text.replace('\t', '') for text in text_list]


# print(text_list)

#TODO: dump all netprops and their prop type into a table or something to do this automatically

def convert_proptype(prop, propval, arrayval):

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
	global giveitem, switchslot, changeattribs, stripweps
	if 'addoutput' in value.lower():
		splitval = value.split(':')
	else:
		splitval = value.split(',')

	entinput = splitval[1].lower().strip()
	# convert global $PlaySoundToSelf inputs to tf_gamerules PlayVORed
	if 'player' in splitval[0].lower() and '$playsoundtoself' in entinput:
		print(COLOR['HEADER'], f'converted {splitval[1]} input to PlayVORed', COLOR['ENDC'])
		splitval[0] = 'tf_gamerules'
		splitval[1] = 'PlayVORed'

	# use emitsoundex vscript function instead

	elif not 'player' in splitval[0].lower() and '$playsoundtoself' in entinput:
		splitval[1] = 'RunScriptCode'
		splitval[2] = f'EmitSoundEx({{sound_name = `{splitval[2]}`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 }})'

	# convert $SetProp and $SetClientProp to vscript alternative
	elif '$setclientprop' in entinput or '$setprop' in entinput:
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
	elif '$displaytextchat' in entinput or '$displaytextcenter' in entinput:
		print(COLOR['HEADER'], f'converted {splitval[1]} to ClientPrint', COLOR['ENDC'])
		if splitval[2].startswith('{') and '$displaytextchat' in entinput:
			splitcolor = splitval[2].split('{')
			removebracket = splitcolor[1].split('}')
			removebracket[0] = newcolors[removebracket[0]]
			color = r'\x07' + ''.join(removebracket)
			splitval[1] = 'RunScriptCode'
			splitval[2] = f'ClientPrint(self, 3, `{color}`)'

		else:
			splitval[1] = 'RunScriptCode'
			splitval[2] = f'ClientPrint(self, 4, `{splitval[2]}`)'
		# input('')

	#convert $SetKey to AddOutput (probably won't work everywhere)
	elif '$setkey' in entinput:
		splitkey = splitval[1].split('$')
		print(COLOR['HEADER'], f'Converted {splitval[1]} to AddOutput {splitkey[2]}.  This may not work for certain entinputs!', COLOR['ENDC'])
		splitval[1] = 'AddOutput'
		splitval[2] = f'{splitkey[2]} {splitval[2]}'

	elif '$addcond' in entinput or '$removecond' in entinput:
		print(COLOR['HEADER'], f'converted {splitval[1]} to vscript alternative', COLOR['ENDC'])
		if '$addcond' in entinput:
			splitval[1] = 'RunScriptCode'
			splitval[2] = f'self.AddCond({splitval[2]})'
		else:
			splitval[1] = 'RunScriptCode'
			splitval[2] = f'self.RemoveCond({splitval[2]})'

	elif '$addplayerattribute' in entinput or '$removeplayerattribute' in entinput:
		print(COLOR['HEADER'], f'converted {splitval[1]} to vscript alternative', COLOR['ENDC'])
		if '$addplayerattribute' in entinput:
			splitattrib = splitval[2].split('|')
			# print(splitattrib)
			splitval[1] = 'RunScriptCode'
			splitval[2] = f'self.AddCustomAttribute(`{splitattrib[0]}`, {splitattrib[1]}, -1)'
		else:
			splitval[1] = 'RunScriptCode'
			splitval[2] = f'self.RemoveCustomAttribute(`{splitval[2]}`)'

	elif '$teleporttoentity' in entinput:
		print(COLOR['HEADER'], f'converted {splitval[1]} to vscript alternative', COLOR['ENDC'])
		splitval[1] = 'RunScriptCode'
		splitval[2] = f'self.SetOrigin({splitval[2]}.GetOrigin())'
	# 	print(splitval)

	elif '$setmodeloverride' in entinput:
		print(COLOR['HEADER'], f'converted {splitval[1]} to SetCustomModelWithClassAnimations', COLOR['ENDC'])
		splitval[1] = 'SetCustomModelWithClassAnimations'

	# elif '$removeoutput' in entinput:
	# 	print(COLOR['HEADER'], f'converted {splitval[1]} to SetCustomModelWithClassAnimations', COLOR['ENDC'])
	# 	splitval[1] = 'RunScriptCode'
	# 	splitval[2] = 'EntityOutputs.RemoveOutput(self,``,`effects`,)'

	elif '$giveitem' in entinput or '$awardandgiveextraitem' in entinput:
		giveitem = True
		stringval = splitval[2].strip().lower()
		# debug testing
		# formatval = 'a ? a ? null'
		if stringval != 'tf_wearable' and (stringval in itemdefs or stringval.removeprefix('the ') in itemdefs):
			formatval = f'{stringval} ? {itemdefs[stringval]} ? null'

			if not stringval.startswith('tf_'):
				for k,v in itemdefs:
					input(k)
					if v == k - offset:
						stringval = k - offset
				formatval = f'{stringval} ? {itemdefs[stringval]} ? null'

		else:
			print(COLOR['CYAN'], 'Enter The item classname and definiton index for',COLOR['ENDC'],COLOR['HEADER'],f'{splitval[2].strip()}',COLOR['ENDC'])
			print(COLOR['CYAN'],'Find them here:',COLOR['ENDC'],COLOR['GREEN'],'https://wiki.alliedmods.net/Team_fortress_2_item_definition_indexes',COLOR['ENDC'])
			print(COLOR['CYAN'],'Enter null for wearable model if you are not creating a tf_wearable weapon',COLOR['ENDC'])
			print(COLOR['HEADER'], 'Enter ? for an example input',COLOR['ENDC'])
			formatval = input('Format: Classname ? Index ? Wearable Model: ')

			if formatval == '?':
				print(COLOR['CYAN'],'Example input (the bat outta hell for demo):',COLOR['ENDC'],COLOR['GREEN'], 'tf_weapon_bottle ? 939 ? null', COLOR['ENDC'])
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
		splitval[2] = f'GiveWeapon(self,`{formatval[0].strip()}`,{int(formatval[1])},{formatval[2]})'

	elif '$addcurrency' in entinput or '$removecurrency' in entinput:
		print(COLOR['HEADER'], f'converted {splitval[1]} to vscript alternative', COLOR['ENDC'])

		if '$addcurrency' in entinput:
			splitval[1] = 'RunScriptCode'
			splitval[2] = f'self.AddCurrency({splitval[2]})'
		else:
			splitval[1] = 'RunScriptCode'
			splitval[2] = f'self.RemoveCurrency({splitval[2]})'

	elif '$weaponswitchslot' in entinput:
		print(COLOR['HEADER'], f'converted {splitval[1]} to vscript alternative', COLOR['ENDC'])
		switchslot = True
		splitval[1] = 'RunScriptCode'
		splitval[2] = f'WeaponSwitchSlot({splitval[2]}, self)'

	elif '$changeattributes' in entinput:
		print(COLOR['HEADER'], f'converted {splitval[1]} to ChangeBotAttributes.  This will cause issues with multiple events under the same name!', COLOR['ENDC'])
		changeattribs = True
		splitval[0] = 'point_populator_interface'
		splitval[1] = 'ChangeBotAttributes'

	elif '$setowner' in entinput:
		splitval[1] = 'RunScriptCode'
		splitval[2] = f'self.SetOwner({splitval[2]})'

	elif '$weaponstripslot' in entinput:
		stripweps = True
		splitval[1] = 'RunScriptCode'
		splitval[2] = f'StripWeapon(self, {splitval[2]})'


	# print(splitval)
	# input('')
	lower = [v.lower() for v in splitval]
	if 'addoutput' in lower[0]:

		if 'runscriptcode' in lower[1] and ',' in lower[2]:
			splitval[0] = ''.join(splitval[0].split(','))
			splitval[-1] = ''.join(splitval[-1].split(','))

		value = ':'.join(splitval)
		return value

	else:
		if 'runscriptcode' in lower[1] and ',' in lower[2]:
			value = ''.join(splitval)
		else:
			value = ','.join(splitval)
		return value

j, b, g, t = 1, 1, 1, 1
oldname = ''
#format rafmod to spawnentityfromtable
def format_entities(lines, entity_name):
	brushent = False
	minmaxfound = False
	minmaxindex = 0
	global j, b, g, t
	org, ang = 'Vector(0, 0, 0)', [0, 0, 0]

	if len(entity_name) < 1 and 'spawntemplate' in lines[0].lower(): return

	for line in lines:

		# find key/value pairs
		if lumpfile:
			for h in lines:
				if 'hammerid' in h:
					h = h.split('"')[3].strip()
					break
		try:
			#line split with quotes
			if line.count('"') == 4:
				minmaxindex = 1
				parts = line.split('"')
				key, value = parts[1::2]
				if 'classname' in key and lumpfile:
					entity_name = value
			#line split without quotes
			else:
				minmaxindex = 0
				parts = line.split(maxsplit=1)
				if len(parts) > 0 and not any(lines[2].startswith(prefix) for prefix in entprefixes):
					key, value = parts[0], parts[1]

			if key == '}': continue
			properties[key] = value
			lowerkey = key.lower()

			if '\\' in value: value.replace('\\','/')

			# there's bound to be more kv's that start with 'on' that will fuck this up, just blacklist them as they appear
			if (lowerkey.startswith('on') or lowerkey.startswith('outvalue')) and not any(lowerkey.startswith(blacklist) for blacklist in blacklisted):
				if any(k in value.lower() for k in convertedkeys):
					# print(value)
					value = convert_raf_keyvalues(value)
					# print(value)

				formatted_properties.append(f'"{key}#{j}": "{value.strip('"')}"')

				j += 1

			else:
				namestripped = entity_name.strip()
				brushname = f'{entity_name}_brush'
				if 'mins' in key:
					brushent = True
					if lumpfile:
						brushsizemin = f'{entity_name}{h}.KeyValueFromString("{key}", "{value.strip('"')}")'
					else:
						brushsizemin = f'{brushname}{b}.KeyValueFromString("{key}", "{value.strip('"')}")'
				elif 'maxs' in key:
					brushent = True
					if lumpfile:
						brushsizemax = f'{entity_name}{h}.KeyValueFromString("{key}", "{value.strip('"')}")'
					else:
						brushsizemax = f'{brushname}{b}.KeyValueFromString("{key}", "{value.strip('"')}")'

				#Brush ents with no mins/maxs can fuck things up.
				#Some entities probably aren't covered in this.
				#If templates suddenly stop being written, this is why.
				elif (
					entity_name.startswith('trigger_') or entity_name.startswith('func_') or
					'volume' in entity_name or 'brush' in entity_name or 'zone' in entity_name or
					namestripped == 'env_bubbles' or namestripped == 'env_embers' or
					namestripped == 'dispenser_touch_trigger' or namestripped == 'momentary_rot_button'
				):
					if not brushent:
						brushent = True
						for line in lines:
							splitline = line.split('"')[minmaxindex].strip()
							if splitline == 'mins' or splitline == 'maxs':
								minmaxfound = True
								break

							# if not minmaxfound and (line.split('"')[1].strip() == 'mins' or line.split('"')[1].strip() == 'maxs'):
							# 	minmaxfound = True

						if not minmaxfound:
							lines.append('"mins" "-1 -1 -1"')
							lines.append('"maxs" "1 1 1"')

				if key.startswith('origin'):
					splitval = value.split(' ')
					value = f'Vector({splitval[0]}, {splitval[1]}, {splitval[2]})'
					org = value

				if key.startswith('angles'):
					splitval = value.split(' ')
					value = f'QAngle({splitval[0]}, {splitval[1]}, {splitval[2]})'
					ang = [splitval[0], splitval[1], splitval[2]]

				if '"' in key:
					key = key.replace('"','').strip()

				if value.isdigit() or 'Vector' in value or 'QAngle' in value:
					formatted_properties.append(f'{key} = {value}')
				else:
					try:
						formatted_properties.append(f'{key} = {float(value)}')
					except ValueError:
						if '"' in value:
							formatted_properties.append(f'{key} = {value}')
						else:
							formatted_properties.append(f'{key} = "{value}"')
		except: pass
	j = 1
	# if len(entity_name) < 1: continue

	global funcname, oldname
	if not brushent:

		#lumpfile appends the hammerid to the variable name
		if lumpfile:

			output_text = f'::{entity_name}{h} <- SpawnEntityFromTable("{entity_name}", {{\n    {",\n    ".join(formatted_properties)}\n}})\n'

		elif not lumpfile and funcname != oldname and funcname != '':

			oldname = funcname
			if t == 1:
				spawnfunc = f'\n::{funcname} <- function(org, ang)\n{{\n'
			else:
				spawnfunc = f'}}\n::{funcname} <- function(org, ang)\n{{\n'

			func_list.append(f'{funcname}({org}, [{ang[0]}, {ang[1]}, {ang[2]}])')
			org, ang = 'Vector(0, 0, 0)', [0, 0, 0]
			# don't think setang/setorigin is necessary
			output_text = f'{spawnfunc}\tlocal {entity_name}{g} = SpawnEntityFromTable("{entity_name}", {{\n\t    {",\n\t    ".join(formatted_properties)}\n\t}})\n\t{entity_name}{g}.SetOrigin(org)\n\t{entity_name}{g}.SetAngles(ang[0], ang[1], ang[2])\n'
			# output_text = f'{spawnfunc}\tlocal {entity_name}{g} = SpawnEntityFromTable("{entity_name}", {{\n\t    {",\n\t    ".join(formatted_properties)}\n\t}})\n'

		else:
			output_text = f'\tlocal {entity_name}{g} = SpawnEntityFromTable("{entity_name}", {{\n\t    {",\n\t    ".join(formatted_properties)}\n\t}})\n\t{entity_name}{g}.SetOrigin(org)\n\t{entity_name}{g}.SetAngles(ang[0], ang[1], ang[2])\n'
			# output_text = f'\tlocal {entity_name}{g} = SpawnEntityFromTable("{entity_name}", {{\n\t    {",\n\t    ".join(formatted_properties)}\n\t}})\n'

		g += 1
		t += 1
	else:

		#lumpfile appends the hammerid to the variable name
		if lumpfile:

			output_text = f'::{entity_name}{h} <- SpawnEntityFromTable("{entity_name}", {{\n    {",\n    ".join(formatted_properties)}\n}})\n{entity_name}{h}.KeyValueFromInt("solid", 2)\n{brushsizemin}\n{brushsizemax}\n'

		elif funcname != oldname and funcname != '':

			oldname = funcname
			spawnfunc = f'}}\n::{funcname} <- function(org, ang)\n{{\n'
			# output_text = f'{spawnfunc}\tlocal {brushname}{b} = SpawnEntityFromTable("{entity_name}", {{\n\t    {",\n\t    ".join(formatted_properties)}\n\t}})\n\t{brushname}{b}.KeyValueFromInt("solid", 2)\n{brushsizemin}\n{brushsizemax}\n\n\tif(org != null)\n\t\t{brushname}{b}.SetOrigin(org)\n\tif(ang != null)\n\t\t{brushname}{b}.SetAngles(ang[0], ang[1], ang[2])\n'
			output_text = f'{spawnfunc}\tlocal {brushname}{b} = SpawnEntityFromTable("{entity_name}", {{\n\t    {",\n\t    ".join(formatted_properties)}\n\t}})\n\t{brushname}{b}.KeyValueFromInt("solid", 2)\n\t{brushsizemin}\n\t{brushsizemax}\n'


		else:
			# output_text = f'\tlocal {brushname}{b} = SpawnEntityFromTable("{entity_name}", {{\n\t    {",\n\t    ".join(formatted_properties)}\n\t}})\n\t{brushname}{b}.KeyValueFromInt("solid", 2)\n{brushsizemin}\n{brushsizemax}\n\n\tif(org != null)\n\t\t{brushname}{b}.SetOrigin(org)\n\tif(ang != null)\n\t\t{brushname}{b}.SetAngles(ang[0], ang[1], ang[2])\n'
			output_text = f'\tlocal {brushname}{b} = SpawnEntityFromTable("{entity_name}", {{\n\t    {",\n\t    ".join(formatted_properties)}\n\t}})\n\t{brushname}{b}.KeyValueFromInt("solid", 2)\n\t{brushsizemin}\n\t{brushsizemax}\n'
		brushent = False
		b += 1
		t += 1

	if lumpfile and ('function()' in output_text or "hammerid = 0" in output_text):
		output_text = ''

	entity_list.append(f'{output_text}\n')
	# print(funcname)
	# print(output_text)
	# print(lines)
	# input('')
	name_list.append(entity_name)
	formatted_properties.clear()

#convert OnSpawnOutput/OnParentKilledOutput to relays
def convert_entities():
	o, p = 1, 1
	global extralines, lumpfile, vmffile

	try:
		# backwards search for SpawnTemplates
		if not lumpfile and not vmffile:
			for r in reversed(text_list):
				lines = r.split('\n')
				lines = [line.strip() for line in lines if line.strip()]

		# Split the input into lines
		for i in text_list:
			lines = i.split('\n')
			# Remove empty lines
			lines = [line.strip() for line in lines if line.strip()]


			# print([line.split('//') for line in lines if line.split('//')])
			if len(lines) < 1:
				continue

			#goofy ass
			else:
				lower = [line.lower() for line in lines if line.lower()]

				if lines[0] == '}':
					lines = lines[1:]

				if lower[0].startswith('pointtemplates'):
					lines = lines[2:]

				if lines[0].startswith('{'):
					lines = lines[1:]

				if not any(lines[0].startswith(prefix) for prefix in entprefixes) and not lower[0] in outputs:

					global funcname
					funcname = lines[0]

				if any(lines[2].startswith(prefix) for prefix in entprefixes):
					lines = lines[2:]

				remove = ['keepalive', 'nofixup']
				lines = [l for l in lines if l.split()[0].lower() not in remove]

				l = [l.lower() for l in lines]
				if 'spawntemplate' in l and len(l) < 6:
					for i, func in enumerate(func_list):
						if func.startswith(lines[2].split('"')[1]):
							if len(lines) > 3:
								# input(f'origin for {func}: {lines[3].split('"')[1]}')
								org = lines[3].split('"')[1].split()
								# print(x, y, z)
								# input('')
								newfunc = f'{func.split('(')[0]}(Vector({org[0]}, {org[1]}, {org[2]}), [0, 0, 0])'
								func_list[i] = newfunc
								# input(func_list[i])

							if len(lines) > 4:
								# input(f'angles for {func}: {lines[4].split('"')[1]}')
								pitch, yaw, roll = lines[4].split('"')[1].split()[0], lines[4].split('"')[1].split()[1], lines[4].split('"')[1].split()[2]
								newfunc = f'{func.split('(')[0]}(Vector({org[0]}, {org[1]}, {org[2]}), [{pitch}, {yaw}, {roll}])'
								func_list[i] = newfunc
								# input(func_list[i])

				# print(lines)

				# Get the entity name
				# do not remove the space
				if lines[0].endswith(' {'):
					lines[0] = lines[0].removesuffix('{')

				entity_name = ''

				# convert OnSpawnOutput to logic_relay

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
					if lines[2].startswith('Target'):

						lines[3] = lines[3].removeprefix('Action ')
						lines[2] = lines[2].split('Target')

					if len(lines) == 4:
						relayline[2] = f'"OnTrigger" "{lines[2][1].strip()},{lines[3]},,0.0,-1"'

					if len(lines) == 5:
						if lines[4].startswith('Delay'):
							lines[4] = lines[4].removeprefix('Delay').strip()
							relayline[2] = f'"OnTrigger" "{lines[2][1].strip()},{lines[3]},,{lines[4]},-1"'

						elif lines[4].startswith('Param'):
							lines[4] = lines[4].removeprefix('Param').strip()
							relayline[2] = f'"OnTrigger" "{lines[2][1].strip()},{lines[3]},{lines[4]},0.0,-1"'

					if len(lines) >= 6:
						lines[4] = lines[4].removeprefix('Param').strip()
						lines[5] = lines[5].removeprefix('Delay').strip()
						if len(lines[2]) > 1:
							lines[2] = lines[2][1:]
							relayline[2] = f'"OnTrigger" "{lines[2][0].strip()},{lines[3]},{lines[4]},{lines[5]},-1"'
						else:
							relayline[2] = f'"OnTrigger" "{lines[2].strip()},{lines[3]},{lines[4]},{lines[5]},-1"'

					lines = relayline

				for i, v in enumerate(lower):

					if 'keepalive' in v:
						# print(lines)
						templine = lines[i + 1:]
						while not any(templine[0].lower().startswith(prefix) for prefix in entprefixes):
							templine = lines[i:]
							i -= 1
						lines = templine

					if 'nofixup' in v:
						templine = lines[i + 1:]
						while not any(templine[0].lower().startswith(prefix) for prefix in entprefixes):
							templine = lines[i:]
							i -= 1
						lines = templine


				if any(lines[0].startswith(prefix) for prefix in entprefixes):
					entity_name = lines[0]

				if len(extralines) > 0:
					entity_name = extralines[0]
					format_entities(extralines, entity_name)
					extralines.clear()
					entity_name = lines[0]
					format_entities(lines, entity_name)
				else:
					format_entities(lines, entity_name)

	except Exception as IndexError:
		print(COLOR['CYAN'],f'Writing entities to file...',COLOR['ENDC'])
		# done elsewhere now
		# entity_list.append(f'\n}}\n')
		name_list.append('END OF FILE')
		time.sleep(1)
	except:
		print(COLOR['RED'],f'An error has occured. Press enter to continue',COLOR['ENDC'])
		input('')

def write_ents_to_file():
	global giveitem, switchslot, changeattribs, stripweps
	i = 0
	newfilename = filename
	if '.pop' in filename:
		newfilename = filename.split('.pop', 1)[0]

	script = open(f'r2v_{newfilename}.nut', 'w')
	invalidprop = False
	helperfuncs = []
	if giveitem:
		# func = '::GiveWeapon <- function(player, classname, itemid, model)\n{\n\tif (model != null && (classname == \"tf_wearable\" || classname == \"tf_wearable_demoshield\" || classname == \"tf_wearable_razorback\"))\n\t{\n\t\tlocal wearable = Entities.CreateByClassname(classname);\n\t\tNetProps.SetPropInt(wearable, \"m_nModelIndex\", PrecacheModel(model));\n\t\tNetProps.SetPropBool(wearable, \"m_bValidatedAttachedEntity\", true);\n\t\tNetProps.SetPropBool(wearable, \"m_AttributeManager.m_Item.m_bInitialized\", true);\n\t\tNetProps.SetPropEntity(wearable, \"m_hOwnerEntity\", player);\n\t\twearable.SetOwner(player);\n\t\twearable.DispatchSpawn();\n\t\tEntFireByHandle(wearable, \"SetParent\", \"!activator\", 0.0, player, player);\n\t\tNetProps.SetPropInt(wearable, \"m_fEffects\", 129);\n\t\tfor (local i = 0; i < 7; i++)\n\t\t{\n\t\t\tlocal heldWeapon = GetPropEntityArray(player, \"m_hMyWeapons\", i);\n\t\t\tif (heldWeapon == null) \n\t\t\t\tcontinue;\n\t\t\tif (heldWeapon.GetSlot() != wearable.GetSlot()) \n\t\t\t\tcontinue;\n\t\t\theldWeapon.Destroy();\n\t\t\tSetPropEntityArray(player, \"m_hMyWeapons\", wearable, i);\n\t\t\tbreak;\n\t\t}\n\t\treturn wearable;\n\t} else {\n\t\tlocal weapon = Entities.CreateByClassname(classname);\n\t\tSetPropInt(weapon, \"m_AttributeManager.m_Item.m_iItemDefinitionIndex\", itemid);\n\t\tSetPropBool(weapon, \"m_AttributeManager.m_Item.m_bInitialized\", true);\n\t\tSetPropBool(weapon, \"m_bValidatedAttachedEntity\", true);\n\t\tEntities.DispatchSpawn(weapon);\n\t\tfor (local i = 0; i < 7; i++)\n\t\t{\n\t\t\tlocal heldWeapon = GetPropEntityArray(player, \"m_hMyWeapons\", i);\n\t\t\tif (heldWeapon == null) \n\t\t\t\tcontinue;\n\t\t\tif (heldWeapon.GetSlot() != weapon.GetSlot()) \n\t\t\t\tcontinue;\n\t\t\theldWeapon.Destroy();\n\t\t\tSetPropEntityArray(player, \"m_hMyWeapons\", weapon, i);\n\t\t\tbreak;\n\t\t}\n\t\tplayer.Weapon_Equip(weapon);\n\t}\n\treturn weapon;\n}'
		helperfuncs.append('::GiveWeapon <- function(player, classname, itemid, model)\n{\n\tif (model != null && (classname == \"tf_wearable\" || classname == \"tf_wearable_demoshield\" || classname == \"tf_wearable_razorback\"))\n\t{\n\t\tlocal wearable = Entities.CreateByClassname(classname);\n\t\tNetProps.SetPropInt(wearable, \"m_nModelIndex\", PrecacheModel(model));\n\t\tNetProps.SetPropBool(wearable, \"m_bValidatedAttachedEntity\", true);\n\t\tNetProps.SetPropBool(wearable, \"m_AttributeManager.m_Item.m_bInitialized\", true);\n\t\tNetProps.SetPropEntity(wearable, \"m_hOwnerEntity\", player);\n\t\twearable.SetOwner(player);\n\t\twearable.DispatchSpawn();\n\t\tEntFireByHandle(wearable, \"SetParent\", \"!activator\", 0.0, player, player);\n\t\tNetProps.SetPropInt(wearable, \"m_fEffects\", 129);\n\t\tfor (local i = 0; i < 7; i++)\n\t\t{\n\t\t\tlocal heldWeapon = GetPropEntityArray(player, \"m_hMyWeapons\", i);\n\t\t\tif (heldWeapon == null) \n\t\t\t\tcontinue;\n\t\t\tif (heldWeapon.GetSlot() != wearable.GetSlot()) \n\t\t\t\tcontinue;\n\t\t\theldWeapon.Destroy();\n\t\t\tSetPropEntityArray(player, \"m_hMyWeapons\", wearable, i);\n\t\t\tbreak;\n\t\t}\n\t\treturn wearable;\n\t} else {\n\t\tlocal weapon = Entities.CreateByClassname(classname);\n\t\tSetPropInt(weapon, \"m_AttributeManager.m_Item.m_iItemDefinitionIndex\", itemid);\n\t\tSetPropBool(weapon, \"m_AttributeManager.m_Item.m_bInitialized\", true);\n\t\tSetPropBool(weapon, \"m_bValidatedAttachedEntity\", true);\n\t\tEntities.DispatchSpawn(weapon);\n\t\tfor (local i = 0; i < 7; i++)\n\t\t{\n\t\t\tlocal heldWeapon = GetPropEntityArray(player, \"m_hMyWeapons\", i);\n\t\t\tif (heldWeapon == null) \n\t\t\t\tcontinue;\n\t\t\tif (heldWeapon.GetSlot() != weapon.GetSlot()) \n\t\t\t\tcontinue;\n\t\t\theldWeapon.Destroy();\n\t\t\tSetPropEntityArray(player, \"m_hMyWeapons\", weapon, i);\n\t\t\tbreak;\n\t\t}\n\t\tplayer.Weapon_Equip(weapon);\n\t}\n\treturn weapon;\n}\n')
	if switchslot:
		helperfuncs.append('::WeaponSwitchSlot <- function(slot, player) {\n\tfor (local i = 0; i < 7; i++) {\n\t\tlocal weapon = GetPropEntityArray(player, "m_hMyWeapons", i);\n\t\tif (weapon.GetSlot() == slot) player.Weapon_Switch(weapon);\n\t\tbreak;\n\t}\n}')
	if changeattribs:
		helperfuncs.append('\n::r2v_events <- {}\n::r2v_events.OnGameEvent_teamplay_round_start <- function(params)\n{\n\tif (Entities.FindByClassname(null, "point_populator_interface") != null) return\n\tSpawnEntityFromTable("point_populator_interface", { targetname = "pop_interface" })\n}\n__CollectGameEventCallbacks(::r2v_events)\n')
	if stripweps:
		helperfuncs.append('::StripWeapon <- function(player, slot)\n{\n\tfor (local i = 0; i < 7; i++)\n\t{\n\t\tlocal weapon = GetPropEntityArray(player, "m_hMyWeapons", i);\n\t\tif (weapon == null || weapon.GetSlot() != slot) continue;\n\t\tweapon.Destroy();\n\t\tbreak;\n\t}\n}')

	for func in helperfuncs:
		script.write(func)
	# this function does not have tf_wearable compatibility
	# func = '::GiveWeapon <- function(player, classname, itemid)\n{\n\t\t// local clientcommand = Entities.CreateByClassname(\"point_clientcommand\");\n\n\tlocal weapon = Entities.CreateByClassname(classname);\n\n\tSetPropInt(weapon, \"m_AttributeManager.m_Item.m_iItemDefinitionIndex\", itemid);\n\tSetPropBool(weapon, \"m_AttributeManager.m_Item.m_bInitialized\", true);\n\tSetPropBool(weapon, \"m_bValidatedAttachedEntity\", true);\n\tEntities.DispatchSpawn(weapon);\n\n\tfor (local i = 0; i < 7; i++)\n\t{\n\t\tlocal heldWeapon = GetPropEntityArray(player, \"m_hMyWeapons\", i);\n\n\t\tif (heldWeapon == null)\n\t\t\tcontinue;\n\t\tif (heldWeapon.GetSlot() != weapon.GetSlot())\n\t\t\tcontinue;\n\n\t\theldWeapon.Destroy();\n\t\tSetPropEntityArray(player, \"m_hMyWeapons\", weapon, i);\n\t\tbreak;\n\t}\n\tplayer.Weapon_Equip(weapon);\n\n\treturn weapon;\n}'
	for e in entity_list:
		print(COLOR['GREEN'],'Writing',COLOR['ENDC'],COLOR['CYAN'],name_list[i],COLOR['ENDC'],COLOR['GREEN'],'to file...',COLOR['ENDC'])
		script.write(e)
		i += 1
		if 'INVALID' in e: invalidprop = True

	if not lumpfile and not vmffile:
		script.write('}\n')

	spawnall = input('Write all SpawnTemplate functions? Y/N: ')
	if 'Y' in spawnall.upper():
		for spawnfunc in func_list:
			script.write(f'\n{spawnfunc}')
	else:
		for spawnfunc in func_list:
			spawn = input(f'Write {spawnfunc} to file? Y/N: ')
			if not 'Y' in spawn.upper(): continue
			script.write(f'\n{spawnfunc}')

	script.close()
	print(COLOR['GREEN'],'File written!',COLOR['ENDC'],COLOR['YELLOW'],len(name_list) - 1,COLOR['ENDC'],COLOR['GREEN'],'Entities Converted',COLOR['ENDC'])

	if invalidprop:
		print(COLOR['RED'],f'invalid property type entered, search for SetPropINVALID in the provided .nut file',COLOR['ENDC'])

if __name__ == '__main__':

		convert_entities()
		write_ents_to_file()
		input('Press Enter To Close...')