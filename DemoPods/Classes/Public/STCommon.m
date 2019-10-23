//
//  STCommon.m
//  DemoPods
//
//  Created by Tommy-mac on 2019/10/23.
//

#import "STCommon.h"

@implementation STCommon

+ (UIColor *)randomColor
{
    CGFloat r = arc4random_uniform(256) / 255.0;
    CGFloat g = arc4random_uniform(256) / 255.0;
    CGFloat b = arc4random_uniform(256) / 255.0;
    
    return [UIColor colorWithRed:r green:g blue:b alpha:1];
}

@end
