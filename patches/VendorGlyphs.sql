/*
Add a mysterious group of shady goblin vendors from
the "Inkwell Cartel" to the auction area in Gadgetzan.
*/

-- =================================================
-- Glyph Vendor - DK
-- =================================================

DELETE FROM creature_template WHERE entry=200000;
DELETE FROM creature_template_model WHERE CreatureID=200000;
DELETE FROM creature WHERE id1=200000;
DELETE FROM npc_vendor WHERE entry=200000;

-- Insert into creature_template
INSERT INTO creature_template (name, subname, IconName, minlevel, maxlevel, faction, npcflag, entry, speed_walk, speed_run, scale, DamageModifier, unit_class, HealthModifier, ManaModifier, ArmorModifier, RegenHealth, VerifiedBuild)
VALUES ("Tinker Tosslecrank", "Inkwell Cartel", "Buy", 40, 40, 475, 4225, 200000, 1, 1.14286, 1, 1, 1, 1, 1, 1, 1, 1);

-- Insert into creature_template_model
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability)
VALUES (200000, 0, 7164, 1, 1);

INSERT INTO npc_vendor (entry, item) VALUES (200000, 43533);
INSERT INTO npc_vendor (entry, item) VALUES (200000, 43534);
INSERT INTO npc_vendor (entry, item) VALUES (200000, 43535);
INSERT INTO npc_vendor (entry, item) VALUES (200000, 43536);
INSERT INTO npc_vendor (entry, item) VALUES (200000, 43537);
INSERT INTO npc_vendor (entry, item) VALUES (200000, 43538);
INSERT INTO npc_vendor (entry, item) VALUES (200000, 43539);
INSERT INTO npc_vendor (entry, item) VALUES (200000, 43541);
INSERT INTO npc_vendor (entry, item) VALUES (200000, 43542);
INSERT INTO npc_vendor (entry, item) VALUES (200000, 43543);
INSERT INTO npc_vendor (entry, item) VALUES (200000, 43544);
INSERT INTO npc_vendor (entry, item) VALUES (200000, 43545);
INSERT INTO npc_vendor (entry, item) VALUES (200000, 43546);
INSERT INTO npc_vendor (entry, item) VALUES (200000, 43547);
INSERT INTO npc_vendor (entry, item) VALUES (200000, 43548);
INSERT INTO npc_vendor (entry, item) VALUES (200000, 43549);
INSERT INTO npc_vendor (entry, item) VALUES (200000, 43550);
INSERT INTO npc_vendor (entry, item) VALUES (200000, 43551);
INSERT INTO npc_vendor (entry, item) VALUES (200000, 43552);
INSERT INTO npc_vendor (entry, item) VALUES (200000, 43553);
INSERT INTO npc_vendor (entry, item) VALUES (200000, 43554);
INSERT INTO npc_vendor (entry, item) VALUES (200000, 43671);
INSERT INTO npc_vendor (entry, item) VALUES (200000, 43672);
INSERT INTO npc_vendor (entry, item) VALUES (200000, 43673);
INSERT INTO npc_vendor (entry, item) VALUES (200000, 43825);
INSERT INTO npc_vendor (entry, item) VALUES (200000, 43826);
INSERT INTO npc_vendor (entry, item) VALUES (200000, 43827);
INSERT INTO npc_vendor (entry, item) VALUES (200000, 45799);
INSERT INTO npc_vendor (entry, item) VALUES (200000, 45800);
INSERT INTO npc_vendor (entry, item) VALUES (200000, 45803);
INSERT INTO npc_vendor (entry, item) VALUES (200000, 45804);
INSERT INTO npc_vendor (entry, item) VALUES (200000, 45805);
INSERT INTO npc_vendor (entry, item) VALUES (200000, 45806);

-- =================================================
-- Glyph Vendor - Druid
-- =================================================

-- I changed the ID on this one so it doesn't conflict w/
-- the vendor from Improved Bank mod.

DELETE FROM creature_template WHERE entry=200010;
DELETE FROM creature_template_model WHERE CreatureID=200010;
DELETE FROM creature WHERE id1=200010;
DELETE FROM npc_vendor WHERE entry=200010;

-- Insert into creature_template
INSERT INTO creature_template (name, subname, IconName, minlevel, maxlevel, faction, npcflag, entry, speed_walk, speed_run, scale, DamageModifier, unit_class, HealthModifier, ManaModifier, ArmorModifier, RegenHealth, VerifiedBuild)
VALUES ("Klink Goldsprocket", "Inkwell Cartel", "Buy", 40, 40, 475, 4225, 200010, 1, 1.14286, 1, 1, 1, 1, 1, 1, 1, 1);

-- Insert into creature_template_model
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability)
VALUES (200010, 0, 7164, 1, 1);

INSERT INTO npc_vendor (entry, item) VALUES (200010, 40896);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 40897);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 40899);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 40900);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 40901);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 40902);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 40903);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 40906);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 40908);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 40909);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 40912);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 40913);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 40914);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 40915);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 40916);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 40919);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 40920);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 40921);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 40922);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 40923);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 40924);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 43316);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 43331);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 43332);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 43334);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 43335);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 43674);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 44922);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 44928);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 45601);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 45602);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 45603);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 45604);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 45622);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 45623);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 46372);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 48720);
INSERT INTO npc_vendor (entry, item) VALUES (200010, 50125);

