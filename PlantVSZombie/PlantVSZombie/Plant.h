//
//  Plant.h
//  PlantVSZombie
//
//  Created by qingyun on 15-1-20.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "PVZObejct.h"

@class PlantShell;
@class Zombie;

@interface Plant : PVZObejct
{
    PlantShell *_shell;
}

- (void)setShell:(PlantShell *)shell;
- (PlantShell *)shell;

- (int)power;

- (Zombie *)attack:(Zombie *)zombie;

@end
