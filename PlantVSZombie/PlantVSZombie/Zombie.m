//
//  Zombie.m
//  PlantVSZombie
//
//  Created by qingyun on 15-1-20.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "Zombie.h"

@implementation Zombie
- (void)setEquip:(ZombieEquip *)equip
{
    _equip = equip;
}

- (ZombieEquip *)equip
{
    return _equip;
}
@end
