//
//  ViewController.h
//  Simple White Noise
//
//  Created by Aleksandrs Muravjovs on 26/06/2017.
//  Copyright © 2017 Aleksandrs Muravjovs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UILabel *simpleWhiteNoiseLabel;
@property (weak, nonatomic) IBOutlet UISlider *slider;

- (IBAction)slider:(UISlider *)sender;

@end

