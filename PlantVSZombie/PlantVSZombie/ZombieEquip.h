//
//  ZombieEquip.h
//  PlantVSZombie
//
//  Created by qingyun on 15-1-20.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZombieEquip : NSObject
{
    int _defense;
}

- (void)setDefense:(int)defense;
- (int)defense;

@end
