//
//  ViewController.m
//  Simple White Noise
//
//  Created by Aleksandrs Muravjovs on 26/06/2017.
//  Copyright © 2017 Aleksandrs Muravjovs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
AVAudioPlayer *myAudio;

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)btnClked:(id)sender {
    
    NSURL *musicFile;
    
    musicFile = [NSURL fileURLWithPath:[[NSBundle mainBundle]
                                        pathForResource:@"White noise"
                                        ofType:@"mp3"]];
    
    myAudio = [[AVAudioPlayer alloc] initWithContentsOfURL:musicFile error:nil];
    
    [self.button setBackgroundImage:[UIImage imageNamed:@"Play.png"] forState:UIControlStateNormal];
    
    if (self.button.tag == 0) {
        self.button.tag = 1;
        [self.button setImage:[UIImage imageNamed:@"Stop.png"] forState:UIControlStateNormal];
        
        [myAudio play];
        myAudio.numberOfLoops = -1;
        myAudio.currentTime = 0;
        myAudio.volume = 0.5;
        // Allowing to play in background
        

        
        //setting up Colors
        self.simpleWhiteNoiseLabel.textColor = [[UIColor alloc] initWithRed:231/255.0 green:69/255.0 blue:89/255.0 alpha:1.0];
        self.slider.thumbTintColor = [[UIColor alloc] initWithRed:231/255.0 green:69/255.0 blue:89/255.0 alpha:1.0];
        self.slider.minimumTrackTintColor = [[UIColor alloc] initWithRed:231/255.0 green:69/255.0 blue:89/255.0 alpha:1.0];
        
    } else {
        self.button.tag = 0;
        [self.button setImage:[UIImage imageNamed:@"Play.png"] forState:UIControlStateNormal];
        [myAudio stop];
        
        //setting up Colors
        self.simpleWhiteNoiseLabel.textColor = [[UIColor alloc] initWithRed:118/255.0 green:170/255.0 blue:63/255.0 alpha:1.0];
        self.slider.thumbTintColor = [[UIColor alloc] initWithRed:118/255.0 green:170/255.0 blue:63/255.0 alpha:1.0];
        self.slider.minimumTrackTintColor = [[UIColor alloc] initWithRed:118/255.0 green:170/255.0 blue:63/255.0 alpha:1.0];
    }
}


- (IBAction)slider:(UISlider *)sender {
    myAudio.volume = sender.value / 1;
}
@end
