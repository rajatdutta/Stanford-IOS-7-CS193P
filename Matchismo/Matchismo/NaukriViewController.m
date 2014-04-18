//
//  NaukriViewController.m
//  Matchismo
//
//  Created by bazinga on 12/04/14.
//  Copyright (c) 2014 naukri. All rights reserved.
//

#import "NaukriViewController.h"
//#import "deck.h"
#import "PlayingCardDeck.h"
#import "CardMatchingGame.h"

@interface NaukriViewController ()

/*@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong,nonatomic) Deck *deck;*/

@property (strong,nonatomic) CardMatchingGame *game;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;


@end

@implementation NaukriViewController
- (CardMatchingGame *)game
{
    if(!_game) _game = [[CardMatchingGame alloc] initWithCardCount:[self.cardButtons count] usingDeck:[self createDeck]];
    return _game;
}

- (void)updateUI
{
    for(UIButton *cardButton in self.cardButtons)
    {
        int cardButtonIndex = [self.cardButtons indexOfObject:cardButton];
        Card *card = [self.game cardAtIndex:cardButtonIndex];
        [cardButton setTitle:[self titleForCard:card] forState:UIControlStateNormal];
        
        [cardButton setBackgroundImage:[self backgroundImageForCard:card] forState:UIControlStateNormal];
        cardButton.enabled = !card.isMatched;
        self.scoreLabel.text = [NSString stringWithFormat:@"Score: %d",self.game.score];
        
    }
}

- (NSString *)titleForCard:(Card *)card
{
    return card.isChosen? card.contents:@"";
}

- (UIImage *)backgroundImageForCard:(Card *)card
{
    return  [UIImage imageNamed:card.isChosen ? @"cardfront" : @"cardback"];
}

/*
- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d",self.flipCount];
    NSLog(@"flips count : %d",self.flipCount);
    
}*/

- (IBAction)touchCardButton:(UIButton *)sender {
/*    if([sender.currentTitle length]) {
        UIImage *cardImage = [UIImage imageNamed:@"cardback"];
        [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }else {
        Card *card = [self.deck drawRandomCard];
        if(card)
        {
        UIImage *cardImage = [UIImage imageNamed:@"cardfront"];
        [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
        [sender setTitle:card.contents forState:UIControlStateNormal];
        }
        
    }
 self.flipCount++;
 */
    
    int chooseButtonIndex = [self.cardButtons indexOfObject:sender];
    [self.game chooseCardAtIndex:chooseButtonIndex];
    [self updateUI];
    
    
   
}

/*- (Deck *)deck
{
  if(!_deck)
  {
      _deck = [self createDeck];
  }
    return _deck;
}*/

- (Deck *)createDeck
{
    return [[PlayingCardDeck alloc] init];
}


/*
- (IBAction)flipCard:(UIButton *)sender {
    
    sender.Selected = !sender.isSelected;
    self.flipCount++;
    
}
*/

@end
