//
//  SecondViewController.m
//  TabExer
//
//  Created by Ileana Padilla on 3/18/14.
//  Copyright (c) 2014 paul. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

NSString *array[4] = {@"http://upload.wikimedia.org/wikipedia/commons/2/25/Audi_A1_Sportback_002.JPG",@"http://upload.wikimedia.org/wikipedia/commons/c/cc/Audi_A1_1.4_TFSI_Ambition_%E2%80%93_Heckansicht,_7._April_2011,_Velbert.jpg",@"http://www.audi.com.mx/etc/medialib/ngw/mx/Modelos/A1.Par.0002.Image.jpg/a1_info_modelo.jpg",@"http://www.audi.com.mx/etc/medialib/ngw/brand/design_studies0/audi_a1_e_tron.Par.0017.Image.jpg/704x396_a1_001.jpg"};
NSURL *url;
NSURL *url2;
NSURL *url3;
NSData *data;
NSData *data2;
NSData *data3;



@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self carga];
}

-(void)carga{
    
    url=[NSURL URLWithString:array[(arc4random()%4)]];
    url2=[NSURL URLWithString:array[(arc4random()%4)]];
    url3=[NSURL URLWithString:array[(arc4random()%4)]];
    data=[NSData dataWithContentsOfURL:url];
    data2=[NSData dataWithContentsOfURL:url2];
    data3=[NSData dataWithContentsOfURL:url3];
    self.imgView.image = [UIImage imageWithData:data];
    self.imgView2.image = [UIImage imageWithData:data2];
    self.imgView3.image = [UIImage imageWithData:data3];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)refresh:(id)sender {
    [self carga];
}
@end
