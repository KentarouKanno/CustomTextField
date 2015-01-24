//
//  CustomTextField.h
//  textFieldTEST
//
//  Created by KentarOu on 2015/01/24.
//  Copyright (c) 2015年 KentarOu. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol CustomTextFieldDelegate <NSObject>

@optional
- (void) customTextFieldDidBeginEditing:(UITextField *)textField;
- (void) customTextFieldDidEndEditing:(UITextField *)textField;

- (BOOL)customTextField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string;

@end

@interface CustomTextField : UITextField <UITextFieldDelegate>

@property (nonatomic,assign) id<CustomTextFieldDelegate> viewController;
@property (nonatomic,readwrite) int maxLength;

- (id)initWithDelegate:(id)delegate;

@end
