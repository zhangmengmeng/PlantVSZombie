//
//  main.m
//  PlantVSZombie
//
//  Created by qingyun on 15-1-20.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Plant.h"
#import "PlantShell.h"
#import "Zombie.h"
#import "ZombieEquip.h"

int main(int argc, const char * argv[])
{
    Plant *pea = [Plant new];
    [pea setName:@"豌豆射手"];
    [pea setLife:50];
    PlantShell *peaShell = [PlantShell new];
    [peaShell setPower:50];
    [pea setShell:peaShell];
    
    Zombie *normalZombie = [Zombie new];
    [normalZombie setName:@"普通僵尸"];
    [normalZombie setLife:200];
    ZombieEquip *equip = [ZombieEquip new];
    [equip setDefense:90];
    [normalZombie setEquip:equip];
    
    normalZombie = [pea attack:normalZombie];
    int count = 1;
    while ([normalZombie life] != 0) {
        count++;
        normalZombie = [pea attack:normalZombie];
    }
    
    if ([normalZombie isDead]) {
        NSLog(@"%@ 称收到%@ %d 次攻击，已经被干掉了", normalZombie, pea, count);
    } else {
        NSLog(@"%@ 称收到%@ %d 次攻击", normalZombie, pea, count);
    }
    
    return 0;
}

