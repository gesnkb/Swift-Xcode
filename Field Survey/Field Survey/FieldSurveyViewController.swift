//
//  FieldSurveyViewController.swift
//  Field Survey
//
//  Created by Scott Sanders on 4/14/21.
//

import UIKit

class FieldSurveyViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var surveyTableView: UITableView!
    
    let jsonFileName = "field_observations"
    var fieldSurvey: Observations?
  
    //var fieldSurvey = Observations?
    //fieldSurvey = FieldSurveyLoader.load(jsonFileName: "field_observations")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fieldSurvey = FieldSurveyLoader.load(jsonFileName: jsonFileName)
            
        
        if fieldSurvey == nil {
            
            print("unable to read JSON file")
        }
        
        //fieldSurvey = FieldSurveyLoader.load(jsonFileName: "field_observations")
        
        
            //var displayInfo = " "
            
            //displayInfo += (fieldSurvey.classification)
            //displayInfo += (fieldSurvey.title)
            //displayInfo += (fieldSurvey.description)
            //displayInfo += (fieldSurvey.date)
            
            
        }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fieldSurvey?.observations.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = surveyTableView.dequeueReusableCell(withIdentifier: "surveyEventCell", for: indexPath)
        
        if let cell = cell as? SurveyTableViewCell,
            let fieldSurveys = fieldSurvey?.observations[indexPath.row] {
            cell.surveyIconImageView.image = UIImage(named: fieldSurveys.classification.rawValue)
            cell.animalName.text = fieldSurveys.title
            //cell.dateLabel.text = fieldSurveys?.date
        }
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? FieldSurveyDetailsViewController,
           let selectedIndexPath = surveyTableView.indexPathForSelectedRow {
            destination.fieldSurveys = fieldSurvey?.observations[selectedIndexPath.row]
        }
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


