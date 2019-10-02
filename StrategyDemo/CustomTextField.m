//
//  CustomTextField.m
//  StrategyDemo
//
//  Created by 沈海超 on 2017/11/29.
//  Copyright © 2017年 沈海超 All rights reserved.
//

#import "CustomTextField.h"

@implementation CustomTextField

- (BOOL)validate {
    BOOL result = [self.inputValidate validateInputTextField:self];
    
    if (!result) {
        NSLog(@"---%@",self.inputValidate.attributeInputStr);
    }
    
    return result;
}
@end
