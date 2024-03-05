import sys
from r2v_dicts import itemdefs, offset, propdict
helperfuncs = []

global giveitem, switchslot, changeattribs, stripweps

def write_helper_funcs():
	if giveitem:
		# func = '::GiveWeapon <- function(player, classname, itemid, model)\n{\n\tif (model != null && (classname == \"tf_wearable\" || classname == \"tf_wearable_demoshield\" || classname == \"tf_wearable_razorback\"))\n\t{\n\t\tlocal wearable = Entities.CreateByClassname(classname);\n\t\tNetProps.SetPropInt(wearable, \"m_nModelIndex\", PrecacheModel(model));\n\t\tNetProps.SetPropBool(wearable, \"m_bValidatedAttachedEntity\", true);\n\t\tNetProps.SetPropBool(wearable, \"m_AttributeManager.m_Item.m_bInitialized\", true);\n\t\tNetProps.SetPropEntity(wearable, \"m_hOwnerEntity\", player);\n\t\twearable.SetOwner(player);\n\t\twearable.DispatchSpawn();\n\t\tEntFireByHandle(wearable, \"SetParent\", \"!activator\", 0.0, player, player);\n\t\tNetProps.SetPropInt(wearable, \"m_fEffects\", 129);\n\t\tfor (local i = 0; i < 7; i++)\n\t\t{\n\t\t\tlocal heldWeapon = GetPropEntityArray(player, \"m_hMyWeapons\", i);\n\t\t\tif (heldWeapon == null) \n\t\t\t\tcontinue;\n\t\t\tif (heldWeapon.GetSlot() != wearable.GetSlot()) \n\t\t\t\tcontinue;\n\t\t\theldWeapon.Destroy();\n\t\t\tSetPropEntityArray(player, \"m_hMyWeapons\", wearable, i);\n\t\t\tbreak;\n\t\t}\n\t\treturn wearable;\n\t} else {\n\t\tlocal weapon = Entities.CreateByClassname(classname);\n\t\tSetPropInt(weapon, \"m_AttributeManager.m_Item.m_iItemDefinitionIndex\", itemid);\n\t\tSetPropBool(weapon, \"m_AttributeManager.m_Item.m_bInitialized\", true);\n\t\tSetPropBool(weapon, \"m_bValidatedAttachedEntity\", true);\n\t\tEntities.DispatchSpawn(weapon);\n\t\tfor (local i = 0; i < 7; i++)\n\t\t{\n\t\t\tlocal heldWeapon = GetPropEntityArray(player, \"m_hMyWeapons\", i);\n\t\t\tif (heldWeapon == null) \n\t\t\t\tcontinue;\n\t\t\tif (heldWeapon.GetSlot() != weapon.GetSlot()) \n\t\t\t\tcontinue;\n\t\t\theldWeapon.Destroy();\n\t\t\tSetPropEntityArray(player, \"m_hMyWeapons\", weapon, i);\n\t\t\tbreak;\n\t\t}\n\t\tplayer.Weapon_Equip(weapon);\n\t}\n\treturn weapon;\n}'
		helperfuncs.append('::GiveWeapon <- function(player, classname, itemid, model)\n{\n\tif (model != null && (classname == \"tf_wearable\" || classname == \"tf_wearable_demoshield\" || classname == \"tf_wearable_razorback\"))\n\t{\n\t\tlocal wearable = Entities.CreateByClassname(classname);\n\t\tNetProps.SetPropInt(wearable, \"m_nModelIndex\", PrecacheModel(model));\n\t\tNetProps.SetPropBool(wearable, \"m_bValidatedAttachedEntity\", true);\n\t\tNetProps.SetPropBool(wearable, \"m_AttributeManager.m_Item.m_bInitialized\", true);\n\t\tNetProps.SetPropEntity(wearable, \"m_hOwnerEntity\", player);\n\t\twearable.SetOwner(player);\n\t\twearable.DispatchSpawn();\n\t\tEntFireByHandle(wearable, \"SetParent\", \"!activator\", 0.0, player, player);\n\t\tNetProps.SetPropInt(wearable, \"m_fEffects\", 129);\n\t\tfor (local i = 0; i < 7; i++)\n\t\t{\n\t\t\tlocal heldWeapon = GetPropEntityArray(player, \"m_hMyWeapons\", i);\n\t\t\tif (heldWeapon == null) \n\t\t\t\tcontinue;\n\t\t\tif (heldWeapon.GetSlot() != wearable.GetSlot()) \n\t\t\t\tcontinue;\n\t\t\theldWeapon.Destroy();\n\t\t\tSetPropEntityArray(player, \"m_hMyWeapons\", wearable, i);\n\t\t\tbreak;\n\t\t}\n\t\treturn wearable;\n\t} else {\n\t\tlocal weapon = Entities.CreateByClassname(classname);\n\t\tSetPropInt(weapon, \"m_AttributeManager.m_Item.m_iItemDefinitionIndex\", itemid);\n\t\tSetPropBool(weapon, \"m_AttributeManager.m_Item.m_bInitialized\", true);\n\t\tSetPropBool(weapon, \"m_bValidatedAttachedEntity\", true);\n\t\tEntities.DispatchSpawn(weapon);\n\t\tfor (local i = 0; i < 7; i++)\n\t\t{\n\t\t\tlocal heldWeapon = GetPropEntityArray(player, \"m_hMyWeapons\", i);\n\t\t\tif (heldWeapon == null) \n\t\t\t\tcontinue;\n\t\t\tif (heldWeapon.GetSlot() != weapon.GetSlot()) \n\t\t\t\tcontinue;\n\t\t\theldWeapon.Destroy();\n\t\t\tSetPropEntityArray(player, \"m_hMyWeapons\", weapon, i);\n\t\t\tbreak;\n\t\t}\n\t\tplayer.Weapon_Equip(weapon);\n\t}\n\treturn weapon;\n}\n')
	if switchslot:
		helperfuncs.append('::WeaponSwitchSlot <- function(slot, player) {\n\tfor (local i = 0; i < 7; i++) {\n\t\tlocal weapon = GetPropEntityArray(player, "m_hMyWeapons", i);\n\t\tif (weapon.GetSlot() == slot) player.Weapon_Switch(weapon);\n\t\tbreak;\n\t}\n}\n')
	if changeattribs:
		helperfuncs.append('\n::r2v_events <- {}\n::r2v_events.OnGameEvent_teamplay_round_start <- function(params)\n{\n\tif (Entities.FindByClassname(null, "point_populator_interface") != null) return\n\tSpawnEntityFromTable("point_populator_interface", { targetname = "pop_interface" })\n}\n__CollectGameEventCallbacks(::r2v_events)\n')
	if stripweps:
		helperfuncs.append('::StripWeapon <- function(player, slot)\n{\n\tfor (local i = 0; i < 7; i++)\n\t{\n\t\tlocal weapon = GetPropEntityArray(player, "m_hMyWeapons", i);\n\t\tif (weapon == null || weapon.GetSlot() != slot) continue;\n\t\tweapon.Destroy();\n\t\tbreak;\n\t}\n}\n')

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

