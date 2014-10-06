//
//  VactionViewController.m
//  IntergalacticTravel
//
//  Created by Peter Hitchcock on 9/30/14.
//  Copyright (c) 2014 Peter Hitchcock. All rights reserved.
//

#import "VactionViewController.h"

@interface VactionViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *vactionImageView;

@end

@implementation VactionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.vactionImageView.image = self.starImage;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
