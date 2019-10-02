//
//  InputTextFieldValidate.h
//  StrategyDemo
//
//  Created by 沈海超 on 2017/11/29.
//  Copyright © 2017年 沈海超 All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InputTextFieldValidate : NSObject
// 策略输入 YES 表示测试通过.No 表示测试不通过
- (BOOL)validateInputTextField:(UITextField *)textField;

@property (nonatomic, copy) NSString *attributeInputStr; /**< 属性字符串 */
@end
