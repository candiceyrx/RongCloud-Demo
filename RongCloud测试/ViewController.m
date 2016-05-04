//
//  ViewController.m
//  RongCloud测试
//
//  Created by Candice on 16/4/26.
//  Copyright © 2016年 Candice. All rights reserved.
//

#import "ViewController.h"

#import <RongIMKit/RongIMKit.h>

@interface ViewController ()

- (void)pushIntoConversation;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(120, 200, 100, 100);
    button.backgroundColor = [UIColor redColor];
    button.titleLabel.text = @"进入会话";
    [button addTarget:self action:@selector(pushIntoConversation) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)pushIntoConversation{
    RCConversationViewController *chat = [[RCConversationViewController alloc]init];
    chat.conversationType = ConversationType_PRIVATE;
    chat.targetId = @"targetIdYouWillChatIn";
    chat.title = @"想显示的会话标题";
    [self.navigationController pushViewController:chat animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
