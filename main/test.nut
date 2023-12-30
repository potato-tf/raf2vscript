local brushcoords = {}
for (local i = MAX_EDICTS; i > MAX_CLIENTS; i--)
{
    local ent = EntIndexToHScript(i)

    if (ent == null || hammerids.find(GetPropInt(ent, "m_iHammerID")) == null) continue;
    
    if (startswith(ent.GetModelName(), "*"))
        brushcoords.rawset(format("HAMMERID_%d_%s",GetPropInt(ent, "m_iHammerID"), ent.GetClassname()), [ent.GetBoundingMinsOriented(), ent.GetBoundingMaxsOriented()])
    
    ent.Kill();
}


function SetBBoxes() 
{
    local root = getroottable()
    foreach (k in root)
    {
        if (k in brushcoords)
        {
            k.KeyValueFromVector("mins", brushcoords[k][0])
            k.KeyValueFromVector("maxs", brushcoords[k][1])
        }
    }
}

DoEntFire("worldspawn", "CallScriptFunction", "SetBBoxes", -1, null, null);

::HAMMERID_1791383_point_worldtext <- SpawnEntityFromTable("point_worldtext", {
    origin = Vector(1745, -4745.33, 365.999),
    textspacingy = 14,
    textsize = 5,
    targetname = "commandhint",
    rainbow = 0,
    orientation = 0,
    message = "glow_outline_effect_enable 1: heavily used effect in this mission\nr_dynamic = 0: Disables crystal lighting\ncl_mvm_wave_status_visible_during_wave = 1: self-explanatory\n+use_action_slot_item = - Bind this to a better key, used to interact with buttons."
    font = 11,
    angles = QAngle(0, 180, 0)
})