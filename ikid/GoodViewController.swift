//
//  GoodViewController.swift
//  ikid
//
//  Created by 曾畅 on 5/5/21.
//
//mar

import UIKit

class GoodViewController: UIViewController {

    var goodFaceViewController : GoodFaceViewController! = nil
    var goodPunchViewController : GoodPunchViewController! = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        punchlineBuilder()
        faceBuilder()
        swiftViewController(nil, to: goodFaceViewController)
        // Do any additional setup after loading the view.
    }

    @IBAction func switchView(_ sender: Any) {

        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(0.4)
        UIView.setAnimationCurve(.easeInOut)
        if goodFaceViewController != nil && goodFaceViewController?.view.superview != nil {
            UIView.setAnimationTransition(.flipFromLeft, for: view, cache: true)
            goodPunchViewController.view.frame = view.frame
            swiftViewController(goodFaceViewController, to: goodPunchViewController)
        }else{
            UIView.setAnimationTransition(.flipFromLeft, for: view, cache: true)
            goodFaceViewController.view.frame = view.frame
            swiftViewController(goodPunchViewController, to: goodFaceViewController)
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
        if goodPunchViewController == nil {
            goodPunchViewController = storyboard?.instantiateViewController(withIdentifier: "good2") as! GoodPunchViewController
        }
    }

    fileprivate func faceBuilder() {
        if goodFaceViewController == nil {
            goodFaceViewController = storyboard?.instantiateViewController(withIdentifier: "good1") as! GoodFaceViewController
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
//
//class GoodViewController: UIViewController {
//    override func viewDidLoad() {
//            super.viewDidLoad()
//    }
//}
