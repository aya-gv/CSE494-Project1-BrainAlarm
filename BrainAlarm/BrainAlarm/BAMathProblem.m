//
//  BAMathProblem.m
//  BrainAlarm
//
//  Created by Nathaniel Mendoza on 11/5/14.
//  Copyright (c) 2014 ___CSE494___. All rights reserved.
//

#import "BAMathProblem.h"

@implementation BAMathProblem

//if the answer is correct, send YES
-(BOOL)isAnswerCorrect:(int)answer
{
    if(self.answer == answer)
    {
        return YES;
    }
    else
    {
        return NO;
    }
}

-(NSString*)ToString
{
    //format a string to be sent to the view label
    NSString *result = [NSString stringWithFormat:@"%d %@ %d", self.operand1, self.operation, self.operand2];
    return result;
}


//constructor
-(instancetype) initGenerateProblem
{
    self = [super init];
    if(self)
    {
        //generate a number from 1 to 3
        int operationInt = 1 + arc4random_uniform(3);
        int lBound, uBound;
        
        switch(operationInt)
        {
            case 1:// if addition type, generate two operands between 101 and 9999
                self.operation = @"+";
                lBound = 101;
                uBound = 9999;
                
                //generate random numbers
                self.operand1 = lBound + arc4random_uniform(uBound - lBound + 1);
                self.operand2 = lBound + arc4random_uniform(uBound - lBound + 1);
                //add the two operands
                self.answer = self.operand1 + self.operand2;
                
                break;
            case 2:// if subtraction type, generate two operands between 101 and 9999
                self.operation = @"-";
                lBound = 101;
                uBound = 9999;
                
                //generate random numbers
                self.operand1 = lBound + arc4random_uniform(uBound - lBound + 1);
                self.operand2 = lBound + arc4random_uniform(uBound - lBound + 1);
                //subtract the two operands
                self.answer = self.operand1 - self.operand2;
                break;
                
            case 3:// if multiplication, generate two operands between 11 and 99
                self.operation = @"*";
                lBound = 11;
                uBound = 99;
                
                //generate operands
                self.operand1 = lBound + arc4random_uniform(uBound - lBound + 1);
                self.operand2 = lBound + arc4random_uniform(uBound - lBound + 1);
                //multiply to get the answer
                self.answer = self.operand1 * self.operand2;
                break;
        }
    }
    return self;
    
}

@end
