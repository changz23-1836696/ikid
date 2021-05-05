//
//  NewGoodViewController.swift
//  ikid
//
//  Created by 曾畅 on 5/5/21.
//

import UIKit

class NewGoodViewController: UIViewController {

    
    @IBOutlet weak var pic: UIImageView!
    @IBOutlet weak var text: UILabel!
    var joke : String = "When you try to understand a girl"
    var flipper : Int = -1;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pic.image = UIImage(named: "pun")
        pic.contentMode = .scaleAspectFit
        pic.transform = .identity
        pic.isHidden = true
        text.text = joke
        flipper = -1
        // Do any additional setup after loading the view.
    }
    

    @IBAction func flip(_ sender: Any) {
        flipper *= -1
        if(flipper == -1){
            text.text = joke
            pic.isHidden = true
        }else{
            text.text = ""
            pic.isHidden = false
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
