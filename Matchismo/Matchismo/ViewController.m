//
//  ViewController.m
//  Matchismo
//
//  Created by Hai Nguyen on 11/12/15.
//  Copyright © 2015 Hai Nguyen. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabels;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) Deck *deck;
@end

@implementation ViewController

//methord getDeck 
- (Deck *) deck{
    if(!_deck){
        _deck = [self createDeck];
    }
    return _deck;
}

- (Deck *) createDeck{
    return [[PlayingCardDeck alloc] init];
}

- (void) setFlipCount:(int)flipCount{
    _flipCount = flipCount;
    self.flipsLabels.text = [NSString stringWithFormat:@"Flips: %d", flipCount];
    NSLog(@"Flips count changed to %d", flipCount);
}

- (IBAction)touchCardButton:(UIButton *)sender {
    
    //check if card had title it will change background image
    if ([sender.currentTitle length]) {
        
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
        
    }else {
        //create a card by random
        Card *randomCard = [self.deck drawRandomCard];
        if(randomCard){
            [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                              forState:UIControlStateNormal];
            [sender setTitle:randomCard.contents forState:UIControlStateNormal];
        }
        
        

    }
    self.flipCount++;
    
}


@end
