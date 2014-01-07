//
//  ViewController.h
//  helloios7
//
//  Created by Gorro on 28/12/13.
//  Copyright (c) 2013 Gorro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *trollLabel;
@property (weak, nonatomic) IBOutlet UILabel *lawLabel;
@property (weak, nonatomic) IBOutlet UILabel *badumLabel;
@property (weak, nonatomic) IBOutlet UILabel *clampLabel;
@property (weak, nonatomic) IBOutlet UILabel *wrongLabel;


- (IBAction)law:(id)sender;
- (IBAction)badum:(id)sender;
- (IBAction)clamps:(id)sender;
- (IBAction)wrong:(id)sender;
- (IBAction)troll:(id)sender;

@end
