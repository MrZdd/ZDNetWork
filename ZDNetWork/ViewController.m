//
//  ViewController.m
//  ZDNetWork
//
//  Created by Macbook on 2017/9/28.
//  Copyright © 2017年 Macbook. All rights reserved.
//

#import "ViewController.h"

#import "NJAFNetworking.h"

@interface ViewController ()

@end


#define guanggaourl @"https://u.api.kkpbcdn.com/v30/consume.php?action=guanggaoa"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self connectTest];
}

- (void)connectTest {
    [NJAFNetworking postWithUrl:guanggaourl refreshCache:YES params:[NSDictionary dictionaryWithObjectsAndKeys:@"3",@"seat", nil] progress:nil success:^(NJServerRequestsStatus status, NJAFNetworkReachabilityStatus reachability, id response) {
        NSLog(@"status->%ld, reachability->%ld, response->%@", status, reachability, response);
    } fail:^(NJServerRequestsStatus status, NJAFNetworkReachabilityStatus reachability,id response, NSError *error) {
        NSLog(@"status->%ld, reachability->%ld, response->%@, error->%@", status, reachability, response, error);
    }];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self connectTest];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
