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
    
    //TODO: consent sections
    
    //TODO: signature
    
    return consentDocument
}
