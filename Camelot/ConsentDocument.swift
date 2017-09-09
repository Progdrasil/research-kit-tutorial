//
//  ConsentDocument.swift
//  Camelot
//
//  Created by René Léveillé on 2017-09-08.
//  Copyright © 2017 René Léveillé. All rights reserved.
//

import Foundation
import ResearchKit

public var ConsentDocument: ORKConsentDocument {
    
    let consentDocument = ORKConsentDocument()
    consentDocument.title = "Example Consent"
    
    // consent sections
    let consentSectionTypes: [ORKConsentSectionType] = [
        .overview,
        .dataGathering,
        .privacy,
        .dataUse,
        .timeCommitment,
        .studySurvey,
        .studyTasks,
        .withdrawing
    ]
    
    var consentSections: [ORKConsentSection] = consentSectionTypes.map { contentSectionType in
        let consentSection = ORKConsentSection(type: contentSectionType)
        consentSection.summary = "If you wish to complete this study..."
        consentSection.content = "In this study you will be asked five, wait, no, three! questions. You will also have your voice recorded for ten seconds."
        return consentSection
    }
    
    consentDocument.sections = consentSections
    
    // signature
    consentDocument.addSignature(ORKConsentSignature(forPersonWithTitle: nil, dateFormatString: nil, identifier: "ConsentDocumentParticipatantSignature"))
    
    return consentDocument
}