-- =================================================
-- Glyph Vendor - Hunter
-- =================================================

DELETE FROM creature_template WHERE entry=200002;
DELETE FROM creature_template_model WHERE CreatureID=200002;
DELETE FROM creature WHERE id1=200002;
DELETE FROM npc_vendor WHERE entry=200002;

-- Insert into creature_template
INSERT INTO creature_template (name, subname, IconName, minlevel, maxlevel, faction, npcflag, entry, speed_walk, speed_run, scale, DamageModifier, unit_class, HealthModifier, ManaModifier, ArmorModifier, RegenHealth, VerifiedBuild)
VALUES ("Snickers Blastwhiz", "Inkwell Cartel", "Buy", 40, 40, 475, 4225, 200002, 1, 1.14286, 1, 1, 1, 1, 1, 1, 1, 1);

-- Insert into creature_template_model
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability)
VALUES (200002, 0, 7164, 1, 1);

INSERT INTO npc_vendor (entry, item) VALUES (200002, 42897);
INSERT INTO npc_vendor (entry, item) VALUES (200002, 42898);
INSERT INTO npc_vendor (entry, item) VALUES (200002, 42899);
INSERT INTO npc_vendor (entry, item) VALUES (200002, 42900);
INSERT INTO npc_vendor (entry, item) VALUES (200002, 42901);
INSERT INTO npc_vendor (entry, item) VALUES (200002, 42902);
INSERT INTO npc_vendor (entry, item) VALUES (200002, 42903);
INSERT INTO npc_vendor (entry, item) VALUES (200002, 42904);
INSERT INTO npc_vendor (entry, item) VALUES (200002, 42905);
INSERT INTO npc_vendor (entry, item) VALUES (200002, 42906);
INSERT INTO npc_vendor (entry, item) VALUES (200002, 42907);
INSERT INTO npc_vendor (entry, item) VALUES (200002, 42908);
INSERT INTO npc_vendor (entry, item) VALUES (200002, 42909);
INSERT INTO npc_vendor (entry, item) VALUES (200002, 42910);
INSERT INTO npc_vendor (entry, item) VALUES (200002, 42911);
INSERT INTO npc_vendor (entry, item) VALUES (200002, 42912);
INSERT INTO npc_vendor (entry, item) VALUES (200002, 42913);
INSERT INTO npc_vendor (entry, item) VALUES (200002, 42914);
INSERT INTO npc_vendor (entry, item) VALUES (200002, 42915);
INSERT INTO npc_vendor (entry, item) VALUES (200002, 42916);
INSERT INTO npc_vendor (entry, item) VALUES (200002, 42917);
INSERT INTO npc_vendor (entry, item) VALUES (200002, 43338);
INSERT INTO npc_vendor (entry, item) VALUES (200002, 43350);
INSERT INTO npc_vendor (entry, item) VALUES (200002, 43351);
INSERT INTO npc_vendor (entry, item) VALUES (200002, 43354);
INSERT INTO npc_vendor (entry, item) VALUES (200002, 43355);
INSERT INTO npc_vendor (entry, item) VALUES (200002, 43356);
INSERT INTO npc_vendor (entry, item) VALUES (200002, 45625);
INSERT INTO npc_vendor (entry, item) VALUES (200002, 45731);
INSERT INTO npc_vendor (entry, item) VALUES (200002, 45732);
INSERT INTO npc_vendor (entry, item) VALUES (200002, 45733);
INSERT INTO npc_vendor (entry, item) VALUES (200002, 45734);
INSERT INTO npc_vendor (entry, item) VALUES (200002, 45735);

-- =================================================
-- Glyph Vendor - Mage
-- =================================================

DELETE FROM creature_template WHERE entry=200003;
DELETE FROM creature_template_model WHERE CreatureID=200003;
DELETE FROM creature WHERE id1=200003;
DELETE FROM npc_vendor WHERE entry=200003;

-- Insert into creature_template
INSERT INTO creature_template (name, subname, IconName, minlevel, maxlevel, faction, npcflag, entry, speed_walk, speed_run, scale, DamageModifier, unit_class, HealthModifier, ManaModifier, ArmorModifier, RegenHealth, VerifiedBuild)
VALUES ("Fizzle Whizzblast", "Inkwell Cartel", "Buy", 40, 40, 475, 4225, 200003, 1, 1.14286, 1, 1, 1, 1, 1, 1, 1, 1);

-- Insert into creature_template_model
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability)
VALUES (200003, 0, 7164, 1, 1);

