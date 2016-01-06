//
//  Teacher.h
//  Test2016_1_4
//
//  Created by Lym on 16/1/5.
//  Copyright © 2016年 Lym. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
@interface Teacher : NSObject
-(int)addScore:(Student *)ss :(int (^)(Student*s))block;  //块
@end
