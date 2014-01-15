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
    // 设置输入框
    [_calculateField setPlaceholder:@"Result here"];
    _calculateField.enabled = NO;
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
    _clearBtn.layer.cornerRadius = _clearBtn.bounds.size.width / 2.0;
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
    _clearBtn.layer.borderColor = textColor.CGColor;
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
    _clearBtn.layer.borderWidth = 1.0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)typeZero:(id)sender {
    _calculateField.text = [_calculateField.text stringByAppendingString:@"0"];
}
- (IBAction)typeOne:(id)sender {
    _calculateField.text = [_calculateField.text stringByAppendingString:@"1"];
}
- (IBAction)typeTwo:(id)sender {
    _calculateField.text = [_calculateField.text stringByAppendingString:@"2"];
}
- (IBAction)typeThree:(id)sender {
    _calculateField.text = [_calculateField.text stringByAppendingString:@"3"];
}
- (IBAction)typeFour:(id)sender {
    _calculateField.text = [_calculateField.text stringByAppendingString:@"4"];
}
- (IBAction)typeFive:(id)sender {
    _calculateField.text = [_calculateField.text stringByAppendingString:@"5"];
}
- (IBAction)typeSix:(id)sender {
    _calculateField.text = [_calculateField.text stringByAppendingString:@"6"];
}
- (IBAction)typeSeven:(id)sender {
    _calculateField.text = [_calculateField.text stringByAppendingString:@"7"];
}
- (IBAction)typeEight:(id)sender {
    _calculateField.text = [_calculateField.text stringByAppendingString:@"8"];
}
- (IBAction)typeNine:(id)sender {
    _calculateField.text = [_calculateField.text stringByAppendingString:@"9"];
}
- (IBAction)typePlus:(id)sender {
    _calculateField.text = [_calculateField.text stringByAppendingString:@"+"];
}
- (IBAction)typeMinus:(id)sender {
    _calculateField.text = [_calculateField.text stringByAppendingString:@"-"];
}
- (IBAction)typeEqual:(id)sender {
    int result = 0;
    NSString* formula = _calculateField.text;
    int length = formula.length;
    //
    int startPos = 0;
    int num1;
    int num2;
    
    // 循环整个字符串
    for (int i = 0; i < length; i++) {
        char temp = [formula characterAtIndex:i];
        
        if (temp == '+' || temp == '-') {
            // 获取字符串中的第一个数字
            num1 = [[formula substringWithRange:NSMakeRange(startPos, i - startPos)] integerValue];
            num2 = [[formula substringWithRange:NSMakeRange(i + 1, length - i - 1)] integerValue];
            if(temp == '+') {
                result = num1 + num2;
            } else {
                result = num1 - num2;
            }
            break;
        }
    }
    
    _calculateField.text = [@(result) description];
}
- (IBAction)typeClear:(id)sender {
    _calculateField.text = @"";
}
@end
