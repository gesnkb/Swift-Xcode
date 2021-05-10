//
//  SurveyTableViewCell.swift
//  Field Survey
//
//  Created by Scott Sanders on 4/14/21.
//

import UIKit

class SurveyTableViewCell: UITableViewCell {

    @IBOutlet weak var surveyIconImageView: UIImageView!
    @IBOutlet weak var animalName: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
