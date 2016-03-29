//
//  ViewController.m
//  AudioPlayerSample
//
//  Created by XOR Co. Ltd. on 3/29/16.
//  Copyright © 2016 XOR Co. Ltd. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //initialize Audio Player
    self.audioPlayer = [[AudioPlayer alloc] init];
    //Audio Filename & FileExtension(fixed wav file)
    NSString *fileExtension = @"mp3";
    NSString *fileName =@"SomethingElated";
    
    //init the Player to get file properties to set the time labels
    [self.audioPlayer initPlayer:fileName fileExtension:fileExtension];
    self.audioPlayer.audioDelegate=self;
    
    [self.mediaControlButton setTitle:@"Play" forState:UIControlStateNormal];
}


-(IBAction)mediaControlButtonPressed:(id)sender{
    //check audio currently playing or not & change button title
    if ([self.audioPlayer isPlaying]) {
        [self.audioPlayer stopAudio];
        [self.mediaControlButton setTitle:@"Play" forState:UIControlStateNormal];
    }else{
        [self.audioPlayer playAudio];
        [self.mediaControlButton setTitle:@"Stop" forState:UIControlStateNormal];
    }
}

#pragma mark - CustomAudioDelegate implementation
- (void) audioFinishPlaying{
    //update button title
    [self.mediaControlButton setTitle:@"Play" forState:UIControlStateNormal];
}

@end
