-- Changes appearance of NPC from this mod:
-- https://github.com/silviu20092/mod-improved-bank

UPDATE `creature_template` SET
    `name` = 'Krezik Vaultlock',
    `subname` = 'Wealth Management',
    `minlevel` = 40,
    `maxlevel` = 40,
    `type_flags` = `type_flags` & ~4
WHERE `entry` = 200001;

UPDATE `creature_template_model` SET
    `CreatureDisplayID` = 10739,
    `DisplayScale` = 1,
    `Probability` = 1
WHERE `CreatureID` = 200001;

/*
suit = 19224
armor = 10739
leather = 10740
*/

/*
Add mysterious bank vendors to all capitol cities.
*/

DELETE FROM creature WHERE id1=200001;
INSERT INTO `creature` (`id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(200001, 0, 0, 1, 0, 0, 1, 1, 0, 9923.69, 2512.08, 1318.3, 4.05652, 300, 0, 0, 12600, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(200001, 0, 0, 1, 0, 0, 1, 1, 0, -1252.44, 44.7019, 127.358, 2.67897, 300, 0, 0, 12600, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(200001, 0, 0, 0, 0, 0, 1, 1, 0, -8881.73, 632.772, 96.4773, 6.04241, 300, 0, 0, 12600, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(200001, 0, 0, 0, 0, 0, 1, 1, 0, -4896.56, -964.886, 501.445, 2.84344, 300, 0, 0, 12600, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(200001, 0, 0, 0, 0, 0, 1, 1, 0, 1555.23, 246.305, -43.1026, 0.344955, 300, 0, 0, 12600, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(200001, 0, 0, 1, 0, 0, 1, 1, 0, 1617.44, -4392.24, 10.4324, 4.68491, 300, 0, 0, 12600, 0, 0, 0, 0, 0, '', NULL, 0, NULL);