/*
Add a mysterious male goblin vendor named
"Felix Sunstreak" who sells exotic mounts in Booty Bay.
*/

-- =================================================
-- Exotic Mount Vendor
-- =================================================

DELETE FROM creature_template WHERE entry=200011;
DELETE FROM creature WHERE id1=200011;
DELETE FROM npc_vendor WHERE entry=200011;

INSERT INTO creature_template (modelid1, name, subname, IconName, minlevel, maxlevel, faction, npcflag, entry, speed_walk, speed_run, scale, DamageModifier, unit_class, HealthModifier, ManaModifier, ArmorModifier, RegenHealth, VerifiedBuild) VALUES (7993, "Felix Sunstreak", "Exotic Mounts", "Buy", 40, 40, 475, 4225, 200011, 1, 1.14286, 1, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 33976);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 33999);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 34060);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 34061);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 34092);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 34129);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 35906);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 37011);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 37012);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 37676);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 37719);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 40775);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 43516);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 43951);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 43952);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 43953);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 43954);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 43955);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 43956);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 43958);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 43959);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 43961);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 43962);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 43986);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 44077);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 44080);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 44083);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 44086);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 44151);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 44160);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 44164);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 44175);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 44178);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 44223);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 44224);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 44225);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 44226);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 44230);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 44231);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 44234);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 44235);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 44413);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 44554);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 44558);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 44689);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 44690);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 44707);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 44842);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 44843);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 45801);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 45802);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 46099);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 46100);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 46101);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 46109);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 46171);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 46308);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 46708);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 46743);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 46744);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 46745);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 46746);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 46747);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 46748);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 46749);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 46750);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 46751);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 46752);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 46813);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 46814);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 46815);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 46816);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 47100);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 47101);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 47179);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 47180);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 47840);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 49044);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 49046);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 49096);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 50250);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 51954);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 51955);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 54068);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 54797);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 54860);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 45125);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 45586);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 45589);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 45590);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 45591);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 45592);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 45593);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 45595);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 45596);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 45597);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 19902);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 37828);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 33977);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 35513);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 30480);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 32768);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 32458);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 33809);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 41508);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 44168);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 44177);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 45693);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 45725);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 46102);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 49636);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 49098);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 52200);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 50818);
INSERT INTO npc_vendor (entry, item) VALUES (200011, 8630);

-- place exotic mount vendor in Booty Bay
INSERT INTO `creature` (`id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(200011, 0, 0, 0, 0, 0, 1, 1, 0, -14374.4, 398.844, 6.62544, 1.33009, 300, 0, 0, 1524, 0, 0, 0, 0, 0, '', NULL);

-- make mounts w/out existing cost be 10g each
UPDATE item_template
SET BuyPrice = 10 * 100 * 100
WHERE BuyPrice = 0
AND entry IN (
'33976', '33999', '34060', '34061', '34092', '34129', '35906', '37011', '37012', '37676', '37719', '40775', '43516', '43951', '43952', '43953', '43954', '43955', '43956', '43958', '43959', '43961', '43962', '43986', '44077', '44080', '44083', '44086', '44151', '44160', '44164', '44175', '44178', '44223', '44224', '44225', '44226', '44230', '44231', '44234', '44235', '44413', '44554', '44558', '44689', '44690', '44707', '44842', '44843', '45801', '45802', '46099', '46100', '46101', '46109', '46171', '46308', '46708', '46743', '46744', '46745', '46746', '46747', '46748', '46749', '46750', '46751', '46752', '46813', '46814', '46815', '46816', '47100', '47101', '47179', '47180', '47840', '49044', '49046', '49096', '50250', '51954', '51955', '54068', '54797', '54860', '45125', '45586', '45589', '45590', '45591', '45592', '45593', '45595', '45596', '45597', '19902', '37828', '33977', '35513', '30480', '32768', '32458', '33809', '41508', '44168', '44177', '45693', '45725', '46102', '49636', '49098', '52200', '50818', '8630'
);