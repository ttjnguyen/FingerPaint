//
//  DrawingViewView.m
//  FingerPaint
//
//  Created by Jenny Nguyen on 2016-11-11.
//  Copyright © 2016 LightHouseLabs. All rights reserved.
//

#import "DrawingViewView.h"

@implementation DrawingViewView

-(void)drawRect:(CGRect)rect {
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    for (NSArray *listOfPoints in self.listOfLines) {
        for (int i = 0; i < listOfPoints.count; ++i) {
            
            NSValue *pointValue = listOfPoints[i];
            CGPoint point = [pointValue CGPointValue];
            
            if (i == 0) {
                [path moveToPoint:point];
            } else {
                [path addLineToPoint:point];
            }
        }
    }
    [[UIColor orangeColor] setStroke];
    [path setLineWidth:3.0];
    [path stroke];
}

@end
