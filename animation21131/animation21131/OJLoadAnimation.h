//
//  OJLoadAnimation.h
//  animation21131
//
//  Created by OneJ on 2017/4/6.
//  Copyright © 2017年 Onej. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OJLoadAnimation : UIView


/**
 圆的宽高
 */
@property(assign,nonatomic) float loadWH;


/**
 扩散的XY大小
 */
@property(assign,nonatomic) float removeXY;


-(void)statAnimation;

-(void)removeAnimation;
@end
