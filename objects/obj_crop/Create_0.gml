/// @description

//dimensions of each frame on the spritesheet
frameWidth = 16;
frameHeight = 32;

//this is just the crop ROW on the spritesheet: 
// 0=parsip, 1=cauliflower, 2=beet, 3=greenbean, 4=potato, 5=kale, 6=corn
cropType  = 0; 

daysOld = 0;
growthStage = 0;

//this is the number of days until the next growth stage
growthStageDuration = 0;

//this won't work for my version becacuse not all of the crops fill the whole row on the spritesheet
//might have to set this for each crop
//maxGrowthStage = (sprite_get_width(spr_crops)/frameWidth)-1;
maxGrowthStage = 0;



fullyGrown = false;

//not used in my version
//sparkle = false;

xx = x - (frameWidth/2);
yy = y - frameHeight + 7;

