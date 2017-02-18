//
//  PrimeCustomTableViewCell.m
//  Quiz3
//
//  Created by Estudiantes on 18/2/17.
//  Copyright © 2017 Universidad Estatal a Distancia Costa Rica. All rights reserved.
//

#import "PrimeCustomTableViewCell.h"

@interface PrimeCustomTableViewCell()

@property (weak, nonatomic) IBOutlet UILabel *celdaPrimos;

@end

@implementation PrimeCustomTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


-(void)ponerNumACelda:(NSString *) numero {
    self.celdaPrimos.text=numero;
}

@end
