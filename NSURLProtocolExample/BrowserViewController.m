//
//  BrowserViewController.m
//  NSURLProtocolExample
//
//  Created by Rocir Marcos Leite Santiago on 11/29/13.
//  Copyright (c) 2013 Rocir Santiago. All rights reserved.
//

#import "BrowserViewController.h"

@interface BrowserViewController () <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UIWebView *webView;

- (IBAction)buttonGoClicked:(id)sender;

@end

@implementation BrowserViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

#pragma mark - IBAction

- (IBAction)buttonGoClicked:(id)sender {
    
    if ([self.textField isFirstResponder]) {
        [self.textField resignFirstResponder];
    }
    
    [self sendRequest];
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    
    [self sendRequest];
    
    return YES;
}

#pragma mark - Private

- (void) sendRequest {
    
    NSString *text = self.textField.text;
    if (![text isEqualToString:@""]) {
        
        NSURL *url = [NSURL URLWithString:text];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [self.webView loadRequest:request];
        
    }
    
}
@end
