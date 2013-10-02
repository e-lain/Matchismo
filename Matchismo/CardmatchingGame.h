//
//  CardmatchingGame.h
//  Matchismo
//
//  Created by block7 on 9/18/13.
//  Copyright (c) 2013 block7. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
#import "Deck.h"

@interface CardmatchingGame : NSObject
@property (nonatomic, readonly) int score;

- (id)initWithCardCount:(NSUInteger)cardCount usingDeck:(Deck *)deck;
- (void)flipCardAtIndex:(NSUInteger)index;
-(Card *)cardAtIndex:(NSUInteger)index;

@end