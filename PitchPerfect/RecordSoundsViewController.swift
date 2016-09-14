//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Prafull Kumar Soni on 9/13/16.
//  Copyright © 2016 pksprojects. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var record: UIButton!
    @IBOutlet weak var stopRecording: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecording.isEnabled = false
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(_ sender: AnyObject) {
        recordingLabel.text = "Recording..."
        record.isEnabled = false
        stopRecording.isEnabled = true
    }

    @IBAction func stopRecording(_ sender: AnyObject) {
        recordingLabel.text = "Tap to record"
        record.isEnabled = true
        stopRecording.isEnabled = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("Called view will appear")
    }
}

