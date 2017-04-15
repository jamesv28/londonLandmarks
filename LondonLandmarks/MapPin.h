//
//  MapPin.h
//  LondonLandmarks
//
//  Created by James Volmert on 4/15/17.
//  Copyright © 2017 James Volmert. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MapPin : NSObject <MKAnnotation> {
    CLLocationCoordinate2D coordinate;
    NSString *title;
    NSString *description;
}
@property (nonatomic,assign)CLLocationCoordinate2D coordinate;
@property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *description;

@end
