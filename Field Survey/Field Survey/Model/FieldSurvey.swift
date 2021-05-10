//
//  FieldSurvey.swift
//  Field Survey
//
//  Created by Scott Sanders on 4/14/21.
//

import Foundation
import UIKit

enum classifications: String, Codable {
    case amphibian
    case reptile
    case bird
    case insect
    case plant

}
struct FieldSurvey: Codable {
    var title: String
    var description: String
    var date: Date
    var classification: classifications
    
}

struct Observations: Codable {
    var observations: [FieldSurvey]
    
}
