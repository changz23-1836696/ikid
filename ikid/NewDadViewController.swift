//
//  NewDadViewController.swift
//  ikid
//
//  Created by 曾畅 on 5/5/21.
//

import UIKit

class NewDadViewController: UIViewController {

    @IBOutlet weak var text: UILabel!
    var joke: String = "Which U.S. state is famous for its extra-small soft drinks?"
    var punch : String = "Minnesota!"
    var flipper : Int = -1;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        flipper = -1;
        text.text = joke
        // Do any additional setup after loading the view.
    }
    

    @IBAction func flip(_ sender: Any) {
        flipper *= -1
        if(flipper == -1){
            text.text = joke
        }else{
            text.text = punch
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
