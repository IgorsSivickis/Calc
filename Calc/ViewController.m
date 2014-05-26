//
//  ViewController.m
//  Calc
//
//  Created by Igors.Sivickis on 5/23/14.
//  Copyright (c) 2014 Accenture. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

enum {OP_PLUS = 1001, OP_MINUS = 1002, OP_MULT = 1003, OP_DIV = 1004};

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clearAll:(id)sender {
    x=0;
    y=0;
    
    enterFlag = NO;
    yFlag = NO;
    
    [self calcScreen];
}

- (IBAction)inverseSign:(id)sender {
}

- (IBAction)digit:(id)sender {
    
    if (enterFlag){
        y=x;
        x=0;
        enterFlag=NO;
    }
    
    x = (10.0f * x) + [sender tag];
    
    [self calcScreen];
    
}

- (IBAction)operation:(id)sender {
    
    if (yFlag && ! enterFlag){
        switch (operation) {
            case OP_PLUS:
                x = x+y;
                break;
            case OP_MINUS:
                x = y-x;
                break;
            case OP_MULT:
                x = x*y;
                break;
            case OP_DIV:
                x = y/x;
                break;
                
            default:
                break;
        }
    }
    
    y=x;
    enterFlag=YES;
    yFlag=YES;
    
    operation = [sender tag];
    
    [self calcScreen];
}

- (IBAction)clear:(id)sender {
    x=0;
    [self calcScreen];
}

-(void)calcScreen{
    
    NSString *str = [NSString stringWithFormat: @"%g",x];
                     
    self.screenLabel.text = str;
}


@end