INSERT INTO npc_vendor (entry, item) VALUES (200003, 42734);
INSERT INTO npc_vendor (entry, item) VALUES (200003, 42735);
INSERT INTO npc_vendor (entry, item) VALUES (200003, 42736);
INSERT INTO npc_vendor (entry, item) VALUES (200003, 42737);
INSERT INTO npc_vendor (entry, item) VALUES (200003, 42738);
INSERT INTO npc_vendor (entry, item) VALUES (200003, 42739);
INSERT INTO npc_vendor (entry, item) VALUES (200003, 42740);
INSERT INTO npc_vendor (entry, item) VALUES (200003, 42741);
INSERT INTO npc_vendor (entry, item) VALUES (200003, 42742);
INSERT INTO npc_vendor (entry, item) VALUES (200003, 42743);
INSERT INTO npc_vendor (entry, item) VALUES (200003, 42744);
INSERT INTO npc_vendor (entry, item) VALUES (200003, 42745);
INSERT INTO npc_vendor (entry, item) VALUES (200003, 42746);
INSERT INTO npc_vendor (entry, item) VALUES (200003, 42747);
INSERT INTO npc_vendor (entry, item) VALUES (200003, 42748);
INSERT INTO npc_vendor (entry, item) VALUES (200003, 42749);
INSERT INTO npc_vendor (entry, item) VALUES (200003, 42750);
INSERT INTO npc_vendor (entry, item) VALUES (200003, 42751);
INSERT INTO npc_vendor (entry, item) VALUES (200003, 42752);
INSERT INTO npc_vendor (entry, item) VALUES (200003, 42753);
INSERT INTO npc_vendor (entry, item) VALUES (200003, 42754);
INSERT INTO npc_vendor (entry, item) VALUES (200003, 43339);
INSERT INTO npc_vendor (entry, item) VALUES (200003, 43357);
INSERT INTO npc_vendor (entry, item) VALUES (200003, 43359);
INSERT INTO npc_vendor (entry, item) VALUES (200003, 43360);
INSERT INTO npc_vendor (entry, item) VALUES (200003, 43361);
INSERT INTO npc_vendor (entry, item) VALUES (200003, 43364);
INSERT INTO npc_vendor (entry, item) VALUES (200003, 44684);
INSERT INTO npc_vendor (entry, item) VALUES (200003, 44920);
INSERT INTO npc_vendor (entry, item) VALUES (200003, 44955);
INSERT INTO npc_vendor (entry, item) VALUES (200003, 45736);
INSERT INTO npc_vendor (entry, item) VALUES (200003, 45737);
INSERT INTO npc_vendor (entry, item) VALUES (200003, 45738);
INSERT INTO npc_vendor (entry, item) VALUES (200003, 45739);
INSERT INTO npc_vendor (entry, item) VALUES (200003, 45740);
INSERT INTO npc_vendor (entry, item) VALUES (200003, 50045);

-- =================================================
-- Glyph Vendor - Paladin
-- =================================================

DELETE FROM creature_template WHERE entry=200004;
DELETE FROM creature_template_model WHERE CreatureID=200004;
DELETE FROM creature WHERE id1=200004;
DELETE FROM npc_vendor WHERE entry=200004;

-- Insert into creature_template
INSERT INTO creature_template (name, subname, IconName, minlevel, maxlevel, faction, npcflag, entry, speed_walk, speed_run, scale, DamageModifier, unit_class, HealthModifier, ManaModifier, ArmorModifier, RegenHealth, VerifiedBuild)
VALUES ("Ratchet Geargrin", "Inkwell Cartel", "Buy", 40, 40, 475, 4225, 200004, 1, 1.14286, 1, 1, 1, 1, 1, 1, 1, 1);

-- Insert into creature_template_model
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability)
VALUES (200004, 0, 7164, 1, 1);

INSERT INTO npc_vendor (entry, item) VALUES (200004, 41092);
INSERT INTO npc_vendor (entry, item) VALUES (200004, 41094);
INSERT INTO npc_vendor (entry, item) VALUES (200004, 41095);
INSERT INTO npc_vendor (entry, item) VALUES (200004, 41096);
INSERT INTO npc_vendor (entry, item) VALUES (200004, 41097);
INSERT INTO npc_vendor (entry, item) VALUES (200004, 41098);
INSERT INTO npc_vendor (entry, item) VALUES (200004, 41099);
INSERT INTO npc_vendor (entry, item) VALUES (200004, 41100);
INSERT INTO npc_vendor (entry, item) VALUES (200004, 41101);
INSERT INTO npc_vendor (entry, item) VALUES (200004, 41102);
INSERT INTO npc_vendor (entry, item) VALUES (200004, 41103);
INSERT INTO npc_vendor (entry, item) VALUES (200004, 41104);
INSERT INTO npc_vendor (entry, item) VALUES (200004, 41105);
INSERT INTO npc_vendor (entry, item) VALUES (200004, 41106);
INSERT INTO npc_vendor (entry, item) VALUES (200004, 41107);
INSERT INTO npc_vendor (entry, item) VALUES (200004, 41108);
INSERT INTO npc_vendor (entry, item) VALUES (200004, 41109);
INSERT INTO npc_vendor (entry, item) VALUES (200004, 41110);
INSERT INTO npc_vendor (entry, item) VALUES (200004, 43340);
INSERT INTO npc_vendor (entry, item) VALUES (200004, 43365);
INSERT INTO npc_vendor (entry, item) VALUES (200004, 43366);
INSERT INTO npc_vendor (entry, item) VALUES (200004, 43367);
INSERT INTO npc_vendor (entry, item) VALUES (200004, 43368);
INSERT INTO npc_vendor (entry, item) VALUES (200004, 43369);
INSERT INTO npc_vendor (entry, item) VALUES (200004, 43867);
INSERT INTO npc_vendor (entry, item) VALUES (200004, 43868);
INSERT INTO npc_vendor (entry, item) VALUES (200004, 43869);
INSERT INTO npc_vendor (entry, item) VALUES (200004, 45741);
INSERT INTO npc_vendor (entry, item) VALUES (200004, 45742);
INSERT INTO npc_vendor (entry, item) VALUES (200004, 45743);
INSERT INTO npc_vendor (entry, item) VALUES (200004, 45744);
INSERT INTO npc_vendor (entry, item) VALUES (200004, 45745);
INSERT INTO npc_vendor (entry, item) VALUES (200004, 45746);
INSERT INTO npc_vendor (entry, item) VALUES (200004, 45747);

