//
//  OpenChatQQHelper.m
//  OpenQQ_Demo
//
//  Created by admin on 2017/2/6.
//  Copyright © 2017年 AlezJi. All rights reserved.
//

#import "OpenChatQQHelper.h"

@implementation OpenChatQQHelper

+(BOOL)isHaveQQ
{
    return [[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"mqq://"]];
}
+(void)chatWithQQ:(NSString *)QQ
{
    NSString *url = [NSString stringWithFormat:@"mqq://im/chat?chat_type=wpa&uin=%@&version=1&src_type=web",QQ];
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url]];
}

@end
