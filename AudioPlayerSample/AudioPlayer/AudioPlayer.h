//
//  AudioPlayer.h
//  Created by Md Farhad Hossain,XOR Co. Ltd. on 3/29/16.
//  Copyright © 2016 XOR Co. Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@protocol CustomAudioDelegate
@required
- (void) audioFinishPlaying;
@end

@interface AudioPlayer : NSObject <AVAudioPlayerDelegate>{
    id<NSObject, CustomAudioDelegate>   audioDelegate;
}

@property (nonatomic, retain) AVAudioPlayer *audioPlayer;

@property (nonatomic, retain) IBOutlet id<CustomAudioDelegate,NSObject> audioDelegate;

// Public methods
- (void)initPlayer:(NSString*) audioFile fileExtension:(NSString*)fileExtension;

- (void)playAudio;

- (void)pauseAudio;

- (void)stopAudio;

- (BOOL)isPlaying;
@end