-- =================================================
-- Glyph Vendor - Rogue
-- =================================================

DELETE FROM creature_template WHERE entry=200005;
DELETE FROM creature_template_model WHERE CreatureID=200005;
DELETE FROM creature WHERE id1=200005;
DELETE FROM npc_vendor WHERE entry=200005;

-- Insert into creature_template
INSERT INTO creature_template (name, subname, IconName, minlevel, maxlevel, faction, npcflag, entry, speed_walk, speed_run, scale, DamageModifier, unit_class, HealthModifier, ManaModifier, ArmorModifier, RegenHealth, VerifiedBuild)
VALUES ("Bling Blingerson", "Inkwell Cartel", "Buy", 40, 40, 475, 4225, 200005, 1, 1.14286, 1, 1, 1, 1, 1, 1, 1, 1);

-- Insert into creature_template_model
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability)
VALUES (200005, 0, 7164, 1, 1);

INSERT INTO npc_vendor (entry, item) VALUES (200005, 42954);
INSERT INTO npc_vendor (entry, item) VALUES (200005, 42955);
INSERT INTO npc_vendor (entry, item) VALUES (200005, 42956);
INSERT INTO npc_vendor (entry, item) VALUES (200005, 42957);
INSERT INTO npc_vendor (entry, item) VALUES (200005, 42958);
INSERT INTO npc_vendor (entry, item) VALUES (200005, 42959);
INSERT INTO npc_vendor (entry, item) VALUES (200005, 42960);
INSERT INTO npc_vendor (entry, item) VALUES (200005, 42961);
INSERT INTO npc_vendor (entry, item) VALUES (200005, 42962);
INSERT INTO npc_vendor (entry, item) VALUES (200005, 42963);
INSERT INTO npc_vendor (entry, item) VALUES (200005, 42964);
INSERT INTO npc_vendor (entry, item) VALUES (200005, 42965);
INSERT INTO npc_vendor (entry, item) VALUES (200005, 42966);
INSERT INTO npc_vendor (entry, item) VALUES (200005, 42967);
INSERT INTO npc_vendor (entry, item) VALUES (200005, 42968);
INSERT INTO npc_vendor (entry, item) VALUES (200005, 42969);
INSERT INTO npc_vendor (entry, item) VALUES (200005, 42970);
INSERT INTO npc_vendor (entry, item) VALUES (200005, 42971);
INSERT INTO npc_vendor (entry, item) VALUES (200005, 42972);
INSERT INTO npc_vendor (entry, item) VALUES (200005, 42973);
INSERT INTO npc_vendor (entry, item) VALUES (200005, 42974);
INSERT INTO npc_vendor (entry, item) VALUES (200005, 43343);
INSERT INTO npc_vendor (entry, item) VALUES (200005, 43376);
INSERT INTO npc_vendor (entry, item) VALUES (200005, 43377);
INSERT INTO npc_vendor (entry, item) VALUES (200005, 43378);
INSERT INTO npc_vendor (entry, item) VALUES (200005, 43379);
INSERT INTO npc_vendor (entry, item) VALUES (200005, 43380);
INSERT INTO npc_vendor (entry, item) VALUES (200005, 45761);
INSERT INTO npc_vendor (entry, item) VALUES (200005, 45762);
INSERT INTO npc_vendor (entry, item) VALUES (200005, 45764);
INSERT INTO npc_vendor (entry, item) VALUES (200005, 45766);
INSERT INTO npc_vendor (entry, item) VALUES (200005, 45767);
INSERT INTO npc_vendor (entry, item) VALUES (200005, 45768);
INSERT INTO npc_vendor (entry, item) VALUES (200005, 45769);

-- =================================================
-- Glyph Vendor - Shaman
-- =================================================

DELETE FROM creature_template WHERE entry=200006;
DELETE FROM creature_template_model WHERE CreatureID=200006;
DELETE FROM creature WHERE id1=200006;
DELETE FROM npc_vendor WHERE entry=200006;

