//
//  ViewController.swift
//  Lab10_IBsegueactionAVplay080422
//
//  Created by Anson_Huang on 2022/8/4.
//

import UIKit
import AVKit
class ViewController: UIViewController {

    
    @IBOutlet weak var MV1: UIButton!
    
    @IBOutlet weak var MV2: UIButton!
    
   
    
    @IBOutlet weak var MV3: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func btnMv1(_ sender: UIButton) {
        switch sender {
        case MV1:
            print("btn mv1")
        case MV2:
            print("btn mv2")
        case MV3:
            print("btn mv3")
        default:
            break
        }
        
    }
    

    
    @IBSegueAction func mvChoice(_ coder: NSCoder, sender: Any?, segueIdentifier: String?) -> AVPlayerViewController? {
        
        var mvName : String = "私奔到月球"
        switch segueIdentifier {
        case "mv1":
            mvName  = "私奔到月球"
        case "mv2":
            mvName  = "終結孤單"
        case "mv3":
            mvName  = "終於結束的起點"
        default:
            mvName  = "私奔到月球"
        }
        
        let controller = AVPlayerViewController(coder: coder)
        let url = Bundle.main.url(forResource: mvName,withExtension:"mp4")
        controller?.player = AVPlayer(url: url!)
        controller?.player?.play()
        return controller
            
    }
    
    
    
    
    
    
    
    

}

