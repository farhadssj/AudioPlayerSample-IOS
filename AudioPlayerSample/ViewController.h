//
//  ViewController.h
//  AudioPlayerSample
//
//  Created by Md Farhad Hossain,XOR Co. Ltd. on 3/29/16.
//  Copyright © 2016 XOR Co. Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AudioPlayer.h"

@interface ViewController : UIViewController<CustomAudioDelegate>

@property (nonatomic, strong) AudioPlayer *audioPlayer;

@property(nonatomic,retain) IBOutlet UIButton *mediaControlButton;

-(IBAction)mediaControlButtonPressed:(id)sender;

@end

