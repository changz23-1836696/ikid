//
//  NewPunViewController.swift
//  ikid
//
//  Created by 曾畅 on 5/5/21.
//

import UIKit

class NewPunViewController: UIViewController {

    @IBOutlet weak var text: UILabel!
    
    var joke: String = "You know why the old lady fell down the well?"
    var punch : String = "She didn't see that well"
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
