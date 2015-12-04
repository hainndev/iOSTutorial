//
//  PlayingCardDeck.m
//  Matchismo
//
//  Created by Hai Nguyen on 11/23/15.
//  Copyright © 2015 Hai Nguyen. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

//override method init NSObject
//instancetype that is return a object the same type as the object that this message was send to.
-(instancetype) init {
    
    self = [super init];

    if(self){
        //create 52 cards
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSUInteger rank = 1; rank < [PlayingCard maxRank]; rank++) {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                //add card to Deck
                [self addCard:card];
            }
        }
        
    }
    return self;
}
@end
