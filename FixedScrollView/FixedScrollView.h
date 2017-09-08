//
//  FixedScrollView.h
//  leapmotor
//
//  Created by Flame Grace on 2017/4/14.
//  Copyright © 2017年 com.flamegrace. All rights reserved.
//  可以指定UIScrollView的子视图固定不动

#import <UIKit/UIKit.h>


@interface FixedScrollView : UIScrollView


/**
 添加需要固定不动的子视图

 @param viewTag 子视图的tag
 @param offset 基于原位置的偏移
 */
- (void)registerFixedSubViewTag:(NSInteger)viewTag offset:(CGPoint)offset;
/**
 添加需要固定不动的子视图
  */
- (void)registerFixedSubViewTag:(NSInteger)viewTag;

@end