COLOR = {
	'CYAN': '\033[96m',
	'HEADER': '\033[95m',
	'GREEN': '\033[94m',
	'YELLOW': '\033[93m',
	'GREEN': '\033[92m',
	'RED': '\033[91m',
	"ENDC": '\033[0m',
}

textcolors = {
	'blue': '99ccff',
	'red': 'ff3f3f',
	'green': '99ff99',
	'darkgreen': '40ff40',
	'yellow': 'ffb200',
	'grey': 'cccccc',
	'newline': '\\n'
}

# a recursive function that returns keyvalue pairs in a list
def ParseTree(popfile, index):
	indexnumber = index
	keyvaluepairs = []
	key = ''
	value = ''
	iskey = True
	inquote = False
	insubtree = False
	depth = 0 # used to determine how many layers of brackets we're in after calling the function

	for i in popfile[index:]:
		indexnumber = indexnumber + 1

		# skip these characters
		if i == '{':
			depth += 1
			if depth == 1:
				insubtree = True
				# call this function again when we get to a subtree and pass the list of keyvalues through, index is at the curly bracket
				value = ParseTree(popfile, indexnumber)
				# value = convert_raf_keyvalues(value)
				keyvaluepairs.append({key : value})
				key = ''
				value = ''
				# need this to be True
				iskey = True
			continue

		if i == '}':
			depth -= 1
			if depth == 0:
				insubtree = False
				continue
			# index started at the last open curly bracket, exit the function at the first closing curly bracket
			if depth == -1:
				return keyvaluepairs

		# keep quotes
		if i == '"':
			inquote = not inquote

		if insubtree == False:
			if inquote == False:
				if i.isspace() == False:
					#if the index character is not whitespace, write character to key string, or value if its not a key
					if iskey == True:
						key = key + i
					else:
						value = value + i

				# if key is being written and we reach a white space, end the key and start value
				if key != '' and i.isspace() == True:
					iskey = False
				# when we each the end of the value, update dictionary and reset key and value buffers
				if value != '' and i.isspace() == True:
					iskey = True
					if value != '{':
						# value = convert_raf_keyvalues(value)
						keyvaluepairs.append({key : value})
						key = ''
						value = ''

			#if we're inside a quote, include spaces
			else:
				if iskey == True:
					key = key + i
				else:
					value = value + i

	#if you've made it here, the end of the popfile has been reached
	return keyvaluepairs

