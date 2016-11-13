//
//  ViewController.m
//  FingerPaint
//
//  Created by Jenny Nguyen on 2016-11-11.
//  Copyright © 2016 LightHouseLabs. All rights reserved.
//

#import "ViewController.h"
#import "DrawingViewView.h"

@interface ViewController ()
@property (nonatomic, strong) NSMutableArray *listOfLines;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Touches

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint touchPoint = [touch locationInView:self.view];
    
    NSMutableArray *line = [NSMutableArray array];
    [line addObject:[NSValue valueWithCGPoint:touchPoint]];
    [self.listOfLines addObject:line];
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint touchPoint = [touch locationInView:self.view];
    
    NSMutableArray *line = [self.listOfLines lastObject];
    [line addObject:[NSValue valueWithCGPoint:touchPoint]];
    
    ((DrawingViewView*)self.view).listOfLines = self.listOfLines;
    [self.view setNeedsDisplay];
    
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
}

-(void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
}

@end
