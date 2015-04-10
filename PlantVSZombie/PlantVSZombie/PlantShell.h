//
//  PlantShell.h
//  PlantVSZombie
//
//  Created by qingyun on 15-1-20.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlantShell : NSObject
{
    int _power;
}

- (void)setPower:(int)power;
- (int)power;

@end
