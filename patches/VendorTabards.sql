/*
Add a mysterious female goblin vendor named
"Glimmer Goldshine" who sells tabards in Booty Bay.
*/

-- =================================================
-- Tabard Vendor
-- =================================================

DELETE FROM creature_template WHERE entry=200010;
DELETE FROM creature WHERE id1=200010;
DELETE FROM npc_vendor WHERE entry=200010;

INSERT INTO creature_template (modelid1, name, subname, minlevel, maxlevel, faction, npcflag, entry, speed_walk, speed_run, scale, DamageModifier, unit_class, HealthModifier, ManaModifier, ArmorModifier, RegenHealth, VerifiedBuild) VALUES (7175, "Glimmer Goldshine", "Tabard Collector", 40, 40, 475, 4225, 200010, 1, 1.14286, 1, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 5976);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 11364);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 15196);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 15197);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 15198);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 15199);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 19031);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 19032);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 19160);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 19505);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 19506);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 20131);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 20132);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 22999);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 23192);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 23999);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 24004);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 24344);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 25549);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 28788);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 31279);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 31404);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 31405);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 31773);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 31774);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 31775);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 31776);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 31777);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 31778);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 31779);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 31780);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 31781);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 31804);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 32445);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 32828);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 35221);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 35279);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 35280);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 36941);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 40643);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 43154);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 43155);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 43156);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 43157);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 43349);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 45574);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 45577);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 45578);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 45579);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 45580);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 45581);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 45582);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 45583);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 45584);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 45585);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 45983);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 46817);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 46818);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 46874);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 49052);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 49054);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 49086);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 51534);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 52252);

-- add vendor to booty bay
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(3200531, 200010, 0, 0, 0, 0, 0, 1, 1, 0, -14393.9, 399.262, 7.88493, 0.553273, 300, 0, 0, 1524, 0, 0, 0, 0, 0, '', NULL);

-- make tabards cost 10g each
UPDATE item_template
SET BuyPrice = 10 * 100 * 100
WHERE entry IN (
	'5976', '11364', '15196', '15197', '15198', '15199', '19031', '19032', '19160', '19505', '19506', '20131', '20132', '22999', '23192', '23999', '24004', '24344', '25549', '28788', '31279', '31404', '31405', '31773', '31774', '31775', '31776', '31777', '31778', '31779', '31780', '31781', '31804', '32445', '32828', '35221', '35279', '35280', '36941', '40643', '43154', '43155', '43156', '43157', '43349', '45574', '45577', '45578', '45579', '45580', '45581', '45582', '45583', '45584', '45585', '45983', '46817', '46818', '46874', '49052', '49054', '49086', '51534', '52252'
);