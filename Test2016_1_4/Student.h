//
//  Student.h
//  Test2016_1_4
//
//  Created by Lym on 16/1/5.
//  Copyright © 2016年 Lym. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
@property(nonatomic,copy)NSString* Name;   //各种属性
@property(nonatomic,assign)int Chinese;
@property(nonatomic,assign)int Math;
@property(nonatomic,assign)int English;
@property(nonatomic,assign)int Add;

-(id)initWithName:(NSString*)name Chinese:(int)chinese Math:(int)math English:(int)english Add:(int)add;
@end
