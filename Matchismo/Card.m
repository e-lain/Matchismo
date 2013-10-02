//
//  Card.m
//  Matchismo
//
//  Created by block7 on 9/4/13.
//  Copyright (c) 2013 block7. All rights reserved.
//.h header files are public    

#import "Card.h"

@interface Card()

@end
 
@implementation Card

- (int)match:(NSArray *) otherCards
{
    int score = 0;
    
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]){ //get contents of card in question and compare it to current card's contents
            score = 1;
        }
    
    }
    
    return score;
    
}

@end
