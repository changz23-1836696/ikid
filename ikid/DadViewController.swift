//
//  DadViewController.swift
//  ikid
//
//  Created by 曾畅 on 5/4/21.
//

import UIKit

class DadViewController: UIViewController {

    var dadFaceViewController : DadFaceViewController! = nil
    var dadPunchViewController : DadPunchViewController! = nil


    override func viewDidLoad() {
        super.viewDidLoad()

        punchlineBuilder()
        faceBuilder()
        swiftViewController(nil, to: dadFaceViewController)
        // Do any additional setup after loading the view.
    }

    @IBAction func switchView(_ sender: Any) {

        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(0.4)
        UIView.setAnimationCurve(.easeInOut)
        if dadFaceViewController != nil && dadFaceViewController?.view.superview != nil {
            UIView.setAnimationTransition(.flipFromLeft, for: view, cache: true)
            dadPunchViewController.view.frame = view.frame
            swiftViewController(dadFaceViewController, to: dadPunchViewController)
        }else{
            UIView.setAnimationTransition(.flipFromLeft, for: view, cache: true)
            dadFaceViewController.view.frame = view.frame
            swiftViewController(dadPunchViewController, to: dadFaceViewController)
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
        if dadPunchViewController == nil {
            dadPunchViewController = storyboard?.instantiateViewController(withIdentifier: "dad2") as! DadPunchViewController
        }
    }

    fileprivate func faceBuilder() {
        if dadFaceViewController == nil {
            dadFaceViewController = storyboard?.instantiateViewController(withIdentifier: "dad1") as! DadFaceViewController
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
//class DadViewController: UIViewController {
//    override func viewDidLoad() {
//            super.viewDidLoad()
//
//    }
//}
