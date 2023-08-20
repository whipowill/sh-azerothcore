# increase size of auction items
UPDATE mod_auctionhousebot SET minitems=10000, maxitems=20000;

# only set stacks of 1
UPDATE mod_auctionhousebot SET maxstackgrey=1, maxstackwhite=1, maxstackgreen=1, maxstackblue=1, maxstackpurple=1, maxstackorange=1, maxstackyellow=1;