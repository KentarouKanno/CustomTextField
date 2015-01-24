//
//  ViewController.m
//  textFieldTEST
//
//  Created by KentarOu on 2015/01/24.
//  Copyright (c) 2015年 KentarOu. All rights reserved.
//

#import "ViewController.h"
#import "CustomTextField.h"

@interface ViewController ()<CustomTextFieldDelegate>
@property (weak, nonatomic) IBOutlet CustomTextField *textF;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    
    // コードの場合
    CustomTextField *textF = [[CustomTextField alloc]initWithDelegate:self];
    textF.backgroundColor = [UIColor redColor];
    textF.frame = CGRectMake(50, 150, 200, 30);
    textF.viewController = self;
    textF.maxLength = 7;
    [self.view addSubview:textF];
    
    
    // storyboardの場合
    self.textF.viewController = self;
}

#pragma mark - CustomTextField Delegate Method

- (BOOL)customTextField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    
    
    return YES;
}

- (void) customTextFieldDidBeginEditing:(UITextField *)textField {
    
}

- (void) customTextFieldDidEndEditing:(UITextField *)textField {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
