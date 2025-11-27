/// @description press "G" to grow the crops byy a day

if (instance_exists(obj_crop)) {
	with (obj_crop) {  //this loops through all of the obj_crop's that exist
		if (daysOld < totalDaysToGrow) {
			daysOld += 1;
			
			//set crop to be in the first growth stage the next day
			var firstGrowth = 0;
			if (daysOld > 0) { firstGrowth = 1; }
			
			growthStage = firstGrowth + daysOld div growthStageDuration;
			
			//dont allow maxGrowthStage unless it's the correct number of days old
			if (growthStage >= maxGrowthStage and daysOld < totalDaysToGrow) { growthStage = maxGrowthStage - 1; }
			
			
			//sometimes growthStage will go over maxGrowthStage, need to fix this
			if (growthStage > maxGrowthStage) { growthStage = maxGrowthStage; }
			
		} else {
			growthStage = maxGrowthStage;
			fullyGrown = true;
		}
	}
}




