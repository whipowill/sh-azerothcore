-- only fix legacy vendor epic items
SET @vendor_entries = '12784,12785,12794,12795';

-- the flaw here is limiting the increases to only the legacy vendors
-- might be pvp vendors selling epic items that this doesn't catch

-- 542 (15k) to 2569 (60k)
UPDATE npc_vendor nv JOIN item_template it ON nv.item = it.entry
SET nv.ExtendedCost = 542
WHERE FIND_IN_SET(nv.entry, @vendor_entries) > 0
AND nv.ExtendedCost = 2569
AND it.Quality = 4;

-- 463 (15k) to 2569 (60k)
UPDATE npc_vendor nv JOIN item_template it ON nv.item = it.entry
SET nv.ExtendedCost = 463
WHERE FIND_IN_SET(nv.entry, @vendor_entries) > 0
AND nv.ExtendedCost = 2569
AND it.Quality = 4;

-- 464 (15k) to 2569 (60k)
UPDATE npc_vendor nv JOIN item_template it ON nv.item = it.entry
SET nv.ExtendedCost = 464
WHERE FIND_IN_SET(nv.entry, @vendor_entries) > 0
AND nv.ExtendedCost = 2569
AND it.Quality = 4;

-- 2257 (25k) to 2570 (50k)
UPDATE npc_vendor nv JOIN item_template it ON nv.item = it.entry
SET nv.ExtendedCost = 2257
WHERE FIND_IN_SET(nv.entry, @vendor_entries) > 0
AND nv.ExtendedCost = 2570
AND it.Quality = 4;

-- 2291 (13k) to 2257 (25k)
UPDATE npc_vendor nv JOIN item_template it ON nv.item = it.entry
SET nv.ExtendedCost = 2291
WHERE FIND_IN_SET(nv.entry, @vendor_entries) > 0
AND nv.ExtendedCost = 2257
AND it.Quality = 4;

-- 541 (9k) to 2427 (36k)
UPDATE npc_vendor nv JOIN item_template it ON nv.item = it.entry
SET nv.ExtendedCost = 541
WHERE FIND_IN_SET(nv.entry, @vendor_entries) > 0
AND nv.ExtendedCost = 2427
AND it.Quality = 4;

-- 465 (9k) to 2427 (36k)
UPDATE npc_vendor nv JOIN item_template it ON nv.item = it.entry
SET nv.ExtendedCost = 465
WHERE FIND_IN_SET(nv.entry, @vendor_entries) > 0
AND nv.ExtendedCost = 2427
AND it.Quality = 4;

-- 444 (5k) to 2254 (20k)
UPDATE npc_vendor nv JOIN item_template it ON nv.item = it.entry
SET nv.ExtendedCost = 444
WHERE FIND_IN_SET(nv.entry, @vendor_entries) > 0
AND nv.ExtendedCost = 2254
AND it.Quality = 4;

-- 427 (3k) to 2248 (12k)
UPDATE npc_vendor nv JOIN item_template it ON nv.item = it.entry
SET nv.ExtendedCost = 427
WHERE FIND_IN_SET(nv.entry, @vendor_entries) > 0
AND nv.ExtendedCost = 2248
AND it.Quality = 4;

-- 428 (3k) to 2248 (12k)
UPDATE npc_vendor nv JOIN item_template it ON nv.item = it.entry
SET nv.ExtendedCost = 428
WHERE FIND_IN_SET(nv.entry, @vendor_entries) > 0
AND nv.ExtendedCost = 2248
AND it.Quality = 4;
