//
//  Deck.h
//  Matchismo
//
//  Created by bazinga on 13/04/14.
//  Copyright (c) 2014 naukri. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;

- (Card *)drawRandomCard;

@end
