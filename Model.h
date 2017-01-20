//
//  Model.h
//  Quizapp
//
//  Created by Erika Linde on 17/01/17.
//  Copyright © 2017 Erika Linde. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Model : NSObject
@property (nonatomic) Model *model;
-(NSMutableArray*) getQuestioAndAnswers;
-(BOOL) validateAnswer:(NSString*)answer;
@end
