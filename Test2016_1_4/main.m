//
//  main.m
//  Test2016_1_4
//
//  Created by Lym on 16/1/4.
//  Copyright © 2016年 Lym. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Teacher.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Teacher *teacher1=[[Teacher alloc]init];
        Student *A=[[Student alloc]initWithName:@"Lym" Chinese:100 Math:80 English:90 Add:0];  //新建5个学生
        Student *B=[[Student alloc]initWithName:@"Lym" Chinese:85 Math:80 English:90 Add:0];
        Student *C=[[Student alloc]initWithName:@"Lym" Chinese:90 Math:95 English:88 Add:0];
        Student *D=[[Student alloc]initWithName:@"Lym" Chinese:100 Math:80 English:70 Add:0];
        Student *E=[[Student alloc]initWithName:@"Lym" Chinese:100 Math:95 English:60 Add:0];
        
        int f1=[teacher1 addScore:A :^int(Student *s)   //给他们各自加分
                {
                    return 5;
                }];
        int f2=[teacher1 addScore:A :^int(Student *s)
                {
                    return 0;
                }];
        int f3=[teacher1 addScore:A :^int(Student *s)
                {
                    return 2;
                }];
        int f4=[teacher1 addScore:A :^int(Student *s)
                {
                    return 5;
                }];
        int f5=[teacher1 addScore:A :^int(Student *s)
                {
                    return 3;
                }];
        [A setAdd:f1];   //或者A.Add=f1;
        [B setAdd:f2];
        [C setAdd:f3];
        [D setAdd:f4];
        [E setAdd:f5];
        
        NSMutableArray *stu=[[NSMutableArray alloc]initWithCapacity:5];  //把它们构造成数组
        [stu addObject:A];
        [stu addObject:B];
        [stu addObject:C];
        [stu addObject:D];
        [stu addObject:E];
        NSArray *result;                  //排序
        result=[stu sortedArrayUsingComparator:^NSComparisonResult (id obj1,id obj2){
            Student *pi=obj1;
            Student *pj=obj2;
            NSNumber *num1=[NSNumber numberWithInt:[pi Chinese]+[pi Math]+[pi English]+[pi Add]];
            NSNumber *num2=[NSNumber numberWithInt:[pj Chinese]+[pj Math]+[pj English]+[pj Add]];
            return [num1 compare: num2];
        }];
        NSLog(@"%@",result);
    }
    return 0;
}
