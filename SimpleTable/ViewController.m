//
//  ViewController.m
//  SimpleTable
//
//  Created by De Fano Salvatore on 12/06/15.
//  Copyright (c) 2015 Yoox. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (copy, nonatomic) NSArray *dwarves;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dwarves = @[@"Sleepy", @"Sneezy", @"Bashful", @"Happy",@"Doc", @"Grumpy", @"Dopey",@"Thorin", @"Dorin", @"Nori", @"Ori",@"Balin", @"Dwalin", @"Fili", @"Kili",@"Oin", @"Gloin", @"Bifur", @"Bofur",@"Bombur"];
    UITableView *tableView = (id)[self.view viewWithTag:1];
    UIEdgeInsets contentInset = tableView.contentInset;
    contentInset.top = 20;
    
    [tableView setContentInset:contentInset];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [self.dwarves count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SimpleTableIdentifier];
    
    if (cell == nil) {
        cell = [
                [UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault
                reuseIdentifier:SimpleTableIdentifier];
    }
    
    UIImage *image = [UIImage imageNamed:@"star"];
    cell.imageView.image = image;
    
    cell.textLabel.text = self.dwarves[indexPath.row];
    
    return cell;
}

@end
