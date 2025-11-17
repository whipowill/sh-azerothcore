-- Changes appearance of NPC from this mod:
-- https://github.com/biosfree/mod-reagent-bank-account

/*
Creates new Quartermaster NPCs in capitol towns ear bank.
*/

UPDATE `creature_template` SET
    `name` = 'Quartermaster',
    `subname` = 'Guild Reagents',
    `minlevel` = 40,
    `maxlevel` = 40,
    `faction` = 35
WHERE `entry` = 290011;

UPDATE `creature_template_model` SET
    `CreatureDisplayID` = 11389,
    `DisplayScale` = 1,
    `Probability` = 1
WHERE `CreatureID` = 290011;

DELETE FROM creature WHERE id1=290011;
INSERT INTO `creature` (`id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(290011, 0, 0, 0, 0, 0, 1, 1, 0, -4913.62, -977.585, 501.449, 1.93235, 300, 0, 0, 120, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(290011, 0, 0, 1, 0, 0, 1, 1, 0, 9943.93, 2495.34, 1317.58, 3.8319, 300, 0, 0, 120, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(290011, 0, 0, 0, 0, 0, 1, 1, 0, -8873.56, 651.398, 97.0484, 4.1056, 300, 0, 0, 120, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(290011, 0, 0, 0, 0, 0, 1, 1, 0, 1555.8, 233.721, -43.1026, 0.528742, 300, 0, 0, 120, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(290011, 0, 0, 1, 0, 0, 1, 1, 0, 1597.4, -4382.19, 10.251, 5.72709, 300, 0, 0, 1524, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(290011, 0, 0, 1, 0, 0, 1, 1, 0, -1262.43, 34.1759, 128.187, 0.510153, 300, 0, 0, 1524, 0, 0, 0, 0, 0, '', NULL, 0, NULL);
