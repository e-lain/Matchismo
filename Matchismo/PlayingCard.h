//
//  PlayingCard.h
//  Matchismo
//
//  Created by block7 on 9/10/13.
//  Copyright (c) 2013 block7. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits; //Array of all possible suits
+ (NSUInteger) maxRank; //Caps the largest rank to number of entries in rankStrings array -1


@end
