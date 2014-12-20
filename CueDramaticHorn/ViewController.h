//
//  ViewController.h
//  CueDramaticHorn
//
//  Created by Aslan Vatsaev on 20/12/14.
//  Copyright (c) 2014 Aslan Vatsaev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController{
    SystemSoundID inception;
    SystemSoundID dramatic;
    SystemSoundID currentSound;
}

@property (weak, nonatomic) IBOutlet UISegmentedControl *soundSelector;
@property (strong, nonatomic) NSString* inceptionPath;
@property (strong, nonatomic) NSString* dramaticPath;
@property (strong, nonatomic) NSString* dramatic2Path;


@end

