//
//  Deck.h
//  Matchismo
//
//  Created by block7 on 9/9/13.
//  Copyright (c) 2013 block7. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

-(void)addCard:(Card *)card atTop: (BOOL)atTop; //Add a card object to the deck, which may or may not be at the top depending on the (BOOL)atTop

-(Card *)drawRandomCard;

@end
