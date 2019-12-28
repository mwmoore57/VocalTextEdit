//
//  ViewController.swift
//  VocalTextEdit
//
//  Created by Michael W. Moore on 12/26/19.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    let speechSynthesizer = NSSpeechSynthesizer()

    @IBOutlet var textView: NSTextView!
    
    var contents: String? {
        get {
            return textView.string
        }
        set {
            textView.string = newValue ?? ""
        }
    }
    
    @IBAction func speakButtonClicked(_ sender: NSButton) {
        print("I should speak \(textView.string)")
        let contents = textView.string
        if !contents.isEmpty {
            speechSynthesizer.startSpeaking(contents)
        } else {
            speechSynthesizer.startSpeaking("The document is empty.")
        }
    }

    @IBAction func stopButtonClicked(_ sender: NSButton) {
        speechSynthesizer.stopSpeaking()
    }
}

