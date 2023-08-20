# add transmog NPCs in Stormwind and Orgrimmar near tailoring trainers
DELETE FROM creature WHERE id1=190010;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(3200508, 190010, 0, 0, 1, 0, 0, 1, 1, 0, 1800.79, -4575.88, 23.0069, 1.63827, 300, 0, 0, 12600, 0, 0, 0, 0, 0, '', NULL),
(3200505, 190010, 0, 0, 0, 0, 0, 1, 1, 0, -8944.69, 789.857, 90.942, 0.257173, 300, 0, 0, 12600, 0, 0, 0, 0, 0, '', NULL);