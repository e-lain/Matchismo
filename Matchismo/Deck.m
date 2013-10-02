//
//  Deck.m
//  Matchismo
//
//  Created by block7 on 9/9/13.
//  Copyright (c) 2013 block7. All rights reserved.
//

#import "Deck.h"

@interface Deck()
@property (strong, nonatomic) NSMutableArray *cards;

@end

@implementation Deck

- (NSMutableArray *)cards
{
    if (!_cards) _cards = [ [NSMutableArray alloc] init]; //initialize and allocate array to the heap by using getter (otherwise the array is nill and nothing happens
    return _cards;
}

-(void)addCard:(Card *)card atTop:(BOOL)atTop
{
    if (atTop) { //if the card is "atTop", add card object to the array at the start
        [self.cards insertObject:card atIndex:0];
    } else { //otherwise add a card object to the bottom of the array
        [self.cards addObject:card];
    }
}

-(Card *)drawRandomCard
{
    Card *randomCard = nil;
   
    if (self.cards.count) {
        unsigned index = arc4random() % self.cards.count;
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
        
    }
    return randomCard;
    
}

@end
