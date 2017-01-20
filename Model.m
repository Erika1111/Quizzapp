//
//  Model.m
//  Quizapp
//
//  Created by Erika Linde on 17/01/17.
//  Copyright © 2017 Erika Linde. All rights reserved.
//

#import "Model.h"

@interface Model ()
//ligger privata properties såsom listan med frågor med tillhörande svar
@property (nonatomic) NSDictionary *questions;
@property NSMutableArray *answers;
@end

@implementation Model


- (instancetype)init
{
    self = [super init];
    if (self) {
        //sätta värderna som min array skall innehålla
        _questions = @{
                       @"Vad är ett fordon?" : @[@"Bil",@"Apa",@"Sol",@"Hus"].mutableCopy,
                       @"När föddes Erika?" : @[@"1981",@"1985",@"1289",@"1978"].mutableCopy,
                       @"När skapades första bilen?" : @[@"1881",@"1885",@"1919",@"1878"].mutableCopy,
                       @"Vad är en magisk loop?" : @[@"Ett sätt att sticka",@"En ful bild",@"Ett gem",@"En kopp"].mutableCopy,
                       @"Vad är brioche?" : @[@"Stickning med texttur",@"En bakelse",@"Ett uttryck",@"En frisyr"].mutableCopy,
                       @"Vad är 2by2rib?" : @[@"2 räta och 2 aviga",@"Ett djur",@"En drink",@"Ett spel"].mutableCopy,
                       @"Vem skrev I will always love you?" : @[@"Dolly Parton",@"Whitney Houston",@"Ricky Martin",@"Elvis Presley"].mutableCopy,
                       @"Vad är namnet för Tall på latin?" : @[@"Pinus Sylvatris",@"Pinus Fularis",@"Siliraris Pulus",@"Punus Acilus"].mutableCopy,
                       @"Vad betyder att ett garn är 4ply?" : @[@"Garnet har 4 trådar",@"Garnet kostar 4 gånger mer",@"Garnet värmer 4 gånger mer",@"Garnet innehåller 4 sorter"].mutableCopy,
                       @"Vad är mohair?" : @[@"Garn från mohairfår",@"Garn från mohairkanin",@"Garn från mohairhund",@"Garn från mohairlama"].mutableCopy
                       };
    }
    return self;
}

//metod som slumpar en fråga och sätter frågan i en variabel samt alla svar i varsin variabel
-(NSMutableArray*) getQuestioAndAnswers {
    //self.questions[@"dfdf"];
    NSArray* keys = self.questions.allKeys;
    NSString *question = keys[(arc4random() % keys.count)];
    _answers = self.questions[question];
    [_answers addObject:question];
    return _answers;
}

//skall ta stränget svaret som argument
-(BOOL) validateAnswer:(NSString*)answer{
    if ([answer isEqualToString:_answers[0]]) {
        return YES;
    }
    return NO;
}

@end

