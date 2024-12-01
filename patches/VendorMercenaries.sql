# add npcbots NPCs in Stormwind and Orgrimmar near bank
DELETE FROM creature WHERE id1=70000;
INSERT INTO `creature` (`id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(70000, 0, 0, 1, 0, 0, 1, 1, 0, 1608.41, -4370.05, 9.38045, 3.06965, 300, 0, 0, 66936, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(70000, 0, 0, 0, 0, 0, 1, 1, 0, -8880.52, 632.318, 96.4775, 0.531272, 300, 0, 0, 66936, 0, 0, 0, 0, 0, '', NULL, 0, NULL);