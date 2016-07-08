//
//  ViewController.swift
//  SimonSaysLab
//
//  Created by James Campagno on 5/31/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayColorView: UIView!
    @IBOutlet weak var startGameButton: UIButton!
    @IBOutlet weak var winLabel: UILabel!
    @IBOutlet var buttons: [UIButton]!
    var simonSaysGame = SimonSays()
    var buttonsClicked = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        winLabel.hidden = true
        
    }
    

}

// MARK: - SimonSays Game Methods
extension ViewController {
    
    @IBAction func startGameTapped(sender: UIButton) {
        UIView.transitionWithView(startGameButton, duration: 0.9, options: .TransitionFlipFromBottom , animations: {
            self.startGameButton.hidden = true
            }, completion: nil)
        
        newGame()
    }
    
    @IBAction func buttonsTapped(sender: UIButton) {
        buttonsClicked += 1
        switch  sender.tag {
        case 1:
            simonSaysGame.guessRed()
            print("Red Tapped")
        case 2:
            simonSaysGame.guessGreen()
            print("Green Tapped")
        case 3:
            simonSaysGame.guessYellow()
            print("Yellow Tapped")
        case 4:
            simonSaysGame.guessBlue()
            print("Blue Tapped")
        default:
            break
        }
        gameDidEnd()
        
    }
    
    func newGame() {
        displayTheColors()
        
        buttonsClicked = 0
        winLabel.hidden = true
        simonSaysGame = SimonSays()

    }
    
    func gameDidEnd() {
        if (buttonsClicked == 5) {
            winLabel.hidden = false
            startGameButton.hidden = false
            
            if simonSaysGame.wonGame(){
                winLabel.text = "You won!"
            } else {
                winLabel.text = "Nope, try again loser!!!"
            }
            
            for button: UIButton in buttons {
                button.hidden = true
            }
        }
    }
    

    
    private func displayTheColors() {
        self.view.userInteractionEnabled = false
        UIView.transitionWithView(displayColorView, duration: 1.5, options: .TransitionCurlUp, animations: {
            self.displayColorView.backgroundColor = self.simonSaysGame.nextColor()?.colorToDisplay
            self.displayColorView.alpha = 0.0
            self.displayColorView.alpha = 1.0
            }, completion: { _ in
                if !self.simonSaysGame.sequenceFinished() {
                    self.displayTheColors()
                } else {
                    self.view.userInteractionEnabled = true
                    print("Pattern to match: \(self.simonSaysGame.patternToMatch)")
                }
                for button: UIButton in self.buttons {
                    button.hidden = false
                }
        })
    }
}
