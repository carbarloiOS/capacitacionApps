//
//  FibonacciTableViewCell.h
//  Fibonacci
//
//  Created by Todos los demas que no son Daff on 20/2/17.
//  Copyright © 2017 Todos los demas que no son Daff. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FibonacciTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *lblFibNumber;

-(void) setupCellWithNumber:(NSString*)number;

@end
