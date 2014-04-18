//
//  PlayingCard.h
//  Matchismo
//
//  Created by bazinga on 13/04/14.
//  Copyright (c) 2014 naukri. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;


+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
