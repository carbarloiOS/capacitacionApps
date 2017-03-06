//
//  CategoryTableViewCell.m
//  News
//
//  Created by Cesar Brenes on 2/18/17.
//  Copyright © 2017 Veux Labs. All rights reserved.
//

#import "CategoryTableViewCell.h"
#import "Category.h"
#import "Dog.h"

@interface CategoryTableViewCell()
@property (weak, nonatomic) IBOutlet UILabel *categoryNameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *categoryImageView;

@end


@implementation CategoryTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setupCellWithCategory:(Dog*)dog{
    //self.categoryImageView.image = [UIImage imageNamed:category.imageName];
    self.categoryImageView.image = [UIImage imageNamed:dog.image];
    self.categoryNameLabel.text = dog.name;
}

@end
