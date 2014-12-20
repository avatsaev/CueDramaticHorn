//
//  ViewController.m
//  CueDramaticHorn
//
//  Created by Aslan Vatsaev on 20/12/14.
//  Copyright (c) 2014 Aslan Vatsaev. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.inceptionPath = [[NSBundle mainBundle]
                      pathForResource:@"inception" ofType:@"aiff"];
    
    self.dramaticPath = [[NSBundle mainBundle]
                               pathForResource:@"dramatic" ofType:@"mp3"];
    
    self.dramatic2Path = [[NSBundle mainBundle]
                         pathForResource:@"dramatic2" ofType:@"mp3"];
    
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath:self.inceptionPath], &currentSound);
}
- (IBAction)play_it_faggot:(id)sender {
    
    AudioServicesPlaySystemSound(currentSound);
    NSLog(@"Playing sound");
    
}

- (IBAction)soundChanged:(id)sender {
    switch (self.soundSelector.selectedSegmentIndex){
            
        case 0:
            AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath:self.inceptionPath], &currentSound);
            break;
        case 1:
            AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath:self.dramaticPath], &currentSound);
            break;
        case 2:
            AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath:self.dramatic2Path], &currentSound);
            break;
        default: 
            break; 
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
