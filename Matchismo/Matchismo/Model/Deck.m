//
//  Deck.m
//  Matchismo
//
//  Created by Hai Nguyen on 11/23/15.
//  Copyright © 2015 Hai Nguyen. All rights reserved.
//

#import "Deck.h"

@interface Deck ()
@property (strong, nonatomic) NSMutableArray *cards;
@end

@implementation Deck

-(NSMutableArray *) cards {
    
    if(!_cards){
        /*
         * All properties start out with a value of 0 (called nil for pointers to objects).
         *
         * So all we need to do is allocate and initialize the object
         * if the pointer to object it is nil. This called "lazy instantiation"
         */
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}

-(void) addCard:(Card *) card atTop:(BOOL) atTop {
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    }else{
        [self.cards addObject:card];
    }
}

- (void) addCard:(Card *)card {
    [self addCard:card atTop: NO];
}

-(Card *) drawRandomCard{
    Card *randomCard = nil;
    
    //check array index out of bounds
    if([self.cards count]){
        unsigned index = arc4random() % [self.cards count];
        //Calling object at index with an empty array will crash
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex: index];
    }

    return randomCard;
}
@end
