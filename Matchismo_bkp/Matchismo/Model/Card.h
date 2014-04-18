//
//  Card.h
//  Matchismo
//
//  Created by bazinga on 13/04/14.
//  Copyright (c) 2014 naukri. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject


@property (strong,nonatomic) NSString *contents;

@property (nonatomic,getter = isFaceUp) BOOL faceUp;
@property (nonatomic,getter=isUnplayable) BOOL unplayable;

-(int)match:(NSArray *) otherCards;


@end
