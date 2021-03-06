//
//  T5AppDelegate.h
//  Traveller5
//
//  Created by Alex Baca on 5/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@class T5ViewController;

@interface T5AppDelegate : UIResponder <UIApplicationDelegate, CLLocationManagerDelegate>{
    UIWindow *window;
    T5ViewController *viewController;
}

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) T5ViewController *viewController;

@property (nonatomic, retain) CLLocationManager *locationManager;

@property (nonatomic) BOOL monitorBuss;

@property (nonatomic) BOOL monitorStation;

@property (nonatomic) BOOL monitorRoute;

- (void)refresh;

@end
