//
//  NumberCustomCell.m
//  Quiz4
//
//  Created by Estudiantes on 25/2/17.
//  Copyright © 2017 Universidad Estatal a Distancia Costa Rica. All rights reserved.
//

#import "NumberCustomCell.h"

@implementation NumberCustomCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void) setupCellWithNumber:(NSString*)number{
    self.lblFibNumber.text = number;
}

@end
