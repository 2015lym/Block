//
//  Teacher.m
//  Test2016_1_4
//
//  Created by Lym on 16/1/5.
//  Copyright © 2016年 Lym. All rights reserved.
//

#import "Teacher.h"

@implementation Teacher
-(int)addScore:(Student *)ss :(int (^)(Student*s))block
{
    return block(ss)+3;
}
@end
