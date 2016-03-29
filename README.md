# AudioPlayerSample-IOS

 iOS project for handling multiple audio at a time without rewriting additional code.
 
 #How To Use
 1. Just copy "AudioPlayer" folder in your project directory 
 
 2. Initialize AudioPlayer in your source code file
  
    AudioPlayer *audioPlayer= [[AudioPlayer alloc] init];
    [self.audioPlayer initPlayer:fileName fileExtension:fileExtension];
 3. Add "CustomAudioDelegate" delegate & method 
    audioPlayer.audioDelegate=self;
    
    - (void) audioFinishPlaying;
 4. Additional method 
   
   - (void)playAudio;

   - (void)pauseAudio;

   - (void)stopAudio;

   - (BOOL)isPlaying;
  
