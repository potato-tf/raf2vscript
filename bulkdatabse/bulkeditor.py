import mysql.connector

speedrun_name_and_ids = {}

# missionstowipe = [
#     'what_have_i_done',
#     'int_stacked_deck', 
#     'jesty_joker_jamble',
#     'hohohoes_holiday',
#     'mediocre_nonsense',
#     'insomniacs_insanity',
#     'whathaveidone',
#     'chili_sabotage',
#     'welcometomymine',
#     'mediocre_nonsense',
#     'int_there_is_no_meme',
#     'adv_garden_warfare',
#     'shadows',
#     'extended_deadline',
#     'exp_trash',
#     'tf2wood',
#     'int_donacdum',
#     'int_mayfield_heights',
#     'int_pisses_on_the_moon',
#     'pepper_boys',
#     'bison_barrage',
#     'dihydrogen_monoxide',
#     'int_circuit_board_torture',
#     'float_wtf_mk_two_f'
# ]

missionstowipe = ['advanced1']

conn = mysql.connector.connect(
    host="",
    port="",
    user="",
    password="",
    database=""
)

cursor = conn.cursor()

cursor.execute("START TRANSACTION")

for name in missionstowipe:

    if not name in speedrun_name_and_ids:
        speedrun_name_and_ids[name] = []

    try:
        cursor.execute(f"SELECT id FROM speedrun WHERE mission_name = '{name}'")
        rows = cursor.fetchall()
        for row in rows:
            speedrun_name_and_ids[name].append(row[0])

    except Exception as e: print(e)

for name, ids in speedrun_name_and_ids.items():

    for id in ids:
        
        try:
            cursor.execute(f"UPDATE mission_info SET fastest_speedrun_id = NULL WHERE fastest_speedrun_id = '{id}'")
            cursor.execute(f"DELETE FROM speedrun_players WHERE speedrun_id = '{id}'")
            print(id, f"deleting speedrun ID {id} for {name} from 'speedrun_players'")
            
        except Exception as e: print(e)
    cursor.execute(f"DELETE FROM speedrun WHERE mission_name = '{name}'")
    print(id, f"\ndeleting {name} from 'speedrun'\n")

fulldelete = input("Full delete from database? Y/N: ")

if fulldelete.lower() == 'y':
    for name, _ in speedrun_name_and_ids.items():
        cursor.execute(f"DELETE FROM wave_progress WHERE wave_progress_bitmask_key = '{name}'")
        cursor.execute(f"DELETE FROM feedback WHERE mission_name = '{name}'")
        cursor.execute(f"DELETE FROM mission_info WHERE name = '{name}'")


print("Finished! transaction committed")
cursor.execute("COMMIT")

cursor.close()
conn.close()