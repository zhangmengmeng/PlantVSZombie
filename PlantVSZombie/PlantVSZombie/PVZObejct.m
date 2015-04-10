//
//  PVZObejct.m
//  PlantVSZombie
//
//  Created by qingyun on 15-1-20.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "PVZObejct.h"

@implementation PVZObejct
- (void)setName:(NSString *)name
{
    _name = name;
}

- (NSString *)name
{
    return _name;
}

- (void)setLife:(int)life
{
    _life = life;
}

- (int)life
{
    return _life;
}

- (BOOL)isDead
{
    if ([self life] < 1) {
        return YES;
    } else {
        return NO;
    }
}

- (NSString *)description
{
    return _name;
}

@end
