//
//  NewView.swift
//  IOS Learning
//
//  Created by Naveen kUSHWAHA on 02/11/23.
//  Copyright © 2023 Naveen kUSHWAHA. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class NewView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var play: UIButton!
    
    @IBAction func play(_ sender: Any) {
        let path = Bundle.main.path(forResource: "V", ofType: "mp4")
        let myurl = URL(fileURLWithPath: path!)
        let vlc = AVPlayer(url: myurl)
        let myvlc = AVPlayerViewController()
        myvlc.player = vlc
        present(myvlc, animated: true, completion: nil)
        
    }
    
}



