//
//  WXMQTTManager.h
//  UWeer
//
//  Created by 陈波涛 on 16/3/25.
//  Copyright © 2016年 weixun. All rights reserved.
//

#import <MQTTKit/MQTTKit.h>

//MQTT客户端管理者
@interface WXMQTTManager : MQTTClient


+ (instancetype)sharedMQTTClientManasger;

@end
