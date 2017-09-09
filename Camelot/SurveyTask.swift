//
//  SurveyTask.swift
//  Camelot
//
//  Created by René Léveillé on 2017-09-09.
//  Copyright © 2017 René Léveillé. All rights reserved.
//

import Foundation
import ResearchKit

public var SurveyTask: ORKOrderedTask {
    var steps = [ORKStep]()
    
    // add instructions step
    let instructionStep = ORKInstructionStep(identifier: "IntroStep")
    instructionStep.title = "The Questions Three"
    instructionStep.text = "Who would cross the Bridge of Death must answer me these questions three, ere the other side they see."
    steps += [instructionStep]
    
    // add name question
    let nameAnswerFormat = ORKTextAnswerFormat(maximumLength: 20)
    nameAnswerFormat.multipleLines = false
    let nameQuestionStepTitle = "What, is your name?"
    let nameQuestionStep = ORKQuestionStep(identifier: "QuestionStep", title: nameQuestionStep, answer: nameAnswerFormat)
    steps += [nameQuestionStep]
    
    //TODO: Add quest question
    
    
    //TODO: add color question
    
    
    //TODO: add summary step
    
    
    return ORKOrderedTask(identifier: "SurveyTask", steps: steps)
}
