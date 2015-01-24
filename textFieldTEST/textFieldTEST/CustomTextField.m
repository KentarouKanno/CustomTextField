//
//  CustomTextField.m
//  textFieldTEST
//
//  Created by KentarOu on 2015/01/24.
//  Copyright (c) 2015年 KentarOu. All rights reserved.
//

#import "CustomTextField.h"

@implementation CustomTextField


- (id)initWithDelegate:(id)delegate {
    
    self = [super init];
    
    if (self) {
        
        self.viewController = delegate;
        
        [self textFieldInit];
    }
    
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        
        [self textFieldInit];
    }
    
    return self;
}

- (void)textFieldInit {
    
    self.delegate = self;
    self.borderStyle = UITextBorderStyleRoundedRect;
    self.font = [UIFont systemFontOfSize:14];
    self.textColor = [UIColor whiteColor];
    
    // MaxLength(Default Value)
    _maxLength = 10;
    
    // 共通初期化処理
    self.backgroundColor = self.backgroundColor = [UIColor blueColor];
    self.layer.cornerRadius = 10;
    self.layer.masksToBounds = YES;
}


- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    
    // 共通処理を記述
    // MaxLengthのチェック
    NSMutableString *str = [textField.text mutableCopy];
    [str replaceCharactersInRange:range withString:string];
    
    if ([str length] > _maxLength) {
        
        return NO;
    }
    
    return [self.viewController customTextField:textField shouldChangeCharactersInRange:range replacementString:string];
}


- (void)textFieldDidBeginEditing:(UITextField *)textField {
    
    // 共通処理を記述
    textField.text = @"aaaaa";
    
    
    [self.viewController customTextFieldDidBeginEditing:(UITextField *)textField];
}

- (void) textFieldDidEndEditing:(UITextField *)textField {
    
    // 共通処理を記述
    
    [self.viewController customTextFieldDidEndEditing:(UITextField *)textField];
}


@end


