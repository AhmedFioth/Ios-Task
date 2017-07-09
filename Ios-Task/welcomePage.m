//
//  welcomePage.m
//  Ios-Task
//
//  Created by vm mac on 7/8/17.
//  Copyright © 2017 smartPan. All rights reserved.
//

#import "welcomePage.h"
#import "SWRevealViewController.h"

@interface welcomePage ()
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@property (weak, nonatomic) IBOutlet UILabel *nameOutlet;

@end

@implementation welcomePage 


-(void)viewDidLoad{
 SWRevealViewController *revealViewController = self.revealViewController;
    self.nameOutlet.text =[NSString stringWithFormat:@"Welcome %@",revealViewController.name];
    
    if ( revealViewController )
    {
        [self.sidebarButton setTarget: self.revealViewController];
        [self.sidebarButton setAction: @selector( revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
}


@end
