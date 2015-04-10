//
//  Zombie.h
//  PlantVSZombie
//
//  Created by qingyun on 15-1-20.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "PVZObejct.h"

@class ZombieEquip;

@interface Zombie : PVZObejct
{
    ZombieEquip *_equip;
}

- (void)setEquip:(ZombieEquip *)equip;
- (ZombieEquip *)equip;

@end
