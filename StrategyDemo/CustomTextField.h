//
//  CustomTextField.h
//  StrategyDemo
//
//  Created by 沈海超 on 2017/11/29.
//  Copyright © 2017年 沈海超 All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InputTextFieldValidate.h"

@interface CustomTextField : UITextField

// 抽象的策略
@property (nonatomic, strong) InputTextFieldValidate *inputValidate;

// 验证是否符合要求
- (BOOL)validate;
@end
