//
//  webviewCNFLViewController.m
//  Proyecto
//
//  Created by Jobando on 30/3/17.
//  Copyright © 2017 CNFL. All rights reserved.
//

#import "webviewCNFLViewController.h"

@interface webviewCNFLViewController ()

@end

@implementation webviewCNFLViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.lclientedatos.text = self.nombreCliente;
    // Do any additional setup after loading the view.
    NSString *fullURL =@"https://agenciavirtual.cnfl.go.cr/cnflPruebas/AgenciaVirtual/HFProto.jsf";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_WVcnfl loadRequest:requestObj];
    self.title = @"Histórico del Cliente";
}

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

@end
