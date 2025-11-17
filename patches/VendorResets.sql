-- Changes appearance of NPC from this mod:
-- https://github.com/azerothcore/mod-instance-reset

/*
Add a mysterious female gnome vendor named
"Zazzle Timewrench" who will reset instances in Gadgetzan.
*/

UPDATE `creature_template` SET
    `name` = 'Zazzle Timewrench',
    `subname` = 'Time Traveler',
    `minlevel` = 40,
    `maxlevel` = 40,
    `type_flags` = `type_flags` & ~4
WHERE `entry` = 300000;

UPDATE `creature_template_model` SET
    `CreatureDisplayID` = 10722,
    `DisplayScale` = 1,
    `Probability` = 1
WHERE `CreatureID` = 300000;

DELETE FROM creature WHERE id1=300000;
INSERT INTO `creature` (`id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(300000, 0, 0, 1, 0, 0, 1, 1, 0, -7110.93, -3830.1, 10.5959, 2.56413, 300, 0, 0, 1524, 0, 0, 0, 0, 0, '', NULL, 0, NULL);
