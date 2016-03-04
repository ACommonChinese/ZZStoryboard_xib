//
//  ViewController.m
//  TestReuse
//
//  Created by 刘威振 on 3/4/16.
//  Copyright © 2016 LiuWeiZhen. All rights reserved.
//

#import "ViewController.h"
#import "SubAViewController.h"
#import "SubBViewController.h"

#import "SubA2ViewController.h"
#import "SubB2ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)buttonClick:(id)sender {
    // 使用故事板，不能继承？
    // SubAViewController *controller = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:NSStringFromClass([BaseViewController class])];
    // [self.navigationController pushViewController:controller animated:YES];

    // 使用XIB，可以继承
    SubA2ViewController *controller = [[SubA2ViewController alloc] initWithNibName:NSStringFromClass([BaseViewController2 class]) bundle:nil];
    [self.navigationController pushViewController:controller animated:YES];
}

@end
