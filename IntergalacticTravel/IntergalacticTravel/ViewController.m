//
//  ViewController.m
//  IntergalacticTravel
//
//  Created by Peter Hitchcock on 9/30/14.
//  Copyright (c) 2014 Peter Hitchcock. All rights reserved.
//

#import "ViewController.h"
#import "VactionViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    VactionViewController *vacationViewController = segue.destinationViewController;

    vacationViewController.title = [sender currentTitle];

    if ([segue.identifier isEqualToString:@"RedDwarfSegue"]) {

        vacationViewController.starImage = [UIImage imageNamed:@"redStar.jpg"];
        vacationViewController.view.backgroundColor = [UIColor redColor];

    } else {

        vacationViewController.starImage = [UIImage imageNamed:@"blueStar.jpg"];
        vacationViewController.view.backgroundColor = [UIColor blueColor];
    }


}

@end
