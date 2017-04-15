//
//  DetailViewController.h
//  LondonLandmarks
//
//  Created by James Volmert on 4/14/17.
//  Copyright © 2017 James Volmert. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface DetailViewController : UIViewController {
    double lattitude;
    double longitude;
}

@property (strong, nonatomic) NSArray *detailModal;

@property (weak, nonatomic) IBOutlet UIImageView *detailImageView;
@property (weak, nonatomic) IBOutlet UILabel *detailTitle;
@property (weak, nonatomic) IBOutlet UILabel *detailDescription;
@property (weak, nonatomic) IBOutlet UITextView *detailTextView;
@property (weak, nonatomic) IBOutlet MKMapView *detailMapView;
@property (weak, nonatomic) IBOutlet UIButton *directionButt;
- (IBAction)directions:(id)sender;

@end
