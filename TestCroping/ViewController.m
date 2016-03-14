//
//  ViewController.m
//  TestCroping
//
//  Created by Javier Berlana on 20/12/12.
//  Copyright (c) 2012 Mobile one2one. All rights reserved.
//

#import "ViewController.h"
#import "JBCroppableImageView.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)cropTapped:(id)sender
{
    [self.image crop];
    /*
    UIImage* i = [self.image getCroppedImageWithTransparentBorders:YES];
    NSData* d = UIImagePNGRepresentation(i);
    NSString* dir = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    [d writeToFile:[NSString stringWithFormat:@"%@/%@", dir, @"foo.png"] atomically:YES];
    */
}

- (IBAction)undoTapped:(id)sender
{
    [self.image reverseCrop];
}

- (IBAction)subtractTapped:(id)sender {
    [self.image removePoint];
}

- (IBAction)addTapped:(id)sender {
    [self.image addPoint];
}

@end
