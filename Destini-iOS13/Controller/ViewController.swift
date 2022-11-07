//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var story = StoryBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        UIupdate()
    }
    
    var timer = Timer()

    @IBAction func answerFunction(_ sender: UIButton) {
        
        story.answer(ans: sender.currentTitle!)
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(UIupdate), userInfo: nil, repeats: false)
        
        
    }
    
   @objc func UIupdate(){
        storyLabel.text = story.getQuestion()
        choice1Button.setTitle(story.getChoice1(), for: .normal)
        choice2Button.setTitle(story.getChoice2(), for: .normal)
    }
}

