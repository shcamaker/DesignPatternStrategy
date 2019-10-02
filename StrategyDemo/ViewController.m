//
//  ViewController.m
//  StrategyDemo
//
//  Created by 沈海超 on 2017/11/29.
//  Copyright © 2017年 沈海超 All rights reserved.
//

#import "ViewController.h"
#import "CustomTextField.h"
#import "LatterTextFieldValidate.h"
#import "NumberTextFieldValidate.h"


@interface ViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet CustomTextField *letterInput; /**< 字母输入 */
@property (weak, nonatomic) IBOutlet CustomTextField *numberInput; /**< 数字输入 */
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.letterInput.delegate = self;
    self.numberInput.delegate = self;
    
    // 初始化
    self.letterInput.inputValidate = [LatterTextFieldValidate new];
    self.numberInput.inputValidate = [NumberTextFieldValidate new];

}

- (IBAction)btnClick:(id)sender {
    [self.view endEditing:YES];
}

#pragma mark - UITextFieldDelegate
- (void)textFieldDidEndEditing:(UITextField *)textField {
    if ([textField isKindOfClass:[CustomTextField class]]) {
        [(CustomTextField *)textField validate];
    }
}

//- (void)textFieldDidEndEditing:(UITextField *)textField {
//    if (textField == self.letterInput) {
//        // 验证它的输入值, 确保它输入的是字母
//        NSString *outputLatter = [self validateLatterInput:textField];
//        if (outputLatter) {
//            NSLog(@"---%@",outputLatter);
//        }else {
//            NSLog(@"---输入是空的");
//        }
//        
//    } else if (textField == self.numberInput) {
//       // 验证它的输入值, 确保它输入的是数字
//        NSString *outputNumber = [self validateNumberInput:textField];
//        if (outputNumber) {
//            NSLog(@"---%@",outputNumber);
//        }else {
//            NSLog(@"---输入是空的");
//        }
//    }
//}

#pragma mark - 验证输入
//- (NSString *)validateLatterInput:(UITextField *)textField {
//    if (textField.text.length == 0) {
//        return nil;
//    }
//    
//    // ^[a-zA-Z]*$ 从开头(^)到结尾($), 有效字符集([a-zA-Z])或者更多(*)个字符
//    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[a-zA-Z]*$" options:NSRegularExpressionAnchorsMatchLines error:nil];
//    
//    NSUInteger numberOfMatches = [regex numberOfMatchesInString:[textField text] options:NSMatchingAnchored range:NSMakeRange(0, [[textField text] length])];
//    
//    NSString *outLatter = nil;
//    // 进行判断,匹配不符合表示0的话, 就走下面的逻辑
//    if (numberOfMatches == 0) {
//        outLatter = @"不全是字母, 输入有误,请重新输入";
//    } else {
//        outLatter = @"输入正取,全部是字母";
//    }
//    
//    return outLatter;
//}
//
//- (NSString *)validateNumberInput:(UITextField *)textField {
//    if (textField.text.length == 0) {
//        return nil;
//    }
//    
//    // ^[a-zA-Z]*$ 从开头(^)到结尾($), 有效字符集([a-zA-Z])或者更多(*)个字符
//    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[0-9]*$" options:NSRegularExpressionAnchorsMatchLines error:nil];
//    
//    NSUInteger numberOfMatches = [regex numberOfMatchesInString:[textField text] options:NSMatchingAnchored range:NSMakeRange(0, [[textField text] length])];
//    
//    NSString *outLatter = nil;
//    // 进行判断,匹配不符合表示0的话, 就走下面的逻辑
//    if (numberOfMatches == 0) {
//        outLatter = @"不全是数字, 输入有误,请重新输入";
//    } else {
//        outLatter = @"输入正取,全部是数字";
//    }
//    
//    return outLatter;
//
//}


@end
