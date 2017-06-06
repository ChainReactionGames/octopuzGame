//
//  TutorialViewController.swift
//  octa
//
//  Created by Gary Gogis on 5/30/17.
//  Copyright © 2017 Gary Gogis. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController {
    
    var tutorialProgress = 0
    var correct = false
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var blur: UIVisualEffectView!
    @IBOutlet weak var onwards: UIButton!
    @IBOutlet weak var octo: UIVisualEffectView!
    @IBOutlet weak var text: UITextView!
    @IBOutlet weak var answer: UIStackView!
    @IBOutlet weak var yourMove: UIButton!
    @IBOutlet weak var theWholeThing: UIStackView!

    
    func change(words: String) {
        UIView.animate(withDuration: 0.25, delay: 0.01, animations: {
            self.text.alpha = 0.0
            
        })
        UIView.animate(withDuration: 0.25, delay: 0.3, animations: {
            self.text.text = words
            self.text.alpha = 1.0
        }, completion: nil)
        
    }
    @IBAction func moveOn(_ sender: Any) {
        
        
        
        if tutorialProgress == 0 {
            
            tutorialProgress += 1
            
            UIView.animate(withDuration: 0.25, delay: 0.01, animations: {
                self.text.alpha = 0.0
                
            })
            UIView.animate(withDuration: 0.25, delay: 0.3, animations: {
                self.text.text = "At the beginning of each level, you'll see a pattern.  Take the time you're given to memorize it! "
                self.text.alpha = 1.0
            }, completion: nil)
            
        } else if tutorialProgress == 1 {
            tutorialProgress += 1

            
            UIView.animate(withDuration: 0.25, delay: 0.01, animations: {
                self.text.alpha = 0.0
                
            })
            UIView.animate(withDuration: 0.25, delay: 0.3, animations: {
                self.text.text = "Then, you will be presented with a blank canvas.  Tap on each square and put in the matching pattern."
                self.text.alpha = 1.0
            }, completion: nil)

        } else if tutorialProgress == 2 {
            tutorialProgress += 1

            UIView.animate(withDuration: 0.25, delay: 0.01, animations: {
                self.text.alpha = 0.0
                
            })
            UIView.animate(withDuration: 0.25, delay: 0.3, animations: {
                self.text.text = "Let's try an easy one."
                self.text.alpha = 1.0
                
            }, completion: nil)

        } else if tutorialProgress == 3 {
            tutorialProgress += 1

            UIView.animate(withDuration: 0.5, animations: {
                self.answer.alpha = 1.0
                self.onwards.alpha = 0.0
				self.yourMove.setImage(UIImage(named: "w"), for: .normal)

            }, completion: nil)
            
            level.delay(delay: 0.5, closure: {
                self.change(words: "Memorize what you see.")
                level.delay(delay: 3.0, closure: {
                    UIView.animate(withDuration: 1.0, animations: {
                        self.answer.alpha = 0.0
                        self.yourMove.alpha = 1.0
                    }, completion: nil)
                    
                    level.delay(delay: 1.0, closure: {
                        self.change(words: "OK, now tap the square and pick the correct pattern.")
                    })
                    
                    
                })
            })
            
            
        }
        
    }
    @IBAction func pressMe(_ sender: Any) {
        UIView.animate(withDuration: 0.25, animations: {
            self.blur.alpha = 1.0
            self.theWholeThing.alpha = 1.0
        
        }, completion: nil)
        
        
        
    }
    
    func selectAnswer(right: Bool = false, numberSelected: Int) -> Bool {
        UIView.animate(withDuration: 0.25, animations: {
            self.theWholeThing.alpha = 0.0
            self.blur.alpha = 0.0
        }, completion: nil)
        
        if numberSelected == 1 {
            let image = UIImage(named: "w")
            yourMove.setImage(image, for: .normal)
        } else if numberSelected == 2 {
            let image = UIImage(named: "R")
            yourMove.setImage(image, for: .normal)

        } else if numberSelected == 3 {
            let image = UIImage(named: "circleW")
            yourMove.setImage(image, for: .normal)

        }else if numberSelected == 4 {
            let image = UIImage(named: "circleR")
            yourMove.setImage(image, for: .normal)

        } else if numberSelected == 5 {
            let image = UIImage(named: "uR")
            yourMove.setImage(image, for: .normal)

        } else if numberSelected == 6 {
            let image = UIImage(named: "uL")
            yourMove.setImage(image, for: .normal)

        } else if numberSelected == 7 {
            let image = UIImage(named: "bL")
            yourMove.setImage(image, for: .normal)

        } else if numberSelected == 8 {
            let image = UIImage(named: "bR")
            yourMove.setImage(image, for: .normal)

        }
        
        return right
    }
    
    func scold(){
        
        if correct {
            
            UIView.animate(withDuration: 0.5, animations: {
                self.onwards.alpha = 0.0
            })
            change(words: "Excellent!  I think you're ready to start a real level!  See you soon!")
            level.delay(delay: 3.0, closure: {
                UserDefaults.standard.set(true, forKey: "doneTutorial")

                self.performSegue(withIdentifier: "toMain", sender: nil)
            })
            
        } else {
            change(words: "Oops!  That's not right.  Remember, you're selecting the pattern that matches the one you saw earlier.")
			tutorialProgress = 3
             onwards.setTitle("Look again?", for: .normal)
            UIView.animate(withDuration: 0.5, animations: {
                self.onwards.alpha = 1.0
            })
        }
        
    }
    
    @IBAction func no1(_ sender: Any) {
        correct = selectAnswer(numberSelected: 1)
        scold()

    }
    @IBAction func no2(_ sender: Any) {
        correct = selectAnswer(numberSelected: 2)
        scold()


    }

    @IBAction func no3(_ sender: Any) {
        correct = selectAnswer(numberSelected: 3)
        scold()


    }
    
    
    @IBAction func yes(_ sender: Any) {
        correct = selectAnswer(right: true, numberSelected: 4)
        scold()

    }
    
    @IBAction func no5(_ sender: Any) {
        correct = selectAnswer(numberSelected: 5)
        scold()


    }
    
    @IBAction func no6(_ sender: Any) {
        correct = selectAnswer(numberSelected: 6)
        scold()


    }
    
    @IBAction func no7(_ sender: Any) {
        correct = selectAnswer(numberSelected: 7)
        scold()


    }
    @IBAction func no8(_ sender: Any) {
        correct = selectAnswer(numberSelected: 8)
        scold()


    }
    
    
    

}
