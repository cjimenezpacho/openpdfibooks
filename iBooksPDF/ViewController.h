//
//  ViewController.h
//  iBooksPDF
//
//  Created by Carlos Jiménez on 14/01/14.
//  Copyright (c) 2014 obturecode. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIDocumentInteractionControllerDelegate>{
    
}
@property (retain,nonatomic) UIDocumentInteractionController *docController;

- (IBAction)goPdf:(id)sender;

@end
