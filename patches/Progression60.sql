# disable Dark Portal
UPDATE areatrigger_teleport SET target_map=0, target_position_x=-11883.2, target_position_y=-3206.1, target_position_z=-16.616, target_orientation=0.1357 WHERE ID=4354;
# https://github.com/azerothcore/mod-progression-system/pull/279/commits/64d4653058273031e1ac7ac6d05e19c5df114941

# fix city guards to lvl 60
UPDATE creature_template SET minlevel = 55,maxlevel = 55,HealthModifier = 1 WHERE entry IN (3296, 3084, 16222, 18103, 68, 5595, 4262, 36481, 16733);
UPDATE creature_template SET minlevel = 60,maxlevel = 60,HealthModifier = 1.2259 WHERE entry IN (14304, 13839, 20672,  1756, 20674);
UPDATE creature_template SET minlevel = 60,maxlevel = 60, HealthModifier = 1.83885  WHERE entry IN (14375, 14439, 14423, 14378, 36225, 36226);
UPDATE creature_template SET minlevel = 62,maxlevel = 62, HealthModifier = 10 WHERE entry = 466;
UPDATE creature_template SET minlevel = 62,maxlevel = 62 WHERE entry IN (34986, 16801, 16800);
# https://github.com/JanEbbing/azerothcore-wotlk/blob/fix-issue-set-faction-leaders-to-vanilla-stats/data/sql/updates/pending_db_world/rev_1626707176333165500.sql

# fix training dummies
DELETE FROM `creature_template` WHERE `entry` IN (1111001, 1111002, 1111003, 1111004, 1111005);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(1111004, 0, 0, 0, 0, 0, 28047, 0, 0, 0, 'Undersized Training Dummy', '', '', 0, 50, 50, 0, 7, 0, 1, 1, 20, 0.9, 0, 0, 1, 2000, 2000, 1, 1, 1, 131072, 2048, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 10000000, 1, 1, 1, 0, 0, 1, 32, 0, 262144, 'npc_training_dummy', 0),
(1111003, 0, 0, 0, 0, 0, 28047, 0, 0, 0, 'Cute Training Dummy', '', '', 0, 40, 40, 0, 7, 0, 1, 1, 20, 0.8, 0, 0, 1, 2000, 2000, 1, 1, 1, 131072, 2048, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 10000000, 1, 1, 1, 0, 0, 1, 32, 0, 262144, 'npc_training_dummy', 0),
(1111002, 0, 0, 0, 0, 0, 28047, 0, 0, 0, 'Tiny Training Dummy', '', '', 0, 30, 30, 0, 7, 0, 1, 1, 20, 0.7, 0, 0, 1, 2000, 2000, 1, 1, 1, 131072, 2048, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 10000000, 1, 1, 1, 0, 0, 1, 32, 0, 262144, 'npc_training_dummy', 0),
(1111001, 0, 0, 0, 0, 0, 28047, 0, 0, 0, 'Petty Training Dummy', '', '', 0, 20, 20, 0, 7, 0, 1, 1, 20, 0.6, 0, 0, 1, 2000, 2000, 1, 1, 1, 131072, 2048, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 10000000, 1, 1, 1, 0, 0, 1, 32, 0, 262144, 'npc_training_dummy', 0),
(1111005, 0, 0, 0, 0, 0, 28047, 0, 0, 0, 'Adjusted Training Dummy', '', '', 0, 70, 70, 0, 7, 0, 1, 1, 20, 0.6, 0, 0, 1, 2000, 2000, 1, 1, 1, 131072, 2048, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 10000000, 1, 1, 1, 0, 0, 1, 32, 0, 262144, 'npc_training_dummy', 0);
# https://gist.github.com/55Honey/f0df381f4e2f3d9bc861b0348275159e