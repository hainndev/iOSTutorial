//
//  PlayingCard.h
//  Matchismo
//
//  Created by Hai Nguyen on 11/23/15.
//  Copyright © 2015 Hai Nguyen. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

//Suit as NSString that contains a signgle character corresponding to the suit ♠♣♥♦
@property (strong, nonatomic) NSString *suit;

//Rank as (int 32 bits) from 0 - 13 (king)
@property (nonatomic) NSUInteger rank;

//public method
+ (NSArray *) validSuits;

+ (NSUInteger) maxRank;

@end
