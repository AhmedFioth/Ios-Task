//
//  sideMenu.m
//  Ios-Task
//
//  Created by vm mac on 7/8/17.
//  Copyright © 2017 smartPan. All rights reserved.
//

#import "sideMenu.h"
#import "SWRevealViewController.h"


@implementation sideMenu
NSArray *menuItems;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    menuItems = @[@"changePassword", @"logout"];
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [menuItems count];
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 1) {
        [self dismissViewControllerAnimated:YES completion:nil];
    }

}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString * cellID = menuItems [indexPath.row] ;
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    return cell;
}
@end
