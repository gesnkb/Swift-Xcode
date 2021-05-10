//
//  FieldSurveyLoader.swift
//  Field Survey
//
//  Created by Scott Sanders on 4/14/21.
//

import Foundation

class FieldSurveyLoader {
    
    class func load(jsonFileName: String) -> Observations? {
        var fieldSurvey: Observations?
        let jsonDecoder = JSONDecoder()
        
        if let jsonFileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"), let jsonData = try? Data(contentsOf: jsonFileUrl) {
            
            fieldSurvey = try? jsonDecoder.decode(Observations.self, from: jsonData)
            
        }
        return fieldSurvey
    }
    
}
