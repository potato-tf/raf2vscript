import mysql.connector
import asyncio

async def wipe_speedrun(id):

    cursor.execute(f"""
        UPDATE mission_info mi
        LEFT JOIN (
            SELECT mission_name, id, time,
                   ROW_NUMBER() OVER (PARTITION BY mission_name ORDER BY time ASC) as `rank`
            FROM speedrun
            WHERE id != {id}
        ) s ON mi.name = s.mission_name AND s.`rank` = 1
        SET mi.fastest_speedrun_id = COALESCE(s.id, NULL)
        WHERE mi.fastest_speedrun_id = {id}
    """)

    cursor.execute(f"DELETE FROM speedrun_players WHERE speedrun_id = {id}")
    cursor.execute(f"DELETE FROM speedrun WHERE id = {id}")

    print(id, f"deleting speedrun ID {id} from 'speedrun_players'")

async def wipe_speedruns_and_mission(missionstowipe):
    
    speedrun_name_and_ids = {}
    
    for name in missionstowipe:

        if not name in speedrun_name_and_ids:
            speedrun_name_and_ids[name] = []

        try:
            cursor.execute(f"SELECT id FROM speedrun WHERE mission_name = '{name}'")
            rows = cursor.fetchall()
            speedrun_name_and_ids[name] = [row[0] for row in rows]

        except Exception as e: print(e)

    for name, ids in speedrun_name_and_ids.items():

        for id in ids:

            try:
                await wipe_speedrun(id)

            except Exception as e: print(e)

        cursor.execute(f"DELETE FROM speedrun WHERE mission_name = '{name}'")
        print(id, f"\ndeleting {name} from 'speedrun'\n")

    fulldelete = input("Full delete from database? Y/N: ")

    if fulldelete.lower() == 'y':

        for name, _ in speedrun_name_and_ids.items():
            cursor.execute(f"DELETE FROM wave_progress WHERE wave_progress_bitmask_key = '{name}'")
            cursor.execute(f"DELETE FROM feedback WHERE mission_name = '{name}'")
            cursor.execute(f"DELETE FROM mission_info WHERE name = '{name}'")

async def disqualify_speedrun(id, dq_status):
    print(f'Disqualifying speedrun ID {id}')
    # return
    cursor.execute(f"UPDATE speedrun SET disqualified = {dq_status} WHERE id = '{id}'")
    cursor.execute(f"UPDATE speedrun_players SET disqualified = {dq_status} WHERE speedrun_id = '{id}'")


async def disqualify_speedruns_for_users(steamid_list, dq_status = 1):
    speedrun_ids = []
    
    for steamid in steamid_list:
        
        try:
            print(f'Getting speedruns for {steamid}')
            cursor.execute(f"SELECT speedrun_id from speedrun_players WHERE players = '{steamid}'")
            result = cursor.fetchall()
            speedrun_ids += list(set([row[0] for row in result]))
            # print(speedrun_ids)
            
            # cursor.execute(f"UPDATE speedrun SET disqualified = 1 WHERE id = '{id}'")
        except Exception as e: print(e)
        
    [await disqualify_speedrun(id, dq_status) for id in speedrun_ids]

if __name__ == "__main__":
    
    # memes list
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
    
    # wipe_speedruns_and_mission(missionstowipe)
    # asyncio.run(disqualify_speedruns_for_users([76561198060389208], 0))
    # wipe_speedrun()
    asyncio.run(wipe_speedrun(5499290910066))

    print("Finished! Press enter to commit")
    input()
    cursor.execute("COMMIT")

    cursor.close()
    conn.close()