//
//  OJLoadAnimation.m
//  animation21131
//
//  Created by OneJ on 2017/4/6.
//  Copyright © 2017年 Onej. All rights reserved.
//

#import "OJLoadAnimation.h"

@interface OJLoadAnimation()
@property(nonatomic,strong)   NSTimer *timer;
@property(weak ,nonatomic) UIView *view1;
@property(weak ,nonatomic) UIView *view2;
@property(weak ,nonatomic) UIView *view3;
@property(weak ,nonatomic) UIView *view4;
@end

@implementation OJLoadAnimation

-(instancetype)initWithFrame:(CGRect)frame {
    if (self=[super initWithFrame:frame]) {
        if (_loadWH) {
            
        }else {
            _loadWH = 20;
        }
        
        if (_removeXY) {
            
        }else {
            _removeXY = 20;
        }
        
        self.timer =  [NSTimer scheduledTimerWithTimeInterval:1.7 target:self selector:@selector(function) userInfo:nil repeats:YES];
        
        
        UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(self.bounds.size.width/2 - 10,self.bounds.size.height/2 -10 , _loadWH, _loadWH)];
        view1.backgroundColor = [UIColor redColor];
        view1.layer.cornerRadius = _loadWH*.5;
        self.view1 = view1;
        [self addSubview:view1];
        
        UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(self.bounds.size.width/2 -10,self.bounds.size.height/2-10 , _loadWH, _loadWH)];
        view2.backgroundColor = [UIColor redColor];
        view2.layer.cornerRadius = _loadWH*.5;
        self.view2 = view2;
        [self addSubview:view2];
        
        UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(self.bounds.size.width/2-10,self.bounds.size.height/2-10 , _loadWH, _loadWH)];
        view3.backgroundColor = [UIColor redColor];
        view3.layer.cornerRadius = _loadWH*.5;
        self.view3 = view3;
        [self addSubview:view3];
        
        UIView *view4 = [[UIView alloc]initWithFrame:CGRectMake(self.bounds.size.width/2-10,self.bounds.size.height/2-10 , _loadWH, _loadWH)];
        view4.backgroundColor = [UIColor redColor];
        view4.layer.cornerRadius = _loadWH*.5;
        self.view4 = view4;
        [self addSubview:view4];
    }
    return self;
}

-(void)statAnimation{
    [self function];
}

-(void)function{
    [UIView animateWithDuration:0.35 animations:^{
        self.view1.center = CGPointMake(self.view1.center.x-_removeXY, self.view1.center.y-_removeXY);
        self.view2.center = CGPointMake(self.view2.center.x-_removeXY, self.view2.center.y+_removeXY);
        self.view3.center = CGPointMake(self.view3.center.x+_removeXY, self.view3.center.y-_removeXY);
        self.view4.center = CGPointMake(self.view4.center.x+_removeXY, self.view4.center.y+_removeXY);
    } completion:^(BOOL finished) {
        [self rotationAnimation];
        [UIView animateWithDuration:.35 delay:1 options:0 animations:^{
            self.view1.center = CGPointMake(self.bounds.size.width/2,self.bounds.size.height/2);
            self.view2.center = CGPointMake(self.bounds.size.width/2,self.bounds.size.height/2);
            self.view3.center = CGPointMake(self.bounds.size.width/2,self.bounds.size.height/2);
            self.view4.center = CGPointMake(self.bounds.size.width/2,self.bounds.size.height/2);
            
        } completion:^(BOOL finished) {
            
        }];
        
    }];
    
}

-(void)rotationAnimation {
    
    CABasicAnimation* rotationAnimation;
    rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    rotationAnimation.toValue = [NSNumber numberWithFloat: M_PI * 3.0];
    rotationAnimation.duration = 1.2;
    //    rotationAnimation.cumulative = YES;
    rotationAnimation.repeatCount = 1;
    rotationAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    
    [self.layer addAnimation:rotationAnimation forKey:@"rotationAnimation"];
    
    
}

-(void)removeAnimation{
    [self.timer invalidate];
    self.timer = nil;
    [self removeFromSuperview];
}

@end
