//
//  Student.m
//  Test2016_1_4
//
//  Created by Lym on 16/1/5.
//  Copyright © 2016年 Lym. All rights reserved.
//

#import "Student.h"

@implementation Student
@synthesize Name=_Name,Chinese=_Chinese,Math=_Math,English=_English,Add=_Add;
-(id)initWithName:(NSString*)name Chinese:(int)chinese Math:(int)math English:(int)english Add:(int)add  //初始化
{
    if(self=[super init])
    {
        self.Name=name;
        self.Chinese=chinese;
        self.Math=math;
        self.English=english;
    }
    return self;
}
-(NSString*)description            //描述
{
    NSString *format=[NSString stringWithFormat:@"<%@:%p>,Chinese=%d Math=%d English=%d Add=%d",[self class],self,self.Chinese,self.Math,self.English,self.Add];
    return format;
}
@end
