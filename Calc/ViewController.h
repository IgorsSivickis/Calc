//
//  ViewController.h
//  Calc
//
//  Created by Igors.Sivickis on 5/23/14.
//  Copyright (c) 2014 Accenture. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    double x, y;
    BOOL enterFlag, yFlag;
    NSInteger operation;
}


@property (weak, nonatomic) IBOutlet UILabel *screenLabel;


- (IBAction)clear:(id)sender;

- (IBAction)clearAll:(id)sender;
- (IBAction)inverseSign:(id)sender;
- (IBAction)digit:(id)sender;
- (IBAction)operation:(id)sender;

@end
