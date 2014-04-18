//
//  NaukriViewController.m
//  Matchismo
//
//  Created by bazinga on 12/04/14.
//  Copyright (c) 2014 naukri. All rights reserved.
//

#import "NaukriViewController.h"
#import "PlayingCardDeck.h"

@interface NaukriViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong,nonatomic) PlayingCardDeck *deck;

@end

@implementation NaukriViewController


- (PlayingCardDeck *)deck
{
  if(!_deck)
  {
      _deck = [[PlayingCardDeck alloc] init];
  }
    return _deck;
}


- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d",self.flipCount];

}

- (IBAction)flipCard:(UIButton *)sender {
    
    sender.Selected = !sender.isSelected;
    
    
    if(sender.selected)
    {
        Card *card = [self.deck drawRandomCard];
        if(card)
        {
            self.flipCount++;
            [sender setTitle:[card contents] forState:UIControlStateSelected];
        }
    }
}


@end
