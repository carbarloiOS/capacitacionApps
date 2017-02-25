//
//  FibonacciTableViewCell.m
//  Fibonacci
//
//  Created by Todos los demas que no son Daff on 20/2/17.
//  Copyright © 2017 Todos los demas que no son Daff. All rights reserved.
//

#import "FibonacciTableViewCell.h"

@interface FibonacciTableViewCell ()

@end

@implementation FibonacciTableViewCell

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
