# patch quest reward armor and weapons to have required level
UPDATE item_template SET item_template.RequiredLevel=(SELECT MinLevel FROM quest_template WHERE (RewardItem1=item_template.entry OR RewardItem2=item_template.entry OR RewardItem3=item_template.entry OR RewardItem4=item_template.entry) OR (RewardChoiceItemID1=item_template.entry OR RewardChoiceItemID2=item_template.entry OR RewardChoiceItemID3=item_template.entry OR RewardChoiceItemID4=item_template.entry) ORDER BY MinLevel ASC LIMIT 1) WHERE bonding=1 AND class IN (2,4) AND RequiredLevel=0 AND EXISTS (SELECT MinLevel FROM quest_template WHERE (RewardItem1=item_template.entry OR RewardItem2=item_template.entry OR RewardItem3=item_template.entry OR RewardItem4=item_template.entry) OR (RewardChoiceItemID1=item_template.entry OR RewardChoiceItemID2=item_template.entry OR RewardChoiceItemID3=item_template.entry OR RewardChoiceItemID4=item_template.entry) ORDER BY MinLevel ASC LIMIT 1);
# https://www.azerothcore.org/wiki/quest_template#rewarditem1
# ^^ note that this query can take several minutes to run!

# remove soulbound limitations on armor and weapons
#UPDATE item_template SET bonding=0 WHERE class IN (2,4) AND bonding IN (1,2);

# remove soulbound from EVERYTHING
UPDATE item_template SET bonding=0 WHERE bonding IN (1,2);

# https://www.azerothcore.org/wiki/item_template#bonding
# NOTE THAT YOU MUST DELETE YOUR CACHE FOLDER FOR THIS TO SHOW PROPERLY

# delete Satchel of Helpful Goods (bc this circumvents lvl req) THIS COULD BE DONE BETTER
#DELETE FROM lfg_dungeon_rewards WHERE 1=1;