-- Insert into creature_template
INSERT INTO creature_template (name, subname, IconName, minlevel, maxlevel, faction, npcflag, entry, speed_walk, speed_run, scale, DamageModifier, unit_class, HealthModifier, ManaModifier, ArmorModifier, RegenHealth, VerifiedBuild)
VALUES ("Sparky Boomflame", "Inkwell Cartel", "Buy", 40, 40, 475, 4225, 200006, 1, 1.14286, 1, 1, 1, 1, 1, 1, 1, 1);

-- Insert into creature_template_model
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability)
VALUES (200006, 0, 7164, 1, 1);

INSERT INTO npc_vendor (entry, item) VALUES (200006, 41517);
INSERT INTO npc_vendor (entry, item) VALUES (200006, 41518);
INSERT INTO npc_vendor (entry, item) VALUES (200006, 41524);
INSERT INTO npc_vendor (entry, item) VALUES (200006, 41526);
INSERT INTO npc_vendor (entry, item) VALUES (200006, 41527);
INSERT INTO npc_vendor (entry, item) VALUES (200006, 41529);
INSERT INTO npc_vendor (entry, item) VALUES (200006, 41530);
INSERT INTO npc_vendor (entry, item) VALUES (200006, 41531);
INSERT INTO npc_vendor (entry, item) VALUES (200006, 41532);
INSERT INTO npc_vendor (entry, item) VALUES (200006, 41533);
INSERT INTO npc_vendor (entry, item) VALUES (200006, 41534);
INSERT INTO npc_vendor (entry, item) VALUES (200006, 41535);
INSERT INTO npc_vendor (entry, item) VALUES (200006, 41536);
INSERT INTO npc_vendor (entry, item) VALUES (200006, 41537);
INSERT INTO npc_vendor (entry, item) VALUES (200006, 41538);
INSERT INTO npc_vendor (entry, item) VALUES (200006, 41539);
INSERT INTO npc_vendor (entry, item) VALUES (200006, 41540);
INSERT INTO npc_vendor (entry, item) VALUES (200006, 41541);
INSERT INTO npc_vendor (entry, item) VALUES (200006, 41542);
INSERT INTO npc_vendor (entry, item) VALUES (200006, 41547);
INSERT INTO npc_vendor (entry, item) VALUES (200006, 41552);
INSERT INTO npc_vendor (entry, item) VALUES (200006, 43344);
INSERT INTO npc_vendor (entry, item) VALUES (200006, 43381);
INSERT INTO npc_vendor (entry, item) VALUES (200006, 43385);
INSERT INTO npc_vendor (entry, item) VALUES (200006, 43386);
INSERT INTO npc_vendor (entry, item) VALUES (200006, 43388);
INSERT INTO npc_vendor (entry, item) VALUES (200006, 43725);
INSERT INTO npc_vendor (entry, item) VALUES (200006, 44923);
INSERT INTO npc_vendor (entry, item) VALUES (200006, 45770);
INSERT INTO npc_vendor (entry, item) VALUES (200006, 45771);
INSERT INTO npc_vendor (entry, item) VALUES (200006, 45772);
INSERT INTO npc_vendor (entry, item) VALUES (200006, 45775);
INSERT INTO npc_vendor (entry, item) VALUES (200006, 45776);
INSERT INTO npc_vendor (entry, item) VALUES (200006, 45777);
INSERT INTO npc_vendor (entry, item) VALUES (200006, 45778);

-- =================================================
-- Glyph Vendor - Warlock
-- =================================================

DELETE FROM creature_template WHERE entry=200007;
DELETE FROM creature_template_model WHERE CreatureID=200007;
DELETE FROM creature WHERE id1=200007;
DELETE FROM npc_vendor WHERE entry=200007;

-- Insert into creature_template
INSERT INTO creature_template (name, subname, IconName, minlevel, maxlevel, faction, npcflag, entry, speed_walk, speed_run, scale, DamageModifier, unit_class, HealthModifier, ManaModifier, ArmorModifier, RegenHealth, VerifiedBuild)
VALUES ("Razzle Quickfuse", "Inkwell Cartel", "Buy", 40, 40, 475, 4225, 200007, 1, 1.14286, 1, 1, 1, 1, 1, 1, 1, 1);

-- Insert into creature_template_model
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability)
VALUES (200007, 0, 7164, 1, 1);

