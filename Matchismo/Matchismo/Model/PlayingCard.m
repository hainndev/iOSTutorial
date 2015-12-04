//
//  PlayingCard.m
//  Matchismo
//
//  Created by Hai Nguyen on 11/23/15.
//  Copyright © 2015 Hai Nguyen. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

-(NSString *) contents{
    
    //@[] notation to create an array
    NSArray *rangeMapping = [PlayingCard rangeMapping];
    return [rangeMapping[self.rank] stringByAppendingString: self.suit];
}

//Class methods start with +
+ (NSArray *) validSuits {
    return @[@"♥",@"♦",@"♠",@"♣"];
}

+ (NSArray *) rangeMapping {
    return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

+ (NSUInteger) maxRank {
    return [[self rangeMapping] count] - 1;
}

//because we provide setter AND getter
@synthesize suit = _suit;

-(void) setSuit:(NSString *)suit {
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

//Get suit
-(NSString *) suit {
    return _suit ? _suit : @"?";
}

- (void)setRank:(NSUInteger)rank {
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}


@end
