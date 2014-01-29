//
//  ViewController.m
//  Musiculator
//
//  Created by fantasyshao on 14/1/14.
//  Copyright (c) 2014 fantasyshao. All rights reserved.
//

#import "ViewController.h"
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)playSound : (NSString*) id
{
    // 增加按键声音
    SystemSoundID soundID;
    
    NSString *soundPath = [[NSBundle mainBundle] pathForResource:id ofType:@"mp3"];
    CFURLRef soundUrl = (__bridge CFURLRef)[NSURL fileURLWithPath:soundPath];
    AudioServicesCreateSystemSoundID(soundUrl, &soundID);
    AudioServicesPlaySystemSound(soundID);
}

- (void)setButtonStyle : (UIButton*) btnName
{
    UIColor *textColor = _zeroBtn.titleLabel.textColor;
    // 设置边框圆角，颜色，宽度
    btnName.layer.cornerRadius = btnName.bounds.size.width / 2.0;
    btnName.layer.borderColor  = textColor.CGColor;
    btnName.layer.borderWidth  = 1.0;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // 设置输入框
    [_calculateField setPlaceholder:@"Result here"];
    _calculateField.enabled = NO;
    [self setButtonStyle:_zeroBtn];
    [self setButtonStyle:_oneBtn];
    [self setButtonStyle:_twoBtn];
    [self setButtonStyle:_threeBtn];
    [self setButtonStyle:_fourBtn];
    [self setButtonStyle:_fiveBtn];
    [self setButtonStyle:_sixBtn];
    [self setButtonStyle:_sevenBtn];
    [self setButtonStyle:_eightBtn];
    [self setButtonStyle:_nineBtn];
    [self setButtonStyle:_plusBtn];
    [self setButtonStyle:_minusBtn];
    [self setButtonStyle:_clearBtn];
    [self setButtonStyle:_equalBtn];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)typeZero:(id)sender {
    [self playSound:@"17"];
    _calculateField.text = [_calculateField.text stringByAppendingString:@"0"];
}
- (IBAction)typeOne:(id)sender {
    [self playSound:@"21"];
    _calculateField.text = [_calculateField.text stringByAppendingString:@"1"];
}
- (IBAction)typeTwo:(id)sender {
    [self playSound:@"22"];
    _calculateField.text = [_calculateField.text stringByAppendingString:@"2"];
}
- (IBAction)typeThree:(id)sender {
    [self playSound:@"23"];
    _calculateField.text = [_calculateField.text stringByAppendingString:@"3"];
}
- (IBAction)typeFour:(id)sender {
    [self playSound:@"24"];
    _calculateField.text = [_calculateField.text stringByAppendingString:@"4"];
}
- (IBAction)typeFive:(id)sender {
    [self playSound:@"25"];
    _calculateField.text = [_calculateField.text stringByAppendingString:@"5"];
}
- (IBAction)typeSix:(id)sender {
    [self playSound:@"26"];
    _calculateField.text = [_calculateField.text stringByAppendingString:@"6"];
}
- (IBAction)typeSeven:(id)sender {
    [self playSound:@"27"];
    _calculateField.text = [_calculateField.text stringByAppendingString:@"7"];
}
- (IBAction)typeEight:(id)sender {
    [self playSound:@"31"];
    _calculateField.text = [_calculateField.text stringByAppendingString:@"8"];
}
- (IBAction)typeNine:(id)sender {
    [self playSound:@"32"];
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