#extracts pointtemplates from ParseTree's return
def getpointtemplates(pop, keylist):
	for i in pop:
		key = list(i)[0]
		value = i.get(key)
		# if type(value) == 'string' and value.count(',') == 4: value = convert_raf_keyvalues(value)
		if key.lower() == "pointtemplates":
			keylist.append(i)
		if isinstance(value, list):
			getpointtemplates(value, keylist)
	return keylist

def convert_proptype(prop, propval, arrayval):
	manualset = False
	if (len(propval) < 1) or (not prop in propdict) or (prop in propdict and propdict[prop].startswith('a')):
		print(COLOR['CYAN'], 'Enter Property Type for', COLOR['ENDC'], COLOR['GREEN'], f'{prop}',COLOR['ENDC'])
		print(COLOR['CYAN'],'Acceptable values:',COLOR['ENDC'],COLOR['GREEN'], 'str, int, fl, ent, bool, vec', COLOR['ENDC'])
		print(COLOR['CYAN'],'Alternatively:',COLOR['ENDC'],COLOR['GREEN'], 's, i, f, e, b, v', COLOR['ENDC'])
		proptype = input('Property Type: ')
		manualset = True
	else: proptype = propdict[prop]

	if proptype.startswith('i'):
		if manualset: proptype = 'Int'
		else:
			try:
				test = int(propval)
				proptype = 'Int'
			except Exception as e:
				proptype = 'Entity'

	elif proptype.startswith('s'):proptype = 'String'
	elif proptype.startswith('f'): proptype = 'Float'
	elif proptype.startswith('e'): proptype = 'Entity'
	elif proptype.startswith('b'): proptype = 'Bool'
	elif proptype.startswith('v'): proptype = 'Vector'
	else:
		# log.append('ERROR: Invalid Property Type! Search for SetPropINVALID in generated .nut')
		proptype = 'INVALID'

	print(COLOR['CYAN'],f'Proptype for {prop} set to',COLOR['ENDC'],COLOR['GREEN'],proptype,COLOR['ENDC'])

	if not arrayval == -1:
		proptype = f'{proptype}Array'
		if proptype == 'String':
			return f'NetProps.SetProp{proptype}(self, `{prop}`, `{propval}`, {arrayval})'
		else:
			return f'NetProps.SetProp{proptype}(self, `{prop}`, {propval}, {arrayval})'
		
