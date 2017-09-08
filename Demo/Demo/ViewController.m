//
//  ViewController.m
//  Demo
//
//  Created by Flame Grace on 2017/9/7.
//  Copyright © 2017年 com.flamegrace. All rights reserved.
//

#import "ViewController.h"
#import "FixedScrollView.h"

@interface ViewController ()

@property (strong, nonatomic) FixedScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.scrollView = [[FixedScrollView alloc]initWithFrame:CGRectMake(0, 0, 375, 667)];
    [self.view addSubview:self.scrollView];
    self.scrollView.contentSize = CGSizeMake(375*2, 0);
    self.scrollView.pagingEnabled = YES;
    self.scrollView.bounces = NO;
    
    UIView *page1 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 375, 667)];
    page1.backgroundColor = [UIColor blueColor];
    [self.scrollView addSubview:page1];
    
    UIView *page2 = [[UIView alloc]initWithFrame:CGRectMake(375, 0, 375, 667)];
    page2.backgroundColor = [UIColor greenColor];
    [self.scrollView addSubview:page2];
    self.scrollView.contentOffset = CGPointMake(0, 0);
    
    UILabel *label = [self label:@"雷打不动"];
    label.tag = 888;
    label.frame = CGRectMake(20, 100, 100, 30);
    [self.scrollView addSubview:label];
    [self.scrollView registerFixedSubViewTag:888];
    
    UILabel *label2 = [self label:@"动一动更健康"];
    label2.tag = 889;
    label2.frame = CGRectMake(20, 300, 150, 30);
    [self.scrollView addSubview:label2];
    [self.scrollView registerFixedSubViewTag:889];
    
    UILabel *label3 = [self label:@"动一动更健康"];
    label3.tag = 890;
    label3.frame = CGRectMake(20, 300, 150, 30);
    [self.scrollView addSubview:label3];
    [self.scrollView registerFixedSubViewTag:890 offset:CGPointMake(20, 200)];
    
    
    
    
}


- (UILabel *)label:(NSString *)title
{
    UILabel *label = [[UILabel alloc]init];
    label.text = title;
    label.font = [UIFont systemFontOfSize:17];
    label.backgroundColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor redColor];
    return label;
}


@end
