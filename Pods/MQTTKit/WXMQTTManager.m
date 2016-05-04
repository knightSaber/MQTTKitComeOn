//
//  WXMQTTManager.m
//  UWeer
//
//  Created by 陈波涛 on 16/3/25.
//  Copyright © 2016年 weixun. All rights reserved.
//

#import "WXMQTTManager.h"

@implementation WXMQTTManager


#pragma -mark创建MQTT客户端管理者单例
+(instancetype)sharedMQTTClientManasger
{
    static id _instance;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        NSString *clientID = [UIDevice currentDevice].identifierForVendor.UUIDString;
        
        _instance = [[MQTTClient alloc] initWithClientId:clientID];
        
    });
    
    return _instance;
}


@end