INSERT INTO npc_vendor (entry, item) VALUES (200007, 42453);
INSERT INTO npc_vendor (entry, item) VALUES (200007, 42454);
INSERT INTO npc_vendor (entry, item) VALUES (200007, 42455);
INSERT INTO npc_vendor (entry, item) VALUES (200007, 42456);
INSERT INTO npc_vendor (entry, item) VALUES (200007, 42457);
INSERT INTO npc_vendor (entry, item) VALUES (200007, 42458);
INSERT INTO npc_vendor (entry, item) VALUES (200007, 42459);
INSERT INTO npc_vendor (entry, item) VALUES (200007, 42460);
INSERT INTO npc_vendor (entry, item) VALUES (200007, 42461);
INSERT INTO npc_vendor (entry, item) VALUES (200007, 42462);
INSERT INTO npc_vendor (entry, item) VALUES (200007, 42463);
INSERT INTO npc_vendor (entry, item) VALUES (200007, 42464);
INSERT INTO npc_vendor (entry, item) VALUES (200007, 42465);
INSERT INTO npc_vendor (entry, item) VALUES (200007, 42466);
INSERT INTO npc_vendor (entry, item) VALUES (200007, 42467);
INSERT INTO npc_vendor (entry, item) VALUES (200007, 42468);
INSERT INTO npc_vendor (entry, item) VALUES (200007, 42469);
INSERT INTO npc_vendor (entry, item) VALUES (200007, 42470);
INSERT INTO npc_vendor (entry, item) VALUES (200007, 42471);
INSERT INTO npc_vendor (entry, item) VALUES (200007, 42472);
INSERT INTO npc_vendor (entry, item) VALUES (200007, 42473);
INSERT INTO npc_vendor (entry, item) VALUES (200007, 43389);
INSERT INTO npc_vendor (entry, item) VALUES (200007, 43390);
INSERT INTO npc_vendor (entry, item) VALUES (200007, 43391);
INSERT INTO npc_vendor (entry, item) VALUES (200007, 43392);
INSERT INTO npc_vendor (entry, item) VALUES (200007, 43393);
INSERT INTO npc_vendor (entry, item) VALUES (200007, 43394);
INSERT INTO npc_vendor (entry, item) VALUES (200007, 45779);
INSERT INTO npc_vendor (entry, item) VALUES (200007, 45780);
INSERT INTO npc_vendor (entry, item) VALUES (200007, 45781);
INSERT INTO npc_vendor (entry, item) VALUES (200007, 45782);
INSERT INTO npc_vendor (entry, item) VALUES (200007, 45783);
INSERT INTO npc_vendor (entry, item) VALUES (200007, 45785);
INSERT INTO npc_vendor (entry, item) VALUES (200007, 45789);
INSERT INTO npc_vendor (entry, item) VALUES (200007, 50077);

-- =================================================
-- Glyph Vendor - Warrior
-- =================================================

DELETE FROM creature_template WHERE entry=200008;
DELETE FROM creature_template_model WHERE CreatureID=200008;
DELETE FROM creature WHERE id1=200008;
DELETE FROM npc_vendor WHERE entry=200008;

-- Insert into creature_template
INSERT INTO creature_template (name, subname, IconName, minlevel, maxlevel, faction, npcflag, entry, speed_walk, speed_run, scale, DamageModifier, unit_class, HealthModifier, ManaModifier, ArmorModifier, RegenHealth, VerifiedBuild)
VALUES ("Gizmo Gearspark", "Inkwell Cartel", "Buy", 40, 40, 475, 4225, 200008, 1, 1.14286, 1, 1, 1, 1, 1, 1, 1, 1);

-- Insert into creature_template_model
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability)
VALUES (200008, 0, 7164, 1, 1);

INSERT INTO npc_vendor (entry, item) VALUES (200008, 43395);
INSERT INTO npc_vendor (entry, item) VALUES (200008, 43396);
INSERT INTO npc_vendor (entry, item) VALUES (200008, 43397);
INSERT INTO npc_vendor (entry, item) VALUES (200008, 43398);
INSERT INTO npc_vendor (entry, item) VALUES (200008, 43399);
INSERT INTO npc_vendor (entry, item) VALUES (200008, 43400);
INSERT INTO npc_vendor (entry, item) VALUES (200008, 43412);
INSERT INTO npc_vendor (entry, item) VALUES (200008, 43413);
INSERT INTO npc_vendor (entry, item) VALUES (200008, 43414);
INSERT INTO npc_vendor (entry, item) VALUES (200008, 43415);
INSERT INTO npc_vendor (entry, item) VALUES (200008, 43416);
INSERT INTO npc_vendor (entry, item) VALUES (200008, 43417);
INSERT INTO npc_vendor (entry, item) VALUES (200008, 43418);
INSERT INTO npc_vendor (entry, item) VALUES (200008, 43419);
INSERT INTO npc_vendor (entry, item) VALUES (200008, 43420);
INSERT INTO npc_vendor (entry, item) VALUES (200008, 43421);
INSERT INTO npc_vendor (entry, item) VALUES (200008, 43422);
INSERT INTO npc_vendor (entry, item) VALUES (200008, 43423);
INSERT INTO npc_vendor (entry, item) VALUES (200008, 43424);
INSERT INTO npc_vendor (entry, item) VALUES (200008, 43425);
INSERT INTO npc_vendor (entry, item) VALUES (200008, 43426);
INSERT INTO npc_vendor (entry, item) VALUES (200008, 43427);
INSERT INTO npc_vendor (entry, item) VALUES (200008, 43428);
INSERT INTO npc_vendor (entry, item) VALUES (200008, 43429);
INSERT INTO npc_vendor (entry, item) VALUES (200008, 43430);
INSERT INTO npc_vendor (entry, item) VALUES (200008, 43431);
INSERT INTO npc_vendor (entry, item) VALUES (200008, 43432);
INSERT INTO npc_vendor (entry, item) VALUES (200008, 45790);
INSERT INTO npc_vendor (entry, item) VALUES (200008, 45792);
INSERT INTO npc_vendor (entry, item) VALUES (200008, 45793);
INSERT INTO npc_vendor (entry, item) VALUES (200008, 45794);
INSERT INTO npc_vendor (entry, item) VALUES (200008, 45795);
INSERT INTO npc_vendor (entry, item) VALUES (200008, 45797);
INSERT INTO npc_vendor (entry, item) VALUES (200008, 49084);

