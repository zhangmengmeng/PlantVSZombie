//
//  Plant.m
//  PlantVSZombie
//
//  Created by qingyun on 15-1-20.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "Plant.h"
#import "PlantShell.h"
#import "Zombie.h"
#import "ZombieEquip.h"

@implementation Plant
- (void)setShell:(PlantShell *)shell
{
    _shell = shell;
}

- (PlantShell *)shell
{
    return _shell;
}

- (int)power
{
    return [_shell power];
}

- (Zombie *)attack:(Zombie *)zombie
{
    int result = 0;
    
    ZombieEquip *equip = [zombie equip];
    if (equip != nil) {
        if ([equip defense] > 0) {
            result = [equip defense] - [self power];
            if (result < 0) {
                NSLog(@"%@ 受到 %@ 的攻击>>>>装备被击碎", zombie, self);
                [equip setDefense:0];
                [zombie setEquip:equip];
            } else {
                NSLog(@"%@ 受到 %@ 的攻击>>>>装备防御减少%d", zombie, self, [self power]);
                [equip setDefense:result];
                [zombie setEquip:equip];
                return zombie;
            }
        }
    }
    
    if (result < 0){
        NSLog(@"%@ 受到 %@ 的攻击>>>>生命减少%d", zombie, self, -result);
        result = [zombie life] + result;
    } else if (result == 0) {
        NSLog(@"%@ 受到 %@ 的攻击>>>>生命减少%d", zombie, self, [self power]);
        result = [zombie life] - [self power];
    }
    
    if (result < 1) {
        [zombie setLife:0];
    } else {
        [zombie setLife:result];
    }

    return zombie;
}
@end
