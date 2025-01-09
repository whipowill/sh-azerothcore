-- Update both Vek'lor (15276) and Vek'nilash (15275) to remove all immunities
UPDATE `creature_template` SET 
    `mechanic_immune_mask` = 0,
    `spell_school_immune_mask` = 0,
    `flags_extra` = `flags_extra` & ~0x00000040  -- Remove CREATURE_FLAG_EXTRA_IMMUNE_TO_PC
WHERE `entry` IN (15276, 15275);

-- Additionally, remove any specific spell immunities if they exist
DELETE FROM `creature_template_resistance` WHERE `CreatureID` IN (15276, 15275);

-- The above works!

-- Remove Mortal Wound (25646) from Fankriss (15510), Gluth (15932), and Kurinnaxx (15348)
-- DELETE FROM `creature_template_spell`
-- WHERE `CreatureID` IN (15510, 15932, 15348)
-- AND `Spell` = 25646;

-- The above doesn't work, even though it should.  It's bc these spells
-- are hardcoded into the encounter scripts.
-- I ended up fixing in my mod: https://github.com/whipowill/wow-acore-mod-nerf-herder