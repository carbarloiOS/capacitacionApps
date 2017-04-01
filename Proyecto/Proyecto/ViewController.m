//
//  ViewController.m
//  Proyecto
//
//  Created by Jobando on 30/3/17.
//  Copyright © 2017 CNFL. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
#import "Constantes.h"
#import "webviewCNFLViewController.h"


@implementation ViewController
    NSString *resultado;
    NSString *nomCliente;
/*
 Fecha: 30/03/2017
 Autor: CNFL
 Resultado: Permite hacer el llamado al ws de login y validar asi los datos del cliente.
 Utiliza conexion usada en CNFL
 */
-(void) getAsync2JSONFromGetWith: (NSString * )url WithDictionary: (NSDictionary *) dictionary andCompletionHandler:(void (^)(NSString *result)) handler
{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    [manager POST:url parameters:dictionary
         progress:^(NSProgress * _Nonnull downloadProgress){ }
         success:^(NSURLSessionDataTask * task, id  responseObject)
     {
         // result = responseObject;
         //NSLog(@"Respuesta> %@", [responseObject description]);
         
         NSString *result = (NSString *)[responseObject description];
         handler(result);
     }
          failure:^(NSURLSessionDataTask *task, NSError *error)
     {
         handler(nil);
     }];
}

-(void) getAsync2JSONConDiccio: (NSString * )url WithDictionary: (NSDictionary *) dictionary andCompletionHandler:(void (^)(NSDictionary *result)) handler
{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    //manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    [manager POST:url parameters:dictionary
         progress:^(NSProgress * _Nonnull downloadProgress){ }
          success:^(NSURLSessionDataTask * task, id  responseObject)
     {
         // result = responseObject;
         //NSLog(@"Respuesta> %@", [responseObject description]);
         
         NSDictionary *result = responseObject;
         handler(result);
     }
          failure:^(NSURLSessionDataTask *task, NSError *error)
     {
         handler(nil);
     }];
}





/*
 Fecha: 30/03/2017
 Autor: CNFL
 Resultado: Genera los datos que ocupa el ws de login.
            Utiliza mismo tipo de conexion y llamado  usado en CNFL
 */

- (NSString *) validaLogin {

    // Datos usados por el ws de login
    NSString *IDUsuario = self.lblId.text;
    NSString *cs = self.lblCS.text;
    NSString *version = @"pruebaLogin";
    NSString *token = @"apas345ddlkwqeuroi234e24qdsar54adsf544sda";
    // Creacion de diccionario usado por login
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithObjectsAndKeys:
        IDUsuario, @"param1",
        cs,        @"param2",
        version,   @"param3",
        token,     @"param4",
        nil];

    [self getAsync2JSONConDiccio:URL_LOGIN WithDictionary:dictionary
                 andCompletionHandler:^(NSDictionary *result)
     {
         NSLog(@"Resultado: %@", result);
         // El ws retorna valores
         if(result.count > 0)
         {
             NSString *lg = result[@"lg"];
             NSLog(@"Valor de lg: %@", lg);
             
             // La hilera retornada contiene error 500
             if ([lg rangeOfString:@"-500"].length > 0) {
                 resultado = @"Credenciales no reconocidas.";
                 NSLog(@"%@",resultado);
                 NSString * infoMessage = @"Credenciales incorrectas";
                 resultado = infoMessage;
                 UIAlertController * alert=   [UIAlertController
                                               alertControllerWithTitle:@""
                                               message:infoMessage
                                               preferredStyle:UIAlertControllerStyleAlert];
                 UIAlertAction* ok = [UIAlertAction
                                      actionWithTitle:@"OK"
                                      style:UIAlertActionStyleDefault
                                      handler:^(UIAlertAction * action)
                                      {
                                          [alert dismissViewControllerAnimated:YES completion:nil];
                                      }];
                 
                 [alert addAction:ok];
                 [self presentViewController:alert animated:YES completion:nil];
                 //  [self removeBlurLoadingView];
                 return;
             } else {
                 /* NSString * infoMessage = @"Credenciales válidas.";
                 resultado = infoMessage;
                 UIAlertController * alert=   [UIAlertController
                                               alertControllerWithTitle:@"Ingreso a aplicación"
                                               message:infoMessage
                                               preferredStyle:UIAlertControllerStyleAlert];
                 UIAlertAction* ok = [UIAlertAction
                                      actionWithTitle:@"OK"
                                      style:UIAlertActionStyleDefault
                                      handler:^(UIAlertAction * action)
                                      {
                                          [alert dismissViewControllerAnimated:YES completion:nil];
                                          [self.navigationController popToRootViewControllerAnimated:TRUE];
                                      }];
                 
                 [alert addAction:ok];
                 [self presentViewController:alert animated:YES completion:nil];*/
                 //[self removeBlurLoadingView];
                 
                 NSArray *datosCliente = [lg componentsSeparatedByString:@":"];
                 NSLog(@"%@",datosCliente);
                 nomCliente = (NSString*)datosCliente[1];
                 // Llamando al Web View
                 webviewCNFLViewController *nextViewController = [self.storyboard  instantiateViewControllerWithIdentifier:@"webviewCNFLViewController"];
                 NSLog(@"nomcliente %@",nomCliente);
                 nextViewController.nombreCliente = nomCliente;
                 [self.navigationController pushViewController:nextViewController animated:true];
                 return;
             }
         } // result.count > 0
         // No hay resultados del ws
         else
         {
             NSString * infoMessage = @"Error de conexión, favor intentar de nuevo.";
             resultado = infoMessage;
             UIAlertController * alert=   [UIAlertController
                                           alertControllerWithTitle:@"CNFL, Solicitud EcoFactura"
                                           message:infoMessage
                                           preferredStyle:UIAlertControllerStyleAlert];
             UIAlertAction* ok = [UIAlertAction
                                  actionWithTitle:@"OK"
                                  style:UIAlertActionStyleDefault
                                  handler:^(UIAlertAction * action)
                                  {
                                      [alert dismissViewControllerAnimated:YES completion:nil];
                                  }];
             
             [alert addAction:ok];
             [self presentViewController:alert animated:YES completion:nil];
             //[self removeBlurLoadingView];
             return;
         }
     }];

    return resultado;
}




- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"CNFL Login";
    // Do any additional setup after loading the view, typically from a nib.
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 Fecha: 30/03/2017
 Autor: CNFL
Resultado: Genera la accion de pulsar boton deIngresar
 */

- (IBAction)btnCharles:(UIButton *)sender {

    [self validaLogin];
    
//        webviewCNFLViewController *nextViewController = [self.storyboard  instantiateViewControllerWithIdentifier:@"webviewCNFLViewController"];
//    
//        nextViewController.lclientedatos.text = @"Nombre"; // nomCliente;
//        [self.navigationController pushViewController:nextViewController animated:true];
}

//- (IBAction)btnIngresar:(id)sender {
//    NSLog(@"Llamando a validaLogin ");
////    [self validaLogin];
//
//    NSLog(@"Respuesta: %@", resultado);
//    NSLog(@"Nombre del cliente: %@",nomCliente);
//    
//    webviewCNFLViewController *nextViewController = [self.storyboard  instantiateViewControllerWithIdentifier:@"webviewCNFLViewController"];
//    
//    nextViewController.lclientedatos.text = @"Nombre"; // nomCliente;
//    [self.navigationController pushViewController:nextViewController animated:true];
//
//    
//} // btnIngresar


@end
