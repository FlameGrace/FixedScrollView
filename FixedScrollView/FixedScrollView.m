//
//  FixedScrollView.m
//  leapmotor
//
//  Created by Flame Grace on 2017/4/14.
//  Copyright © 2017年 com.flamegrace. All rights reserved.
//

#import "FixedScrollView.h"

@interface FixedScrollView()


@property (strong, nonatomic) NSMutableDictionary *fixedDic;


@end

@implementation FixedScrollView


- (void)layoutSubviews
{
    [super layoutSubviews];
    for (NSNumber *viewTag in self.fixedDic.allKeys) {
        UIView *view = [self viewWithTag:viewTag.integerValue];
        if(view)
        {
            NSString *offsetString = [self.fixedDic objectForKey:viewTag];
            CGPoint offset = CGPointFromString(offsetString);
            CGRect rect = view.frame;
            rect.origin.x = offset.x + self.contentOffset.x;
            rect.origin.y = offset.y + self.contentOffset.y;
            view.frame = rect;
        }
    }
}

- (void)registerFixedSubViewTag:(NSInteger)viewTag offset:(CGPoint)offset
{
    NSString *offsetString =  NSStringFromCGPoint(offset);
    [self.fixedDic setObject:offsetString forKey:[NSNumber numberWithInteger:viewTag]];
    
}

- (void)registerFixedSubViewTag:(NSInteger)viewTag
{
    UIView *view = [self viewWithTag:viewTag];
    if(view)
    {
        [self registerFixedSubViewTag:viewTag offset:view.frame.origin];
    }
    
}

- (NSMutableDictionary *)fixedDic
{
    if(!_fixedDic)
    {
        _fixedDic = [[NSMutableDictionary alloc]init];
    }
    return _fixedDic;
}



@end
