//
//  PunPunchViewController.swift
//  ikid
//
//  Created by 曾畅 on 5/5/21.
//

import UIKit

class GoodPunchViewController: UIViewController {

    @IBOutlet weak var pic: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        pic.image = UIImage(named: "pun")
        pic.contentMode = .scaleAspectFit
        pic.transform = .identity
        // Do any additional setup after loading the view.
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
