//
//  ViewController.h
//  ReferenceToSelf
//
//  Created by Ceaser Larry on 7/31/14.
//
//

#import <UIKit/UIKit.h>
@class Model;

@interface ViewController1 : UIViewController
@property (nonatomic, weak) IBOutlet UIButton *button;

- (IBAction)pushed:(id)sender;
@end
