//
//  webviewCNFLViewController.h
//  Proyecto
//
//  Created by Jobando on 30/3/17.
//  Copyright © 2017 CNFL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface webviewCNFLViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIWebView *WVcnfl;
@property (strong, nonatomic) IBOutlet UITextField *lclientedatos;
@property (weak, nonatomic) NSString *nombreCliente;
@property (strong, nonatomic) IBOutlet UINavigationBar *nbrHistorico;



@end
