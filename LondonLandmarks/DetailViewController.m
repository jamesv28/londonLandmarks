//
//  DetailViewController.m
//  LondonLandmarks
//
//  Created by James Volmert on 4/14/17.
//  Copyright © 2017 James Volmert. All rights reserved.
//

#import "DetailViewController.h"
#import "MapPin.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.detailTitle.text = _detailModal[0];
    self.detailDescription.text = _detailModal[1];
    self.detailImageView.image = [UIImage imageNamed:_detailModal[2]];
    self.navigationItem.title = _detailModal[0];
    
    //  add corner radius to mapview
    self.detailMapView.layer.cornerRadius = 5;
    self.directionButt.layer.cornerRadius = 5;
    
    if ([self.detailTitle.text isEqualToString:@"Big Ben"]) {
        self.detailDescription.text = @"Big Ben is the nickname for the Great Bell of the clock at the north end of the Palace of Westminster in London and is usually extended to refer to both the clock and the clock tower as well";
        lattitude = 40.741895;
        longitude = -73.989308;
        
    }
    if ([self.detailTitle.text isEqualToString:@"Westminister Abbey"]) {
        self.detailDescription.text = @"Westminster Abbey, formally titled the Collegiate Church of St Peter at Westminster, is a large, mainly Gothic abbey church in the City of Westminster, London, just to the west of the Palace of Westminster.";
        lattitude = 51.50087;
        longitude = -0.11968200000001161;
        
    }
    if ([self.detailTitle.text isEqualToString:@"London Eye"]) {
        self.detailDescription.text = @"The London Eye is a giant Ferris wheel on the South Bank of the River Thames in London. Also known as the Millennium Wheel, it has also been called by its owners the British Airways London Eye";
        lattitude = 51.50087;
        longitude = -0.11968200000001161;
    }
    if ([self.detailTitle.text isEqualToString:@"Buckingham Palace"]) {
        self.detailDescription.text = @"Buckingham Palace is the London residence and administrative headquarters of the reigning monarch of the United Kingdom. Located in the City of Westminster, the palace is often at the centre of state occasions and royal hospitality";
        lattitude = 51.50087;
        longitude = -0.11968200000001161;
    }
    if ([self.detailTitle.text isEqualToString:@"Saint Paul's Cathedral"]) {
        self.detailDescription.text = @"St Paul's Cathedral, London, is an Anglican cathedral, the seat of the Bishop of London and the mother church of the Diocese of London.";
        lattitude = 51.50087;
        longitude = -0.11968200000001161;
    }
    if ([self.detailTitle.text isEqualToString:@"Tower Bridge"]) {
        self.detailDescription.text = @"Tower Bridge is a combined bascule and suspension bridge in London built in 1886–1894. The bridge crosses the River Thames close to the Tower of London and has become an iconic symbol of London";
        lattitude = 51.50087;
        longitude = -0.11968200000001161;
    }
    
    MKCoordinateRegion region = {
        { 0.0, 0.0},
        { 0.0, 0.0}};
    region.center.latitude = lattitude;
    region.center.longitude = longitude;
    region.span.latitudeDelta = 0.05f;
    region.span.longitudeDelta = 0.05f;
    [self.detailMapView setRegion:region animated:YES];
    MapPin *ann = [[MapPin alloc] init];
    ann.title = _detailModal[0];
    ann.description = _detailModal[1];
    ann.coordinate = region.center;
    [self.detailMapView addAnnotation:ann];
    
}   // end of view did load

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)directions:(id)sender {
    
    NSString *url = [NSString stringWithFormat:@"http://maps.apple.com/maps?daddr=%f,%f",lattitude,longitude];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url] options:@{} completionHandler:nil];
}
@end
