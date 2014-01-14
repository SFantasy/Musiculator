//
//  ViewController.h
//  Musiculator
//
//  Created by fantasyshao on 14/1/14.
//  Copyright (c) 2014 fantasyshao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *calculateField;
@property (weak, nonatomic) IBOutlet UIButton *zeroBtn;
- (IBAction)typeZero:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *oneBtn;
- (IBAction)typeOne:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *twoBtn;
- (IBAction)typeTwo:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *threeBtn;
- (IBAction)typeThree:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *fourBtn;
- (IBAction)typeFour:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *fiveBtn;
- (IBAction)typeFive:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *sixBtn;
- (IBAction)typeSix:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *sevenBtn;
- (IBAction)typeSeven:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *eightBtn;
- (IBAction)typeEight:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *nineBtn;
- (IBAction)typeNine:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *plusBtn;
- (IBAction)typePlus:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *minusBtn;
- (IBAction)typeMinus:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *equalBtn;
- (IBAction)typeEqual:(id)sender;

@end
