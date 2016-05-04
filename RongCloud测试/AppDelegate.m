//
//  AppDelegate.m
//  RongCloud测试
//
//  Created by Candice on 16/4/26.
//  Copyright © 2016年 Candice. All rights reserved.
//

#import "AppDelegate.h"

#import <RongIMKit/RongIMKit.h>

#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    ViewController *controller = [[ViewController alloc]init];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:controller];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = nav;
    
    [[RCIM sharedRCIM] initWithAppKey:@"vnroth0kri6bo"];
    
    //连接服务器
    [[RCIM sharedRCIM] connectWithToken:@"yEZr2ZqNhI2O/JtoIVZmpnsY0Yk0E3oqnn+kA+b0rtkMl7FAlTlfP28LTHCZX+Pg0ntjidoYvAEY0SHYVD+8/NAO1YTH9vdPkV05yQwhevQ="
                                success:^(NSString *userId){
                                      NSLog(@"登陆成功。当前登录的用户ID：%@",userId);
                                }error:^(RCConnectErrorCode  status){
                                      NSLog(@"登陆的错误码为:%ld",(long)status);
                                } tokenIncorrect:^{
                                       NSLog(@"token错误");
}];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
