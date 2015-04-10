//
//  PVZObejct.h
//  PlantVSZombie
//
//  Created by qingyun on 15-1-20.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PVZObejct : NSObject
{
    NSString *_name;
    int _life;
}

- (void)setName:(NSString *)name;
- (NSString *)name;

- (void)setLife:(int)life;
- (int)life;

- (BOOL)isDead;
@end
