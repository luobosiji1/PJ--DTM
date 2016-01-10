//
//  NSObject+Extension.h
//  字典转模型
//
//  Created by PJ on 15/12/30.
//  Copyright © 2015年 PJ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Extension)

-(void)setDict:(NSDictionary *)dict;
+(instancetype)objectWithDict:(NSDictionary *)dict;
@end
