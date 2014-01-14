//
//  ViewController.m
//  iBooksPDF
//
//  Created by Carlos Jiménez on 14/01/14.
//  Copyright (c) 2014 obturecode. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goPdf:(id)sender {
    NSURL *url = [[NSBundle mainBundle]
                    URLForResource: @"iPhoneintro" withExtension:@"pdf"];
    self.docController = [UIDocumentInteractionController interactionControllerWithURL:url];
    self.docController.delegate = self;
    
    BOOL isValid = [self.docController presentOpenInMenuFromRect:CGRectZero inView:self.view animated:YES];
    NSLog(@"Is valid %d",isValid);
    
}

- (void)documentInteractionController:(UIDocumentInteractionController *)controller willBeginSendingToApplication:(NSString *)application{
    
    NSLog(@"willBeginSendingToApplication");
}

- (void)documentInteractionController:(UIDocumentInteractionController *)controller didEndSendingToApplication:(NSString *)application{
    NSLog(@"didEndSendingToApplication");
    
}

- (void)documentInteractionControllerDidDismissOpenInMenu:(UIDocumentInteractionController *)controller{
    NSLog(@"documentInteractionControllerDidDismissOpenInMenu");

}
@end
