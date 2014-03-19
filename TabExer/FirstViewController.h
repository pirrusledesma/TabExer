//
//  FirstViewController.h
//  TabExer
//
//  Created by Ileana Padilla on 3/18/14.
//  Copyright (c) 2014 paul. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@interface FirstViewController : UIViewController <ADBannerViewDelegate>
{
    ADBannerView *adView;
    BOOL bannerIsVisible;
}
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@end
