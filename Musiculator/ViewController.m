//
//  ViewController.m
//  Musiculator
//
//  Created by fantasyshao on 14/1/14.
//  Copyright (c) 2014 fantasyshao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // TODO 将输入框设置为只读
    [_calculateField setPlaceholder:@"Result here"];
    UIColor *textColor = _zeroBtn.titleLabel.textColor;
    // 设置边框
    _zeroBtn.layer.cornerRadius  = _zeroBtn.bounds.size.width / 2.0;
    _oneBtn.layer.cornerRadius   = _oneBtn.bounds.size.width / 2.0;
    _twoBtn.layer.cornerRadius   = _twoBtn.bounds.size.width / 2.0;
    _threeBtn.layer.cornerRadius = _threeBtn.bounds.size.width / 2.0;
    _fourBtn.layer.cornerRadius  = _fourBtn.bounds.size.width / 2.0;
    _fiveBtn.layer.cornerRadius  = _fiveBtn.bounds.size.width / 2.0;
    _sixBtn.layer.cornerRadius   = _sixBtn.bounds.size.width / 2.0;
    _sevenBtn.layer.cornerRadius = _sevenBtn.bounds.size.width / 2.0;
    _eightBtn.layer.cornerRadius = _eightBtn.bounds.size.width / 2.0;
    _nineBtn.layer.cornerRadius  = _nineBtn.bounds.size.width / 2.0;
    _plusBtn.layer.cornerRadius  = _plusBtn.bounds.size.width / 2.0;
    _minusBtn.layer.cornerRadius = _minusBtn.bounds.size.width / 2.0;
    // 设置边框颜色
    _zeroBtn.layer.borderColor  = textColor.CGColor;
    _oneBtn.layer.borderColor   = textColor.CGColor;
    _twoBtn.layer.borderColor   = textColor.CGColor;
    _threeBtn.layer.borderColor = textColor.CGColor;
    _fourBtn.layer.borderColor  = textColor.CGColor;
    _fiveBtn.layer.borderColor  = textColor.CGColor;
    _sixBtn.layer.borderColor   = textColor.CGColor;
    _sevenBtn.layer.borderColor = textColor.CGColor;
    _eightBtn.layer.borderColor = textColor.CGColor;
    _nineBtn.layer.borderColor  = textColor.CGColor;
    _plusBtn.layer.borderColor  = textColor.CGColor;
    _minusBtn.layer.borderColor = textColor.CGColor;
    _equalBtn.layer.borderColor = textColor.CGColor;
    // 设置边框宽度
    _zeroBtn.layer.borderWidth  = 1.0;
    _oneBtn.layer.borderWidth   = 1.0;
    _twoBtn.layer.borderWidth   = 1.0;
    _threeBtn.layer.borderWidth = 1.0;
    _fourBtn.layer.borderWidth  = 1.0;
    _fiveBtn.layer.borderWidth  = 1.0;
    _sixBtn.layer.borderWidth   = 1.0;
    _sevenBtn.layer.borderWidth = 1.0;
    _eightBtn.layer.borderWidth = 1.0;
    _nineBtn.layer.borderWidth  = 1.0;
    _plusBtn.layer.borderWidth  = 1.0;
    _minusBtn.layer.borderWidth = 1.0;
    _equalBtn.layer.borderWidth = 1.0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)typeZero:(id)sender {
}
- (IBAction)typeOne:(id)sender {
}
- (IBAction)typeTwo:(id)sender {
}
- (IBAction)typeThree:(id)sender {
}
- (IBAction)typeFour:(id)sender {
}
- (IBAction)typeFive:(id)sender {
}
- (IBAction)typeSix:(id)sender {
}
- (IBAction)typeSeven:(id)sender {
}
- (IBAction)typeEight:(id)sender {
}
- (IBAction)typeNine:(id)sender {
}
- (IBAction)typePlus:(id)sender {
}
- (IBAction)typeMinus:(id)sender {
}
- (IBAction)typeEqual:(id)sender {
}
@end
