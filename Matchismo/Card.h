//
//  Card.h
//  Matchismo
//
//  Created by block7 on 9/4/13.
//  Copyright (c) 2013 block7. All rights reserved.
//.m files are private

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents; //create setter and getter for property "contents". It is a "pointer" to NSString.  They are cleaned up once object is no longer pointed to when (strong) is there.  (weak) is used to say it only points when there are other properties pointing to it strongly.  Properties talk to instance variables.

@property (nonatomic, getter=isFaceUp) BOOL faceUp;
@property (nonatomic, getter=isunplayable) BOOL unplayable;

- (int)match:(Card *) card; //check if card matches

@end