customweapons = {}
def convert_raf_keyvalues(value):
	# print(value.split(','))
	global giveitem, switchslot, changeattribs, stripweps, customweapons
	if 'addoutput' in value.lower():
		splitval = value.split(':')
	else:
		splitval = value.split(',')
	entinput = splitval[1].lower().strip()

	# convert global $PlaySoundToSelf inputs to tf_gamerules PlayVORed
	if 'player' in splitval[0].lower() and '$playsoundtoself' in entinput:
		# log.append(f'SUCCESS: converted {splitval[1]} input to PlayVORed')
		splitval[0] = 'tf_gamerules'
		splitval[1] = 'PlayVORed'
		splitval[2] = splitval[2].replace('\\', '/')
		if '|' in splitval[2]:
			splitval[2] = splitval[2].split('|')[1]

	# use emitsoundex vscript function instead
	elif not 'player' in splitval[0].lower() and '$playsoundtoself' in entinput:
		splitval[1] = 'RunScriptCode'
		splitval[2] = f'EmitSoundEx({{sound_name = `{splitval[2]}`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 }})'

	# convert $SetProp and $SetClientProp to vscript alternative
	elif '$setclientprop' in entinput or '$setprop' in entinput:
		# log.append(f'SUCCESS: converted {splitval[1]} to vscript alternative')
		splitprop = splitval[1].split('$')
		if len(splitprop) == 4:
			arrayval = splitprop[3]
		else:
			arrayval = -1
		splitval[1] = 'RunScriptCode'
		splitval[2] = convert_proptype(splitprop[2], splitval[2], arrayval)
		# print(f'NetProps.SetProp{convert_proptype(splitprop[3])}(self, {splitprop[3]}, {splitval[2]})')

	#convert $DisplayText to ClientPrint
	elif '$displaytextchat' in entinput or '$displaytextcenter' in entinput:
		# log.append(f'SUCCESS: converted {splitval[1]} to ClientPrint')
		if splitval[2].startswith('{') and '$displaytextchat' in entinput:
			splitcolor = splitval[2].split('{')
			removebracket = splitcolor[1].split('}')
			removebracket[0] = textcolors[removebracket[0]]
			color = r'\x07' + ''.join(removebracket)
			splitval[1] = 'RunScriptCode'
			if splitval[0] == 'player':
				splitval[0] = 'tf_gamerules'
				splitval[2] = f'ClientPrint(null, 3, `{color}`)'
			else:
				splitval[2] = f'ClientPrint(self, 3, `{color}`)'

		else:
			splitval[1] = 'RunScriptCode'
			if splitval[0] == 'player':
				splitval[0] = 'tf_gamerules'
				splitval[2] = f'ClientPrint(null, 4, `{splitval[2]}`)'
			else:
				splitval[2] = f'ClientPrint(self, 4, `{splitval[2]}`)'
		# input('')

	#convert $SetKey to AddOutput (probably won't work everywhere)
	#TODO: use KeyValueFromInt/String/Etc instead of AddOutput
	elif '$setkey' in entinput:
		splitkey = splitval[1].split('$')
		# log.append(f'ALERT: Converted {splitval[1]} to AddOutput {splitkey[2]}.  This may not work in some cases!')
		splitval[1] = 'RunScriptCode'
		splitval[2] = f'{splitkey[2]} {splitval[2]}'

	elif '$addcond' in entinput or '$removecond' in entinput:
		# log.append(f'SUCCESS: converted {splitval[1]} to vscript alternative')
		if '$addcond' in entinput:
			splitval[1] = 'RunScriptCode'
			splitval[2] = f'self.AddCond({splitval[2]})'
		else:
			splitval[1] = 'RunScriptCode'
			splitval[2] = f'self.RemoveCond({splitval[2]})'

	elif '$addplayerattribute' in entinput or '$removeplayerattribute' in entinput:
		# log.append(f'SUCCESS: converted {splitval[1]} to vscript alternative')
		if '$addplayerattribute' in entinput:
			splitattrib = splitval[2].split('|')
			# print(splitattrib)
			splitval[1] = 'RunScriptCode'
			splitval[2] = f'self.AddCustomAttribute(`{splitattrib[0]}`, {splitattrib[1]}, -1)'
		else:
			splitval[1] = 'RunScriptCode'
			splitval[2] = f'self.RemoveCustomAttribute(`{splitval[2]}`)'

	elif '$teleporttoentity' in entinput:
		# log.append(f'SUCCESS: converted {splitval[1]} to vscript alternative')
		splitval[1] = 'RunScriptCode'
		splitval[2] = f'self.Teleport(true, {splitval[2]}.GetOrigin(), true,  {splitval[2]}.GetAbsAngles, true, {splitval[2]}.GetAbsVelocity())'
	# 	print(splitval)

	elif '$setmodeloverride' in entinput:
		# log.append(f'SUCCESS: converted {splitval[1]} to SetCustomModelWithClassAnimations')
		splitval[1] = 'SetCustomModelWithClassAnimations'

	# elif '$removeoutput' in entinput:
	# 	# log.append(f'SUCCESS: converted {splitval[1]} to SetCustomModelWithClassAnimations', COLOR['ENDC'])
	# 	splitval[1] = 'RunScriptCode'
	# 	splitval[2] = 'EntityOutputs.RemoveOutput(self,``,`effects`,)'

	elif '$giveitem' in entinput or '$awardandgiveextraitem' in entinput:
		giveitem = True
		stringval = splitval[2].strip().lower()

		if stringval != 'tf_wearable' and (stringval in itemdefs or stringval.removeprefix('the ') in itemdefs):

			if stringval.startswith('tf_'):
				if stringval in itemdefs:
					formatval = f'{stringval} ? {itemdefs[stringval]} ? null'

			else:
				try:
					index = itemdefs[stringval] - offset
				except Exception as KeyError:
					index = itemdefs[stringval.removeprefix('the ')] - offset
				for k, v in itemdefs.items():
					# print(v, index, '\n', stringval, k)

					if v == index:
						stringval = k
						break

				formatval = f'{stringval} ? {index} ? null'

				# input(stringval)

		else:

			if splitval[2] in customweapons:
				try:
					formatval = f'{customweapons[splitval[2]][0] } ? {customweapons[splitval[2]][1]} ? {customweapons[splitval[2]][2]}'
				except Exception as IndexError:
					formatval = 'INVALID ? -1 ? null'
			else:
				print(COLOR['CYAN'], 'Enter The item classname and definiton index for',COLOR['ENDC'],COLOR['HEADER'],f'{splitval[2].strip()}',COLOR['ENDC'])
				print(COLOR['CYAN'],'Find them here:',COLOR['ENDC'],COLOR['GREEN'],'https://wiki.alliedmods.net/Team_fortress_2_item_definition_indexes',COLOR['ENDC'])
				print(COLOR['CYAN'],'Enter null for wearable model if you are not creating a tf_wearable weapon',COLOR['ENDC'])
				print(COLOR['HEADER'], 'Enter ? for an example input',COLOR['ENDC'])
				# formatval = 'a ? a ? null'
				formatval = input('Format: Classname ? Index ? Wearable Model: ')

				if formatval == '?':
					print(COLOR['CYAN'],'Example input (the bat outta hell for demo):',COLOR['ENDC'],COLOR['GREEN'], 'tf_weapon_bottle ? 939 ? null', COLOR['ENDC'])
					print(COLOR['CYAN'],'Example tf_wearable input (cozy camper):',COLOR['ENDC'],COLOR['GREEN'], 'tf_wearable ? 642 ? models/workshop/player/items/sniper/xms_sniper_commandobackpack/xms_sniper_commandobackpack.mdl', COLOR['ENDC'])
					formatval = input('Format: Classname ? Index ? Wearable Model: ')

		customweapons.update({splitval[2] : formatval})
		formatsplit = formatval.split('?')

		if len(formatsplit) == 2:
			formatsplit.append('null')

		if len(formatsplit) != 3:
			# log.append('ERROR: Invalid GiveWeapon input, search for `INVALID` in the generated .nut file')
			formatsplit = ['INVALID', '-1', 'null']

		splitval[1] = 'RunScriptCode'
		try:
			splitval[2] = f'GiveWeapon(self,`{formatsplit[0].strip()}`,{int(formatsplit[1])},{formatsplit[2].strip()})'
		except Exception as ValueError:
			# log.append('ERROR: Invalid GiveWeapon input, search for `INVALID` in the generated .nut file')
			splitval[2] = f'GiveWeapon(self,`{formatsplit[0].strip()}`,{-1},{formatsplit[2].strip()})'

	elif '$addcurrency' in entinput or '$removecurrency' in entinput:
		# log.append(f'SUCCESS: converted {splitval[1]} to vscript alternative')

		if '$addcurrency' in entinput:
			splitval[1] = 'RunScriptCode'
			splitval[2] = f'self.AddCurrency({splitval[2]})'
		else:
			splitval[1] = 'RunScriptCode'
			splitval[2] = f'self.RemoveCurrency({splitval[2]})'

	elif '$weaponswitchslot' in entinput:
		# log.append(f'SUCCESS: converted {splitval[1]} to vscript alternative')
		switchslot = True
		splitval[1] = 'RunScriptCode'
		splitval[2] = f'WeaponSwitchSlot({splitval[2]}, self)'

	elif '$changeattributes' in entinput:
		# log.append(f'ALERT: converted {splitval[1]} to ChangeBotAttributes.  This will cause issues with multiple events under the same name!')
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

	if splitval[0].startswith('@p@') and 'self' in splitval[2]:
		splitval[2] = splitval[2].replace('self', 'self.GetMoveParent()')
		splitval[0] = splitval[0].removeprefix('@p@')

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
	
