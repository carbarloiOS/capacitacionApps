//
//  NumberCustomCell.h
//  Quiz4
//
//  Created by Estudiantes on 25/2/17.
//  Copyright © 2017 Universidad Estatal a Distancia Costa Rica. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NumberCustomCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *lblFibNumber;

-(void) setupCellWithNumber:(NSString*)number;

@end
