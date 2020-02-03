//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let chosenPath = sender.currentTitle!
        storyBrain.nextStory(chosenPath)
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getTitle()
        let choices = storyBrain.getChoices()
        
        choice1Button.setTitle(choices[0] ,for: .normal)
        choice2Button.setTitle(choices[1] ,for: .normal)
    }
    
}

