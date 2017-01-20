//
//  ViewController.m
//  Quizapp
//
//  Created by Erika Linde on 17/01/17.
//  Copyright © 2017 Erika Linde. All rights reserved.
//

#import "ViewController.h"
#import "Model.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *alt4;


@property (weak, nonatomic) IBOutlet UILabel *rightanswer;
@property (weak, nonatomic) IBOutlet UIButton *guess3;
@property (weak, nonatomic) IBOutlet UILabel *alt3;
@property (weak, nonatomic) IBOutlet UIButton *guess4;

@property Model * model;
@property NSMutableArray * questionsandanswers;
@property (weak, nonatomic) IBOutlet UILabel *question;
@property (weak, nonatomic) IBOutlet UIButton *guess1;
@property (weak, nonatomic) IBOutlet UILabel *rightOrWrong;

@property (weak, nonatomic) IBOutlet UIButton *guess2;

@property (weak, nonatomic) IBOutlet UILabel *alt2;

@property (weak, nonatomic) IBOutlet UIButton *nextQuestion;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.model = [[Model alloc] init];
     self.questionsandanswers = [self.model getQuestioAndAnswers];
    
    self.question.text = self.questionsandanswers[4];
    self.rightanswer.text =self.questionsandanswers[0];
    self.alt2.text = self.questionsandanswers[1];
    self.alt3.text = self.questionsandanswers[2];
    self.alt4.text = self.questionsandanswers[3];
}

- (IBAction)buttonPressed:(id)sender {
    BOOL* validatedAnswer = [self.model validateAnswer: (self.questionsandanswers[0])];
    if(validatedAnswer)
    {
        self.rightOrWrong.text = @"Rätt gissat";
    }
    else
    {
        self.rightOrWrong.text = @"Fel gissat!";
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed2:(id)sender {
    BOOL* validatedAnswer = [self.model validateAnswer: (self.questionsandanswers[1])];
    if(validatedAnswer)
    {
        self.rightOrWrong.text = @"Rätt gissat";
    }
    else
    {
        self.rightOrWrong.text = @"Fel gissat!";
    }
}

- (IBAction)buttunPressed3:(id)sender {
    BOOL* validatedAnswer = [self.model validateAnswer: (self.questionsandanswers[2])];
    if(validatedAnswer)
    {
        self.rightOrWrong.text = @"Rätt gissat";
    }
    else
    {
        self.rightOrWrong.text = @"Fel gissat!";
    }
}

- (IBAction)buttonPressed4:(id)sender {
    BOOL* validatedAnswer = [self.model validateAnswer: (self.questionsandanswers[3])];
    if(validatedAnswer)
    {
        self.rightOrWrong.text = @"Rätt gissat";
    }
    else
    {
        self.rightOrWrong.text = @"Fel gissat!";
    }
}

- (IBAction)nextQuestion:(id)sender {
    self.rightOrWrong.text = @"svar";
    self.questionsandanswers = [self.model getQuestioAndAnswers];
    
     self.question.text = self.questionsandanswers[4];
    
    self.rightanswer.text = self.questionsandanswers[0];
    
    self.alt2.text = self.questionsandanswers[1];
    
    self.alt3.text = self.questionsandanswers[2];
    
    self.alt4.text = self.questionsandanswers[3];
}

@end
