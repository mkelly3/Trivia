//
//  FirstViewController.swift
//  T.V Trivia
//
//  Created by mkelly2 on 12/8/15.
//  Copyright © 2015 mkelly2. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var answer1Button: GridButton!
    @IBOutlet weak var answer2Button: GridButton!
    @IBOutlet weak var answer3Button: GridButton!
    @IBOutlet weak var answer4Button: GridButton!
    @IBOutlet weak var questionTextView: UITextView!
    @IBOutlet weak var myBackgroundView: UIView!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var scoreResult: UILabel!

    var correctAnswer = String()
    var score = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        chooseQuestion()
        
    }
    
    @IBAction func answer1Tapped(sender: GridButton) {
        if correctAnswer == "1"
        {
            ifcorrectAnswer()
            gameOver()
            answer1Button.canTap = false
        }
        else
        {
            answerWrong()
        }
    }
  
    @IBAction func answer2Tapped(sender: GridButton) {
        if correctAnswer == "2"
        {
            ifcorrectAnswer()
            gameOver()
            answer2Button.canTap = false
        }
        else
        {
            answerWrong()
        }
    }

    @IBAction func answer3Tapped(sender: GridButton) {
        if correctAnswer == "3"
        {
            ifcorrectAnswer()
            gameOver()
            answer3Button.canTap = false
        }
        else
        {
          answerWrong()
        }
    }
    @IBAction func answer4Tapped(sender:GridButton) {
        if correctAnswer == "4"
        {
            ifcorrectAnswer()
            gameOver()
            answer4Button.canTap = false
        }
        else
        {
            answerWrong()
        }
    }

      @IBAction func onNextButtonTapped(sender: AnyObject) {
        resetLabel()
        chooseQuestion()
        
    }
    func chooseQuestion() {
       var questionNumber = arc4random() % 8
        questionNumber += 1
        switch questionNumber {
        case 0:
            questionTextView.text = "What team has the most stanley cup wins?"
            answer1Button.setTitle("Chicago BlackHawks", forState: UIControlState.Normal)
            answer2Button.setTitle("Tronto Maple Leafs", forState: UIControlState.Normal)
            answer3Button.setTitle("Montreal Canadians", forState: UIControlState.Normal)
            answer4Button.setTitle("Boston Bruins", forState: UIControlState.Normal)
            correctAnswer = "3"
            
        case 1:
           questionTextView.text = "What team is not an original six team?"
           answer1Button.setTitle("Chicago Blackhawks", forState: UIControlState.Normal)
           answer2Button.setTitle("Tronto Maple Leafs", forState: UIControlState.Normal)
           answer3Button.setTitle("New York Islander", forState: UIControlState.Normal)
           answer4Button.setTitle("Boston Bruins", forState: UIControlState.Normal)
            correctAnswer = "3"
        case 2:
            questionTextView.text = "Which of the Original Six has never won a Stanley Cup?"
            answer1Button.setTitle("Detroit Red Wings", forState: UIControlState.Normal)
            answer2Button.setTitle("Tronto Maple Leafs", forState: UIControlState.Normal)
            answer3Button.setTitle("New York Ranger", forState: UIControlState.Normal)
            answer4Button.setTitle("They all have won at least one", forState: UIControlState.Normal)
            correctAnswer = "4"
        case 3:
            questionTextView.text = "Fans of which Original Six team throw octopi on the ice during the playoffs?"
            answer1Button.setTitle("Detroit Red Wings", forState: UIControlState.Normal)
            answer2Button.setTitle("Tronto Maple Leafs", forState: UIControlState.Normal)
            answer3Button.setTitle("Montreal Canadians", forState: UIControlState.Normal)
            answer4Button.setTitle("Boston Bruins", forState: UIControlState.Normal)
                 correctAnswer = "1"
  
        case 4:
            questionTextView.text = "How many stanley cups do the Montreal Canadians have?"
            answer1Button.setTitle("3", forState: UIControlState.Normal)
            answer2Button.setTitle("25", forState: UIControlState.Normal)
            answer3Button.setTitle("8", forState: UIControlState.Normal)
            answer4Button.setTitle("37", forState: UIControlState.Normal)
            correctAnswer = "2"
        case 5:
            questionTextView.text = "Why do they grow beards during playoffs?"
            answer1Button.setTitle("Superstition", forState: UIControlState.Normal)
            answer2Button.setTitle("They look good", forState: UIControlState.Normal)
            answer3Button.setTitle("The rink is cold", forState: UIControlState.Normal)
            answer4Button.setTitle("They don't grow beards", forState: UIControlState.Normal)
            correctAnswer = "1"
          
        case 6:
            questionTextView.text = "Who is the best player in the NHL"
            answer1Button.setTitle("Jonathan Toews", forState: UIControlState.Normal)
            answer2Button.setTitle("PK Suban", forState: UIControlState.Normal)
            answer3Button.setTitle("Sydney Crosby", forState: UIControlState.Normal)
            answer4Button.setTitle("Patrick Kane", forState: UIControlState.Normal)
                 correctAnswer = "1"
        case 7:
            questionTextView.text = "Which team currently has gone the longest" + "\n" +
                                    "without winning the stanley cup?"
            answer1Button.setTitle("Chicago Blackhawks, 5 years", forState: UIControlState.Normal)
            answer2Button.setTitle("Detroit RedWings, 24 years", forState: UIControlState.Normal)
            answer3Button.setTitle("New York Rangers, 12 years", forState: UIControlState.Normal)
            answer4Button.setTitle("Tronto Maple Leafs, 44 years", forState: UIControlState.Normal)
            correctAnswer = "4"
        case 8:
            questionTextView.text = "Why did they create these six teams first?"
            answer1Button.setTitle("They all have snow and can play hockey", forState: UIControlState.Normal)
            answer2Button.setTitle("Those are the best cities", forState: UIControlState.Normal)
            answer3Button.setTitle("There was a train bettween all of them", forState: UIControlState.Normal)
            answer4Button.setTitle("They cities are close together", forState: UIControlState.Normal)
            correctAnswer = "3"
        case 9:
            questionTextView.text = "What is the nickname for the Canadians"
            answer1Button.setTitle("Montrealians", forState: UIControlState.Normal)
            answer2Button.setTitle("Habs", forState: UIControlState.Normal)
            answer3Button.setTitle("Hoser", forState: UIControlState.Normal)
            answer4Button.setTitle("C's", forState: UIControlState.Normal)
            correctAnswer = "2"
        case 10:
            questionTextView.text = "During the original 6 era which team missed the playoff" + "\n" + "for 8 consecutive years?"
            answer1Button.setTitle("Boston Bruins", forState: UIControlState.Normal)
            answer2Button.setTitle("New York Rangers", forState: UIControlState.Normal)
            answer3Button.setTitle("Chicago Blackhawks", forState: UIControlState.Normal)
            answer4Button.setTitle("None of the above", forState: UIControlState.Normal)
            correctAnswer = "1"
        default:
            questionTextView.text = "Who is the best player in the NHL"
            answer1Button.setTitle("Jonathan Toews", forState: UIControlState.Normal)
            answer2Button.setTitle("PK Suban", forState: UIControlState.Normal)
            answer3Button.setTitle("Sydney Crosby", forState: UIControlState.Normal)
            answer4Button.setTitle("Patrick Kane", forState: UIControlState.Normal)
        }
    }
    
    func resetLabel() {
        resultLabel.text = ""
        view.backgroundColor = UIColor.whiteColor()
        myBackgroundView.backgroundColor = UIColor.whiteColor()
        questionTextView.backgroundColor = UIColor.whiteColor()
        answer4Button.canTap = true
        answer3Button.canTap = true
        answer2Button.canTap = true
        answer1Button.canTap = true
        
    }
    func ifcorrectAnswer() {
        questionTextView.backgroundColor = UIColor.greenColor()
        myBackgroundView.backgroundColor = UIColor.greenColor()
        view.backgroundColor = UIColor.greenColor()
        resultLabel.text = "Correct"
        scoreResult.text = "Score: \(++score)"
    }
    func answerWrong(){
        questionTextView.backgroundColor = UIColor.redColor()
        myBackgroundView.backgroundColor = UIColor.redColor()
        view.backgroundColor = UIColor.redColor()
        resultLabel.text = "WRONG"
    }
    func presentingAlertView() {
        let alert = UIAlertController(title: "Winner!! Game Over", message: "Message", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Reset", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
        self.resetLabel()
    }
    func gameOver() {
        
        if score == 10
        {
            presentingAlertView()
            scoreResult.text = "Score: \(score)"
        }

    }
}