#print pointtemplates in new format
def convertpointtemplates(pop, indentationnumber, depth):
	newindent = 0
	index = 0
	uniqueoutputs = {}
	for i in pop:
		key = list(i)[0]
		value = i.get(key)
		print('\t' * indentationnumber, end = '')
		if isinstance(value, list):
			if depth == 2 and key.lower() not in ["keepalive", "nofixup", "removeifkilled"]:
				print("[" + str(index) + "] =")
				print('\t' * indentationnumber, end = '{\n')
				indentationnumber += 1
				print('\t' * indentationnumber, end = '')
				print(key, end = ' =\n')
				print('\t' * indentationnumber, end = '{\n')
				indentationnumber += 1
				convertpointtemplates(value, indentationnumber, depth + 1)
				indentationnumber -= 1
				print('\t' * indentationnumber, end = '},\n')
				indentationnumber -= 1
				print('\t' * indentationnumber, end = '},\n')
				index += 1
			else:
				if key.lower() == "pointtemplates":
					print("PointTemplates <- ")
				else:
					print(key, end = ' =\n')
				print('\t' * indentationnumber, end = '{\n')
				indentationnumber += 1
				newindent += 1
				convertpointtemplates(value, indentationnumber, depth + 1)
				indentationnumber -= 1
				newindent -= 1
				if newindent == 0:
					if depth != 0:
						print('\t' * indentationnumber, end = '},\n')
					else:
						print('\t' * indentationnumber, end = '}')
		else:
			if key[0] == '"' and key[-1] == '"':
				key = key[1:-1]
			if (key.lower().startswith('on') or key.lower().startswith('ou')) and (value.count(',') == 2 or value.count(',') == 3 or value.count(',') == 4):
				# value = convert_raf_keyvalues(value)
				if key in uniqueoutputs.keys():
					uniqueoutputs.update({key : uniqueoutputs[key] + 1})
				else:
					uniqueoutputs.update({key : 1})
				print('"' + key + '#' + str(uniqueoutputs[key]) + '"', end = '')
				print(" : ", end = '')
				if value[0] == '"' and value[-1] == '"':
					value = value[1:-1]
				newoutput = value.split(',')
				if len(newoutput) == 3:
					newoutput.append("0")
					newoutput.append("-1")
				if len(newoutput) == 4:
					if newoutput[3] == '':
						newoutput[3] = "0"
					newoutput.append("-1")
				if len(newoutput) == 5:
					if newoutput[4] == '':
						newoutput[4] = "-1"
				print('"' + ','.join(newoutput) + '",')
			else:
				print(key, end = '')
				print(" = ", end = '')
				newvalue = value.replace('\\', '/')
				print(newvalue + ',')

