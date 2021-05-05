//
//  PunViewController.swift
//  ikid
//
//  Created by 曾畅 on 5/5/21.
//

import UIKit

class PunViewController: UIViewController {

    var punFaceViewController : PunFaceViewController! = nil
    var punPunchViewController : PunPunchViewController! = nil


    override func viewDidLoad() {
        super.viewDidLoad()

        punchlineBuilder()
        faceBuilder()
        swiftViewController(self, to: punFaceViewController)
        // Do any additional setup after loading the view.
    }

    @IBAction func switchView(_ sender: Any) {

        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(0.4)
        UIView.setAnimationCurve(.easeInOut)
        if punFaceViewController != nil && punFaceViewController?.view.superview != nil {
            UIView.setAnimationTransition(.flipFromLeft, for: view, cache: true)
            punPunchViewController.view.frame = view.frame
            swiftViewController(punFaceViewController, to: punPunchViewController)
        }else{
            UIView.setAnimationTransition(.flipFromLeft, for: view, cache: true)
            punFaceViewController.view.frame = view.frame
            swiftViewController(punPunchViewController, to: punFaceViewController)
        }
        UIView.commitAnimations()
    }

    fileprivate func swiftViewController(_ from : UIViewController?, to : UIViewController?){
        if from != nil {
            from!.willMove(toParent: nil)
            from!.view.removeFromSuperview()
            from!.removeFromParent()
        }

        if to != nil {
            self.addChild(to!)
            self.view.insertSubview(to!.view, at: 0)
            to!.didMove(toParent: self)
        }
    }

    fileprivate func punchlineBuilder() {
        if punPunchViewController == nil {
            punPunchViewController = storyboard?.instantiateViewController(withIdentifier: "pun2") as! PunPunchViewController
        }
    }

    fileprivate func faceBuilder() {
        if punFaceViewController == nil {
            punFaceViewController = storyboard?.instantiateViewController(withIdentifier: "pun1") as! PunFaceViewController
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
//import UIKit
//class PunViewController: UIViewController {
//    override func viewDidLoad() {
//            super.viewDidLoad()
//    }
//}