-- =================================================
-- Glyph Vendor - Priest
-- =================================================

DELETE FROM creature_template WHERE entry=200009;
DELETE FROM creature_template_model WHERE CreatureID=200009;
DELETE FROM creature WHERE id1=200009;
DELETE FROM npc_vendor WHERE entry=200009;

-- Insert into creature_template
INSERT INTO creature_template (name, subname, IconName, minlevel, maxlevel, faction, npcflag, entry, speed_walk, speed_run, scale, DamageModifier, unit_class, HealthModifier, ManaModifier, ArmorModifier, RegenHealth, VerifiedBuild)
VALUES ("Zipp Gearwrench", "Inkwell Cartel", "Buy", 40, 40, 475, 4225, 200009, 1, 1.14286, 1, 1, 1, 1, 1, 1, 1, 1);

-- Insert into creature_template_model
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability)
VALUES (200009, 0, 7164, 1, 1);

INSERT INTO npc_vendor (entry, item) VALUES (200009, 42396);
INSERT INTO npc_vendor (entry, item) VALUES (200009, 42397);
INSERT INTO npc_vendor (entry, item) VALUES (200009, 42398);
INSERT INTO npc_vendor (entry, item) VALUES (200009, 42399);
INSERT INTO npc_vendor (entry, item) VALUES (200009, 42400);
INSERT INTO npc_vendor (entry, item) VALUES (200009, 42401);
INSERT INTO npc_vendor (entry, item) VALUES (200009, 42402);
INSERT INTO npc_vendor (entry, item) VALUES (200009, 42403);
INSERT INTO npc_vendor (entry, item) VALUES (200009, 42404);
INSERT INTO npc_vendor (entry, item) VALUES (200009, 42405);
INSERT INTO npc_vendor (entry, item) VALUES (200009, 42406);
INSERT INTO npc_vendor (entry, item) VALUES (200009, 42407);
INSERT INTO npc_vendor (entry, item) VALUES (200009, 42408);
INSERT INTO npc_vendor (entry, item) VALUES (200009, 42409);
INSERT INTO npc_vendor (entry, item) VALUES (200009, 42410);
INSERT INTO npc_vendor (entry, item) VALUES (200009, 42411);
INSERT INTO npc_vendor (entry, item) VALUES (200009, 42412);
INSERT INTO npc_vendor (entry, item) VALUES (200009, 42414);
INSERT INTO npc_vendor (entry, item) VALUES (200009, 42415);
INSERT INTO npc_vendor (entry, item) VALUES (200009, 42416);
INSERT INTO npc_vendor (entry, item) VALUES (200009, 42417);
INSERT INTO npc_vendor (entry, item) VALUES (200009, 43342);
INSERT INTO npc_vendor (entry, item) VALUES (200009, 43370);
INSERT INTO npc_vendor (entry, item) VALUES (200009, 43371);
INSERT INTO npc_vendor (entry, item) VALUES (200009, 43372);
INSERT INTO npc_vendor (entry, item) VALUES (200009, 43373);
INSERT INTO npc_vendor (entry, item) VALUES (200009, 43374);
INSERT INTO npc_vendor (entry, item) VALUES (200009, 45753);
INSERT INTO npc_vendor (entry, item) VALUES (200009, 45755);
INSERT INTO npc_vendor (entry, item) VALUES (200009, 45756);
INSERT INTO npc_vendor (entry, item) VALUES (200009, 45757);
INSERT INTO npc_vendor (entry, item) VALUES (200009, 45758);
INSERT INTO npc_vendor (entry, item) VALUES (200009, 45760);

