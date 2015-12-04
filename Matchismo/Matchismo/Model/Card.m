//
//  Card.m
//  Matchismo
//
//  Created by Hai Nguyen on 11/23/15.
//  Copyright © 2015 Hai Nguyen. All rights reserved.
//

#import "Card.h"

@implementation Card

-(int) match:(NSArray *) otherCard {
    int score = 0;
    for (Card *card in otherCard){
        if([card.contents isEqualToString:self.contents]){
            score = 1;
        }
    }
    return score;
}
@end
