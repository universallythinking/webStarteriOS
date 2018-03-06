//
//  ViewController.m
//  webstarter
//
//  Created by Benjamin Barnett on 3/6/18.
//  Copyright © 2018 Universally Thinking. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIWebView *wv;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadHTML];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) loadHTML {
    bool flag = true;
    NSURLRequest *urlReq;
    if (flag) {
        NSURL *url = [NSURL URLWithString:@"https://www.google.com/"];
        urlReq = [NSURLRequest requestWithURL:url];
    }
    else {
        NSBundle *mainBundle = [NSBundle mainBundle];
        NSURL *url = [mainBundle URLForResource:@"webAssets/index" withExtension:@"html"];
        urlReq = [NSURLRequest requestWithURL:url];
    }
    [_wv loadRequest:urlReq];
}

@end
