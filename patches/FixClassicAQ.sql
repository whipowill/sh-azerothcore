-- Update both Vek'lor (15276) and Vek'nilash (15275) to remove all immunities
UPDATE `creature_template` SET 
    `mechanic_immune_mask` = 0,
    `spell_school_immune_mask` = 0,
    `flags_extra` = `flags_extra` & ~0x00000040  -- Remove CREATURE_FLAG_EXTRA_IMMUNE_TO_PC
WHERE `entry` IN (15276, 15275);

-- Additionally, remove any specific spell immunities if they exist
DELETE FROM `creature_template_resistance` WHERE `CreatureID` IN (15276, 15275);