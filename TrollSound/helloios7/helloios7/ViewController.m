//
//  ViewController.m
//  helloios7
//
//  Created by Gorro on 28/12/13.
//  Copyright (c) 2013 Gorro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize trollLabel;
@synthesize lawLabel;
@synthesize badumLabel;
@synthesize clampLabel;
@synthesize wrongLabel;

AVAudioPlayer *player;
NSURL *lawUrl;
NSURL *badumUrl;
NSURL *clampUrl;
NSURL *wrongUrl;
NSURL *randomTroll;

NSArray *arreglo;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Creando objetos para la fuente customizada
    UIFont *fontCustom = [UIFont fontWithName:@"Fluoxetine" size:25.0f];
    UIFont *fontCustom2 = [UIFont fontWithName:@"Fluoxetine" size:15.0f];
    
    //asignando fuente
    trollLabel.font = fontCustom;
    wrongLabel.font = fontCustom2;
    badumLabel.font = fontCustom2;
    clampLabel.font = fontCustom2;
    lawLabel.font =fontCustom2;
    
    
    //asignando textos a los labels
    trollLabel.text = @"TROLL Sound";
    wrongLabel.text = @"wrong";
    badumLabel.text = @"ba dum tss";
    clampLabel.text = @"clamps";
    lawLabel.text = @"law & order";
    
    trollLabel.transform = CGAffineTransformMakeRotation((-10 * M_PI)/100);
    
    //asignando los PATH de los sonidos para despues ser asignados a un objeto player y asi ser reproducidos
    
    lawUrl = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"doink_doink" ofType:@"mp3"]];
    badumUrl = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"BaDumTss" ofType:@"mp3"]];
    clampUrl = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"aplausos" ofType:@"wav"]];
    wrongUrl = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"wrong" ofType:@"wav"]];
    
    //este arreglo nos sirve para que mas adelante con la ayuda de un random accesemos al PATH del sonido que se reproducira aleatoriamente
    arreglo = [[NSArray alloc] initWithObjects:lawUrl,badumUrl,clampUrl,wrongUrl, nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)law:(id)sender {
    player = [[AVAudioPlayer alloc] initWithContentsOfURL:lawUrl error:nil];
    [player play];
}

- (IBAction)badum:(id)sender {
    player = [[AVAudioPlayer alloc] initWithContentsOfURL:badumUrl error:nil];
    [player play];
}

- (IBAction)clamps:(id)sender {
    player = [[AVAudioPlayer alloc] initWithContentsOfURL:clampUrl error:nil];
    [player play];
}

- (IBAction)wrong:(id)sender {
    player = [[AVAudioPlayer alloc] initWithContentsOfURL:wrongUrl error:nil];
    [player play];
}

- (IBAction)troll:(id)sender {
    
    int randomNum = rand()%4;
    
    NSLog(@"dime el numero random %i",randomNum);
    player = [[AVAudioPlayer alloc] initWithContentsOfURL:[arreglo objectAtIndex:randomNum] error:nil];
    [player play];
    
}
@end
