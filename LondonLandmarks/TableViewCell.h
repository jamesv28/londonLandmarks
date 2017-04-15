//
//  TableViewCell.h
//  LondonLandmarks
//
//  Created by James Volmert on 4/14/17.
//  Copyright © 2017 James Volmert. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *cellImageView;
@property (weak, nonatomic) IBOutlet UILabel *cellTitle;
@property (weak, nonatomic) IBOutlet UILabel *cellDescription;

@end
