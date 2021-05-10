//
//  FieldSurveyDetailsViewController.swift
//  Field Survey
//
//  Created by Scott Sanders on 4/14/21.
//

import UIKit


class FieldSurveyDetailsViewController: UIViewController {
    
    
    @IBOutlet weak var fieldIconImageView: UIImageView!
    
    @IBOutlet weak var animalNameLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    var fieldSurveys: FieldSurvey?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let fieldSurveys = fieldSurveys {
            animalNameLabel.text = fieldSurveys.title
            fieldIconImageView.image = UIImage(named: fieldSurveys.classification.rawValue)
            //dateLabel.text = 
            
        }
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
