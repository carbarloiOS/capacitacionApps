//
//  NewsTableViewCell.m
//  News
//
//  Created by Cesar Brenes on 2/25/17.
//  Copyright © 2017 Veux Labs. All rights reserved.
//

#import "NewsTableViewCell.h"
#import "News.h"
#import "Dog.h"

@interface NewsTableViewCell()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

@end

@implementation NewsTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setupCellWithNews:(Dog*)dog{
    NSString *etiq = @"Nombre: ";
    self.titleLabel.text = [etiq stringByAppendingString:dog.name];

//    NSString *dateString =
//                [NSDateFormatter localizedStringFromDate:news.date
//                dateStyle:NSDateFormatterShortStyle
//                timeStyle:NSDateFormatterShortStyle];
    // Texto con formato
    NSString *html = [NSString stringWithFormat: @"%@ %@ %@ %@", @"<b>Color: </b>", dog.color, @" <b>Edad: </b>",dog.age];
   /* html = [html stringByAppendingString:dog.color];
    html = [html stringByAppendingString:@"<br><b>Edad: </b>"];
    html = [html stringByAppendingString:dog.age];*/
    html = [html stringByAppendingString:@" <b>Localidad: </b>"];
    html = [html stringByAppendingString:dog.location];
    html = [html stringByAppendingString:@" <b>Contacto: </b>"];
    html = [html stringByAppendingString:dog.contactInformation];

    NSAttributedString * attrStr = [[NSAttributedString alloc] initWithData:[html dataUsingEncoding:NSUnicodeStringEncoding] options:@{ NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType } documentAttributes:nil error:nil];
    self.dateLabel.attributedText = attrStr;
}

@end