-- place glyph vendors in Gadgetzan
INSERT INTO `creature` (`id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(200007, 0, 0, 1, 0, 0, 1, 1, 0, -7237.65, -3796.53, -1.12499, 5.99672, 300, 0, 0, 2614, 0, 0, 0, 0, 0, '', NULL),
(200004, 0, 0, 1, 0, 0, 1, 1, 0, -7238.21, -3810.7, -1.12405, 0.648164, 300, 0, 0, 2614, 0, 0, 0, 0, 0, '', NULL),
(200008, 0, 0, 1, 0, 0, 1, 1, 0, -7218.75, -3811.8, -1.12598, 2.55906, 300, 0, 0, 2614, 0, 0, 0, 0, 0, '', NULL),
(200000, 0, 0, 1, 0, 0, 1, 1, 0, -7218.66, -3795.85, -1.12574, 3.76229, 300, 0, 0, 2614, 0, 0, 0, 0, 0, '', NULL),
(200005, 0, 0, 1, 0, 0, 1, 1, 0, -7225.75, -3792.8, 0.760523, 5.2569, 300, 0, 0, 2614, 0, 0, 0, 0, 0, '', NULL),
(200002, 0, 0, 1, 0, 0, 1, 1, 0, -7222.31, -3793.67, 0.760935, 4.01362, 300, 0, 0, 2614, 0, 0, 0, 0, 0, '', NULL),
(200009, 0, 0, 1, 0, 0, 1, 1, 0, -7233.97, -3814.19, 0.760343, 0.74571, 300, 0, 0, 2614, 0, 0, 0, 0, 0, '', NULL),
(200003, 0, 0, 1, 0, 0, 1, 1, 0, -7233.61, -3792.97, 0.759746, 5.54866, 300, 0, 0, 2614, 0, 0, 0, 0, 0, '', NULL),
(200010, 0, 0, 1, 0, 0, 1, 1, 0, -7222.84, -3813.71, 0.759794, 2.2901, 300, 0, 0, 2614, 0, 0, 0, 0, 0, '', NULL),
(200006, 0, 0, 1, 0, 0, 1, 1, 0, -7226.03, -3814.59, 0.761188, 1.42316, 300, 0, 0, 2614, 0, 0, 0, 0, 0, '', NULL);

-- make vendor prices half of required level in gold
UPDATE item_template
SET BuyPrice = (RequiredLevel / 2) * 100 * 100
WHERE entry IN (
'43533', '43534', '43535', '43536', '43537', '43538', '43539', '43541', '43542', '43543', '43544', '43545', '43546', '43547', '43548', '43549', '43550', '43551', '43552', '43553', '43554', '43671', '43672', '43673', '43825', '43826', '43827', '45799', '45800', '45803', '45804', '45805', '45806', '40896', '40897', '40899', '40900', '40901', '40902', '40903', '40906', '40908', '40909', '40912', '40913', '40914', '40915', '40916', '40919', '40920', '40921', '40922', '40923', '40924', '43316', '43331', '43332', '43334', '43335', '43674', '44922', '44928', '45601', '45602', '45603', '45604', '45622', '45623', '46372', '48720', '50125', '42897', '42898', '42899', '42900', '42901', '42902', '42903', '42904', '42905', '42906', '42907', '42908', '42909', '42910', '42911', '42912', '42913', '42914', '42915', '42916', '42917', '43338', '43350', '43351', '43354', '43355', '43356', '45625', '45731', '45732', '45733', '45734', '45735', '42734', '42735', '42736', '42737', '42738', '42739', '42740', '42741', '42742', '42743', '42744', '42745', '42746', '42747', '42748', '42749', '42750', '42751', '42752', '42753', '42754', '43339', '43357', '43359', '43360', '43361', '43364', '44684', '44920', '44955', '45736', '45737', '45738', '45739', '45740', '50045', '41092', '41094', '41095', '41096', '41097', '41098', '41099', '41100', '41101', '41102', '41103', '41104', '41105', '41106', '41107', '41108', '41109', '41110', '43340', '43365', '43366', '43367', '43368', '43369', '43867', '43868', '43869', '45741', '45742', '45743', '45744', '45745', '45746', '45747', '42954', '42955', '42956', '42957', '42958', '42959', '42960', '42961', '42962', '42963', '42964', '42965', '42966', '42967', '42968', '42969', '42970', '42971', '42972', '42973', '42974', '43343', '43376', '43377', '43378', '43379', '43380', '45761', '45762', '45764', '45766', '45767', '45768', '45769', '41517', '41518', '41524', '41526', '41527', '41529', '41530', '41531', '41532', '41533', '41534', '41535', '41536', '41537', '41538', '41539', '41540', '41541', '41542', '41547', '41552', '43344', '43381', '43385', '43386', '43388', '43725', '44923', '45770', '45771', '45772', '45775', '45776', '45777', '45778', '42453', '42454', '42455', '42456', '42457', '42458', '42459', '42460', '42461', '42462', '42463', '42464', '42465', '42466', '42467', '42468', '42469', '42470', '42471', '42472', '42473', '43389', '43390', '43391', '43392', '43393', '43394', '45779', '45780', '45781', '45782', '45783', '45785', '45789', '50077', '43395', '43396', '43397', '43398', '43399', '43400', '43412', '43413', '43414', '43415', '43416', '43417', '43418', '43419', '43420', '43421', '43422', '43423', '43424', '43425', '43426', '43427', '43428', '43429', '43430', '43431', '43432', '45790', '45792', '45793', '45794', '45795', '45797', '49084', '42396', '42397', '42398', '42399', '42400', '42401', '42402', '42403', '42404', '42405', '42406', '42407', '42408', '42409', '42410', '42411', '42412', '42414', '42415', '42416', '42417', '43342', '43370', '43371', '43372', '43373', '43374', '45753', '45755', '45756', '45757', '45758', '45760'
);