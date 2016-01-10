//
//  NSObject+Extension.m
//  字典转模型
//
//  Created by PJ on 15/12/30.
//  Copyright © 2015年 PJ. All rights reserved.
//

#import "NSObject+Extension.h"
#import <objc/runtime.h>


@implementation NSObject (Extension)

-(void)setDict:(NSDictionary *)dict{



        unsigned int outCount = 0;

        Ivar *ivars = class_copyIvarList([self class], &outCount);

        for ( int i=0; i<outCount; i++) {

            const char *name = ivar_getName(ivars[i]);

            NSString *key =[NSString stringWithUTF8String:name];

            key = [key substringFromIndex:1];

            id value = dict[key];

            const char *typeName = ivar_getTypeEncoding(ivars[i]);
            
            NSString *type = [NSString stringWithUTF8String:typeName];


            if ([type containsString:@"@"]) {

                type = [type substringWithRange:NSMakeRange(2, type.length-3)];


                if (![type hasPrefix:@"NS"]) {

                    Class class = NSClassFromString(type);

                    value = [class objectWithDict:value];

                }

            }

            [self setValue:value forKey:key];

        }
    }

+(instancetype)objectWithDict:(NSDictionary *)dict{

    id obj = [[self alloc]init];
    [obj setDict:dict];
    
    return obj;

}



@end
