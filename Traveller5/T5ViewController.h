//
//  T5ViewController.h
//  Traveller5
//
//  Created by Alex Baca on 5/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface T5ViewController : UIViewController
@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end