import os
popfiles = {}
for _, _, files in os.walk('./'):
	i = 0
	for file in files:
		if not file.endswith('.pop'): continue
		i += 1
		print(i, f': {file}')
		popfiles[i] = file
		
pop = input("enter the number for the file you would like to convert: ")
popfile = open(popfiles.get(int(pop)),'r', errors='replace', encoding='utf-8').read()

# import tkinter as tk
# from tkinter import filedialog

# root = tk.Tk()
# root.withdraw()
# file_path = filedia# log.askopenfilename()


# popfile = open(file_path, 'r', errors='replace', encoding='utf-8').read()

# Remove comments
while popfile.find('//') != -1:
	popfile = popfile[:popfile.find('//')] + popfile[popfile.find('\n', popfile.find('//')):]

# Remove [$SIGSEGV] tags
popfile = popfile.replace('[$SIGSEGV]', '')

parsed = ParseTree(popfile, 0)

keylist = getpointtemplates(parsed, [])

# Save the current stdout so that we can revert sys.stdou after we complete
# our redirection
stdout_fileno = sys.stdout

# Redirect sys.stdout to the file
output = open(popfiles.get(int(pop))[:-4] + "_point_templates.nut", "a+")
sys.stdout = output

convertpointtemplates(keylist, 0, 0)

# Close the file
sys.stdout.close()
# Restore sys.stdout to our old saved file handler
sys.stdout = stdout_fileno