//
//  PlayingCard.m
//  Matchismo
//
//  Created by block7 on 9/10/13.
//  Copyright (c) 2013 block7. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

-(int)match:(NSArray *)otherCards
{
    int score = 0;
    
    if (otherCards.count == 1) {
        PlayingCard *otherCard = [otherCards lastObject];
        if ([otherCard.suit isEqualToString:self.suit]) {
            score = 1;
        } else if (otherCard.rank == self.rank) {
            score = 4;
        }
    }
    return score;
}

- (NSString *)contents //return rank of card (references rankStrings array)
{
    NSArray *rankStrings = [PlayingCard rankStrings];
     return [rankStrings [self.rank] stringByAppendingString:self.suit];
} 

@synthesize suit = _suit; //Both setter AND getter provided, so need this

+ (NSArray *)validSuits //Array of all possible suits
{
    return @[@"♥",@"♦",@"♠",@"♣"];
}

-(void)setSuit:(NSString *)suit //Set suit only if the suit is a validSuits
{
    if ([ [PlayingCard validSuits]containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *)suit //if suit is unknown return ?
{
    return _suit ? _suit : @"?";
}

+ (NSArray *)rankStrings //Array of all possible ranks
{
    return @[@"?", @"A", @"2", @"3",@"4", @"5", @"6", @"7", @"8", @"9",@"10",@"J",@"Q",@"K"];
}

+ (NSUInteger) maxRank { return [self rankStrings].count-1; } //Caps the largest rank to number of entries in rankStrings array -1

- (void)setRank:(NSUInteger)rank //Only set the rank of the card if the rank is <= maxRank
{
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

@end
