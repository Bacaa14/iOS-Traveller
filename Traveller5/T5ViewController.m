//
//  T5ViewController.m
//  Traveller5
//
//  Created by Alex Baca on 5/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "T5ViewController.h"
#import "T5InfoViewController.h"
#import "T5WebViewController.h"
#import "T5SimpleAnnotation.h"

@interface T5ViewController ()

@end

@implementation T5ViewController
@synthesize mapView;
@synthesize stationAnnotations = _stationAnnotations;


- (IBAction)getLocation:(id)sender {
    double miles = 12.0; 
    double scalingFactor = ABS( cos(2 * M_PI * mapView.userLocation.coordinate.latitude /360.0) );
    MKCoordinateSpan span;
    span.latitudeDelta = miles/69.0; 
    span.longitudeDelta = miles/( scalingFactor*69.0 );
    MKCoordinateRegion region;
    region.span = span;
    region.center = mapView.userLocation.coordinate;
    [self.mapView setRegion:region animated:YES];

}

- (IBAction)setMap:(id)sender {
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    T5SimpleAnnotation *annotation1 = [[T5SimpleAnnotation alloc] init];
    CLLocationCoordinate2D coord = {37.782604, -79.440165};
    annotation1.coordinate = coord;
    annotation1.title = @"Test";
    annotation1.subtitle = @"1309 Daviswood Dr.";
    self.stationAnnotations = [[NSArray alloc] initWithObjects:annotation1, nil];
    [self.mapView addAnnotations:self.stationAnnotations];
}

- (void)viewDidUnload
{
    [self setMapView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)infoButton:(id)sender {
    T5InfoViewController *infoView = [[T5InfoViewController alloc] init];
    [self presentModalViewController:infoView animated:YES];
}

- (IBAction)alertButton:(id)sender {
        NSURL *url = [NSURL URLWithString:@"http://twitter.com/#!/WLUtraveller"]; 
        T5WebViewController *webViewController = [[T5WebViewController alloc] initWithURL:url andTitle:@"Traveller Notifications"]; 
        [self presentModalViewController:webViewController animated:YES];
}

- (IBAction)stationButton:(id)sender{
    
}
     
@end
