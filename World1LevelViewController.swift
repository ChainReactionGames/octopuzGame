//
//  World1LevelViewController.swift
//  octa
//
//  Created by Gary Gogis on 5/20/17.
//  Copyright © 2017 Gary Gogis. All rights reserved.
//

import UIKit

@available(iOS 10.0, *)
class World1LevelViewController: UIViewController {
    
    
    
//   1 = #imageLiteral(resourceName: "w")   2= #imageLiteral(resourceName: "R")   3 = #imageLiteral(resourceName: "circleW") 4 = #imageLiteral(resourceName: "circleR")   5 = #imageLiteral(resourceName: "uR") 6 = #imageLiteral(resourceName: "uL") 7 = #imageLiteral(resourceName: "bL")  8 = #imageLiteral(resourceName: "bR")
    
    var one = 0
    var two = 0
    var three = 0
    var four = 0
    
    var pressed = false

    var g1 = 1
    var g2 = 1
    var g3 = 1
    var g4 = 1
    @IBOutlet weak var starOne: UIImageView!
    @IBOutlet weak var starTwo: UIImageView!
    @IBOutlet weak var starThree: UIImageView!
    var press = 0
    
    var ready = false
    
    var elapsed: Double = 0.0
    
    var y: Double = 0.0

    func timer() {
        
        

        let startTime = NSDate.timeIntervalSinceReferenceDate
        Timer.scheduledTimer(withTimeInterval: 0.02, repeats: true) { timer in
            //Total time since timer started, in seconds
            self.elapsed = NSDate.timeIntervalSinceReferenceDate - startTime
            //The rest of your code goes here
             self.y = Double(round(100*self.elapsed)/100)

            self.timerLbl.text = "\(self.y)"

        }
        
        
        
    }
    
    
    

    
    override func viewDidLoad() {
        level.playedYet = true
        level.delay(delay: 0.1, closure: {
            self.starOne.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
            self.starTwo.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
            self.starThree.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
            self.wowie.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
            self.high.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
//            self.retry.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
//            self.container.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
            self.brainpower.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
            self.plusFive.alpha = 0.0
            self.plusFifty.alpha = 0.0
            self.plusTwoFifty.alpha = 0.0
            self.plusFive.center.y += 20
            self.plusFifty.center.y += 20
            self.plusTwoFifty.center.y += 20
            
            
            
            
        })
        
        
        
        
        print(level.oneHigh)
        if level.oneHigh == 0.0{
            level.oneHigh = 999999.0
        }
        if level.twoHigh == 0.0{
            level.twoHigh = 999999.0
        }
        if level.threeHigh == 0.0{
            level.threeHigh = 999999.0
        }
        if level.fourHigh == 0.0{
            level.fourHigh = 999999.0
        }
        
        
//        Create level here:
//   1 = #imageLiteral(resourceName: "w")   2= #imageLiteral(resourceName: "R")   3 = #imageLiteral(resourceName: "circleW") 4 = #imageLiteral(resourceName: "circleR")   5 = #imageLiteral(resourceName: "uR") 6 = #imageLiteral(resourceName: "uL") 7 = #imageLiteral(resourceName: "bL")  8 = #imageLiteral(resourceName: "bR")

        if level.number == 1 {
            one = 4
            two = 1
            three = 1
            four = 4
        } else if level.number == 2 {
            one = 6
            two = 5
            three = 7
            four = 8
        }  else if level.number == 3 {
            one = 4
            two = 6
            three = 8
            four = 4
        } else if level.number == 4 {
            one = 7
            two = 3
            three = 4
            four = 7
        } else if level.number == 5 {
            one = 5
            two = 5
            three = 5
            four = 5
        } else if level.number == 6 {
            one = 8
            two = 2
            three = 2
            four = 6
        } else if level.number == 7 {
            one = 1
            two = 4
            three = 3
            four = 2
        } else if level.number == 8 {
            one = 6
            two = 8
            three = 8
            four = 6
        } else if level.number == 9 {
            one = 2
            two = 7
            three = 5
            four = 3
        } else if level.number == 10 {
            one = 8
            two = 6
            three = 6
            four = 3
        } else if level.number == 11 {
            one = 5
            two = 7
            three = 5
            four = 7
        } else if level.number == 12 {
            one = 5
            two = 8
            three = 6
            four = 7
        } else if level.number == 13 {
            one = 6
            two = 7
            three = 5
            four = 8
        } else if level.number == 14 {
            one = 3
            two = 2
            three = 2
            four = 6
        } else if level.number == 15 {
            one = 6
            two = 5
            three = 8
            four = 7
        }
        
        levelLbl.text = "\(level.number)"
        levelShow.text = "\(level.number)"

        let random = arc4random_uniform(9)

        
        if random == 1 {
            
            wowie.text = "OUTSTANDING!"
            
        }else if random == 2 {
            wowie.text = "SUCCESS!"
            
        } else if random == 3 {
            wowie.text = "GREAT!"
            
        } else if random == 4 {
            wowie.text = "FANTASTIC!"
        } else if random == 5 {
            wowie.text = "WOWIE!"
        } else if random == 6 {
            wowie.text = "YEE HAW!"
        } else if random == 7 {
            wowie.text = "YAAAAY!"
        } else if random == 8 {
            wowie.text = "YIPPEE!"
        }
        
//        self.blur.layer.zPosition = 3
//        self.theWholeThang.layer.zPosition = 4
        super.viewDidLoad()
        
        ready = false
        
        texture.layer.zPosition = 999999

        func delay(delay: Double, closure: @escaping () -> () ){
            let when = DispatchTime.now() + delay
            DispatchQueue.main.asyncAfter(deadline: when) {
                closure()
            }
            
        }
        
        func exampleImage(variable: Int, view: UIImageView!){
            var imageName = "w"
            
            if variable == 2 {
                imageName = "R"
            } else if variable == 3 {
                imageName = "circleW"
            } else if variable == 4 {
                imageName = "circleR"
            }else if variable == 5 {
                imageName = "uR"
            }else if variable == 6 {
                imageName = "uL"
            }else if variable == 7 {
                imageName = "bL"
            } else if variable == 8 {
                imageName = "bR"
            }
            
            let image = UIImage(named: imageName) as UIImage?
            
            
            
            
            view.image = image
        }
        func yourGuess(variable: Int, view: UIButton!){
            var imageName = "w"
            
            if variable == 2 {
                imageName = "R"
            } else if variable == 3 {
                imageName = "circleW"
            } else if variable == 4 {
                imageName = "circleR"
            }else if variable == 5 {
                imageName = "uR"
            }else if variable == 6 {
                imageName = "uL"
            }else if variable == 7 {
                imageName = "bL"
            } else if variable == 8 {
                imageName = "bR"
            }
            
            let image = UIImage(named: imageName) as UIImage?
            
            
            
            
            view.setImage(image, for: .normal)
        }

        
        
        exampleImage(variable: one, view: e1)
        exampleImage(variable: two, view: e2)
        exampleImage(variable: three, view: e3)
        exampleImage(variable: four, view: e4)

        
        func numberSwap(number: Int) {
            if press == 1 {
                g1 = number
            } else if press == 2 {
                g2 = number
            } else if press == 3 {
                g3 = number
            } else if press == 4 {
                g4 = number
            }
                
        }



        
        
        var time: Double = 3.0
        if level.number == 1 {
            time = 2.0
        }
        delay(delay: time, closure: {
            UIView.animate(withDuration: 1.5, delay: 0.0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.8, options: [], animations: {
                self.answer.alpha = 0
                self.yourTurn.alpha = 1.0
                self.grid.alpha = 1.0
                
            }, completion: nil)
            
            UIView.animate(withDuration: 1.0, delay: 0.5, animations: {
                self.go.center.x += 1550
            }, completion: nil)
            
        })
        delay(delay: time + 1.5, closure: {
            UIView.animate(withDuration: 0.5, animations: {
            self.submit.backgroundColor = UIColor(red: 0/255, green: 102/255, blue: 0/255, alpha: 1.0)
            })
            self.ready = true
            self.timer()
            
            
        })

    }

    override func viewWillAppear(_ animated: Bool) {
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func yourGuess(){
        var imageName = "w"
        var variable: Int = 0
        var view: UIButton = b1
        
        if press == 1 {
            variable = g1
            view = b1
        } else if press == 2 {
            variable = g2
            view = b2
        } else if press == 3 {
            variable = g3
            view = b3
        } else if press == 4 {
            variable = g4
            view = b4
        }
        
        if variable == 2 {
            imageName = "R"
        } else if variable == 3 {
            imageName = "circleW"
        } else if variable == 4 {
            imageName = "circleR"
        }else if variable == 5 {
            imageName = "uR"
        }else if variable == 6 {
            imageName = "uL"
        }else if variable == 7 {
            imageName = "bL"
        } else if variable == 8 {
            imageName = "bR"
        }
        
        let image = UIImage(named: imageName) as UIImage?
        
        
        
        
        view.setImage(image, for: .normal)
    }
    func numberSwap(number: Int) {
        if press == 1 {
            g1 = number
        } else if press == 2 {
            g2 = number
        } else if press == 3 {
            g3 = number
        } else if press == 4 {
            g4 = number
        }
        
    }
    
    //Your squares
    
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!

    @IBAction func t1(_ sender: Any) {
        bringBlur()
        press = 1
    }
    
    @IBAction func t2(_ sender: Any) {
        bringBlur()
        press = 2
        
    }
    @IBAction func t3(_ sender: Any) {
        bringBlur()
        press = 3
    }
    @IBAction func t4(_ sender: Any) {
        bringBlur()
        press = 4
    }
    
    
    @IBAction func s1(_ sender: Any) {
        leaveBlur()
        numberSwap(number: 1)
        yourGuess()
    }
    @IBAction func s2(_ sender: Any) {
        leaveBlur()
        numberSwap(number: 2)
        yourGuess()

    }
    
    @IBAction func s3(_ sender: Any) {
        leaveBlur()
        numberSwap(number: 3)
        yourGuess()

    }
    
    @IBAction func s4(_ sender: Any) {
        leaveBlur()
        numberSwap(number: 4)
        yourGuess()

    }
    
    @IBAction func s5(_ sender: Any) {
        leaveBlur()
        numberSwap(number: 5)
        yourGuess()

    }
    
    @IBAction func s6(_ sender: Any) {
        leaveBlur()
        numberSwap(number: 6)
        yourGuess()

    }
    @IBAction func s7(_ sender: Any) {
        leaveBlur()
        numberSwap(number: 7)
        yourGuess()

    }
    @IBAction func s8(_ sender: Any) {
        leaveBlur()
        numberSwap(number: 8)
        yourGuess()
        

    }
    func bringBlur(){
        UIView.animate(withDuration: 0.25, animations: {
            self.theWholeThang.alpha = 1.0
            self.blur.alpha = 1.0
        })
    }
    func leaveBlur()  {
        
        UIView.animate(withDuration: 0.25, animations: {
        self.theWholeThang.alpha = 0.0
        self.blur.alpha = 0.0
        })
    }
    
    @IBAction func submitYourWork(_ sender: Any) {
        func delay(delay: Double, closure: @escaping () -> () ){
            let when = DispatchTime.now() + delay
            DispatchQueue.main.asyncAfter(deadline: when) {
                closure()
            }
            
        }
        
        if ready {
        if g1 != one || g2 != two || g3 != three || g4 != four{
            
            
            
            
            
            
            let random = arc4random_uniform(7)
            if random == 1 {
                wrong.text = "WRONG"
                
            }else if random == 2 {
                wrong.text = "FALSE"
            }else if random == 3 {
                wrong.text = "NOPE"
            }else if random == 4 {
                wrong.text = "SORRY"
            }else if random == 5 {
                wrong.text = "OOPS"
            } else if random == 6 {
                wrong.text = "INCORRECT"
            }
            
            
            wrong.alpha = 1.0
            UIView.animate(withDuration: 0.2, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.3, options: [], animations: {
                self.yourTurn.center.x  += 25
                self.grid.center.x += 25
                self.wrong.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            }, completion: nil)
            
            UIView.animate(withDuration: 0.2, delay: 0.1, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.3, options: [], animations: {
                self.yourTurn.center.x  -= 50
                self.grid.center.x -= 50
                self.wrong.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
            }, completion: nil)
            UIView.animate(withDuration: 0.25, delay: 0.2, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.3, options: [], animations: {
                self.yourTurn.center.x  += 25
                self.grid.center.x += 25
                self.wrong.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            }, completion: nil)
            delay(delay: 0.5, closure: {
                UIView.animate(withDuration: 1.0, animations: {
                    self.wrong.alpha = 0.0

                })
            })
        } else {
            if !pressed {
                pressed = true
                endTime.text = timerLbl.text
                let score = y
                print("Score: \(score)")
                print("Level One High: \(level.oneHigh)")
                
                func stars(twoStars: Double, threeStars: Double){
                    var currentBp = level.brainPower

                    func addUp(interval: Double = 0.1){
                        let startTime = NSDate.timeIntervalSinceReferenceDate
                        Timer.scheduledTimer(withTimeInterval: interval, repeats: true) { timer in
                            if currentBp < level.brainPower {
                                //Total time since timer started, in seconds
                                self.elapsed = NSDate.timeIntervalSinceReferenceDate - startTime
                                //The rest of your code goes here
                                self.y = Double(round(self.elapsed))
                                currentBp += 1
                                let text = "\(currentBp))"
                                self.bpNumber.text = text.replacingOccurrences(of: ".0)", with: "")
                            }
                        }
                        

                    }
                    print("Made it (2)")
                    delay(delay: 0.9, closure: {
                        UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.7, options: [], animations: {
                            self.wowie.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                        }, completion: nil)
                    })
                    
                    delay(delay: 1.8, closure: {
                        UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.7, options: [], animations: {
                            //                            self.retry.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                            //                            self.container.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                            self.retry.alpha = 1.0
                            self.container.alpha = 1.0
                        }, completion: nil)
                        
                    })
                    delay(delay: 1.5, closure: {
                        UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.7, options: [], animations: {
                            self.brainpower.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                        }, completion: nil)
                        if score >= twoStars {
                            level.brainPower = currentBp + 5
                            addUp()
                            


                            UIView.animate(withDuration: 0.75, animations: {
                                self.plusFive.center.y -= 20
                                self.plusFive.alpha = 1.0
                                
                            })
                            UIView.animate(withDuration: 0.25, delay: 0.7, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.7, options: [], animations: {
                                self.bpNumber.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
                                
                            })
                            UIView.animate(withDuration: 0.25, delay: 0.85, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.7, options: [], animations: {
                                self.bpNumber.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                                
                            })
                            UIView.animate(withDuration: 0.75, delay: 0.7, animations: {
                                self.plusFive.center.y -= 20
                                self.plusFive.alpha = 0.0
                                
                            })

                        } else if score < twoStars && score >= threeStars {
                            level.brainPower = currentBp + 50
                            addUp(interval: 0.03)
                            
                            UIView.animate(withDuration: 0.75, animations: {
                                self.plusFifty.center.y -= 20
                                self.plusFifty.alpha = 1.0
                                
                            })
                            UIView.animate(withDuration: 0.25, delay: 0.7, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.7, options: [], animations: {
                                self.bpNumber.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
                                
                            })
                            UIView.animate(withDuration: 0.25, delay: 0.85, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.7, options: [], animations: {
                                self.bpNumber.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                                
                            })
                            UIView.animate(withDuration: 0.75, delay: 0.7, animations: {
                                self.plusFifty.center.y -= 20
                                self.plusFifty.alpha = 0.0
                                
                            })
                            
                        } else if score < threeStars {
                            level.brainPower = currentBp + 250
                            addUp(interval: 0.01)
                            
                            UIView.animate(withDuration: 0.75, animations: {
                                self.plusTwoFifty.center.y -= 20
                                self.plusTwoFifty.alpha = 1.0
                                
                            })
                            UIView.animate(withDuration: 0.25, delay: 0.7, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.7, options: [], animations: {
                                self.bpNumber.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
                                
                            })
                            UIView.animate(withDuration: 0.25, delay: 0.85, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.7, options: [], animations: {
                                self.bpNumber.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                                
                            })
                            UIView.animate(withDuration: 0.75, delay: 0.7, animations: {
                                self.plusTwoFifty.center.y -= 20
                                self.plusTwoFifty.alpha = 0.0
                                
                            })
                            
                        }

                    })
                    delay(delay: 1.1, closure: {
                        UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.7, options: [], animations: {
                            self.starOne.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                        }, completion: nil)
                        
                        if score < twoStars {
                            delay(delay: 0.2, closure: {
                                UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.7, options: [], animations: {
                                    self.starTwo.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                                }, completion: nil)
                                
                                if score < threeStars {
                                    
                                    delay(delay: 0.2, closure: {
                                        UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.7, options: [], animations: {
                                            self.starThree.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                                        }, completion: nil)
                                        delay(delay: 0.3, closure: {
                                            UIView.animate(withDuration: 0.7, delay: 0.3, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.5, options: [], animations: {
                                                self.starOne.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
                                                self.starTwo.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
                                                self.starThree.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)

                                            }, completion: nil)
                                        })
                                    })
                                }
                                
                            })
                            
                        }
                        
                    })

                }
                print("level.number: \(level.number)")
                if level.number == 1 {
                    if score < level.oneHigh {
                        
                        level.oneHigh = score
                        level.update()
                            level.delay(delay: 1.5, closure: {
                                UIView.animate(withDuration: 0.75, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.7, options: [], animations: {
                                    self.high.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                                    
                                }, completion: nil)
                            })
                    }
                    
                    stars(twoStars: 3.0, threeStars: 1.8)
                    
                }
                if level.number == 2 {
                    if score < level.twoHigh {
                        print("made it")
                        level.twoHigh = score
                        level.update()
                            level.delay(delay: 1.5, closure: {
                                UIView.animate(withDuration: 0.75, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.7, options: [], animations: {
                                    self.high.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                                    
                                }, completion: nil)
                            })

                    }
                    stars(twoStars: 5.0, threeStars: 4.0)

                } else if level.number == 3 {
                    if score < level.threeHigh {
                        print("made it ")
                        level.threeHigh = score
                        level.update()
                            level.delay(delay: 1.5, closure: {
                                UIView.animate(withDuration: 0.75, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.7, options: [], animations: {
                                    self.high.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                                    
                                }, completion: nil)
                            })
                        

                    }
                    stars(twoStars: 5.0, threeStars: 3.7)

                } else if level.number == 4 {
                    if score < level.fourHigh {
                        
                        level.fourHigh = score
                        level.update()
                        level.delay(delay: 1.5, closure: {
                            UIView.animate(withDuration: 0.75, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.7, options: [], animations: {
                                self.high.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                                
                            }, completion: nil)
                        })

                    }
                    
                    stars(twoStars: 4.5, threeStars: 3.2)
                    
                } else if level.number == 5 {
                    if score < level.fiveHigh {
                        
                        level.fiveHigh = score
                        level.update()
                        level.delay(delay: 1.5, closure: {
                            UIView.animate(withDuration: 0.75, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.7, options: [], animations: {
                                self.high.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                                
                            }, completion: nil)
                        })
                        
                    }
                    
                    stars(twoStars: 5.0, threeStars: 3.4)
                } else if level.number == 6 {
                    if score < level.sixHigh {
                        
                        level.sixHigh = score
                        level.update()
                        level.delay(delay: 1.5, closure: {
                            UIView.animate(withDuration: 0.75, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.7, options: [], animations: {
                                self.high.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                                
                            }, completion: nil)
                        })
                        
                    }
                    
                    stars(twoStars: 5.0, threeStars: 3.5)
                } else if level.number == 7 {
                    if score < level.sevenHigh {
                        
                        level.sevenHigh = score
                        level.update()
                        level.delay(delay: 1.5, closure: {
                            UIView.animate(withDuration: 0.75, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.7, options: [], animations: {
                                self.high.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                                
                            }, completion: nil)
                        })
                        
                    }
                    
                    stars(twoStars: 4.0, threeStars: 2.5)
                } else if level.number == 8 {
                    if score < level.eightHigh {
                        
                        level.eightHigh = score
                        level.update()
                        level.delay(delay: 1.5, closure: {
                            UIView.animate(withDuration: 0.75, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.7, options: [], animations: {
                                self.high.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                                
                            }, completion: nil)
                        })
                        
                    }
                    
                    stars(twoStars: 4.0, threeStars: 3.0)
                } else if level.number == 9 {
                    if score < level.nineHigh {
                        
                        level.nineHigh = score
                        level.update()
                        level.delay(delay: 1.5, closure: {
                            UIView.animate(withDuration: 0.75, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.7, options: [], animations: {
                                self.high.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                                
                            }, completion: nil)
                        })
                        
                    }
                    
                    stars(twoStars: 4.0, threeStars: 3.0)
                } else if level.number == 10 {
                    if score < level.tenHigh {
                        
                        level.tenHigh = score
                        level.update()
                        level.delay(delay: 1.5, closure: {
                            UIView.animate(withDuration: 0.75, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.7, options: [], animations: {
                                self.high.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                                
                            }, completion: nil)
                        })
                        
                    }
                    
                    stars(twoStars: 4.0, threeStars: 3.0)
                } else if level.number == 11 {
                    if score < level.elevenHigh {
                        
                        level.elevenHigh = score
                        level.update()
                        level.delay(delay: 1.5, closure: {
                            UIView.animate(withDuration: 0.75, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.7, options: [], animations: {
                                self.high.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                                
                            }, completion: nil)
                        })
                        
                    }
                    
                    stars(twoStars: 4.0, threeStars: 3.0)
                } else if level.number == 12 {
                    if score < level.twelveHigh {
                        
                        level.twelveHigh = score
                        level.update()
                        level.delay(delay: 1.5, closure: {
                            UIView.animate(withDuration: 0.75, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.7, options: [], animations: {
                                self.high.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                                
                            }, completion: nil)
                        })
                        
                    }
                    
                    stars(twoStars: 4.0, threeStars: 3.0)
                } else if level.number == 13 {
                    if score < level.thirteenHigh {
                        
                        level.thirteenHigh = score
                        level.update()
                        level.delay(delay: 1.5, closure: {
                            UIView.animate(withDuration: 0.75, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.7, options: [], animations: {
                                self.high.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                                
                            }, completion: nil)
                        })
                        
                    }
                    
                    stars(twoStars: 4.0, threeStars: 3.0)
                } else if level.number == 14 {
                    if score < level.fourteenHigh {
                        
                        level.fourteenHigh = score
                        level.update()
                        level.delay(delay: 1.5, closure: {
                            UIView.animate(withDuration: 0.75, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.7, options: [], animations: {
                                self.high.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                                
                            }, completion: nil)
                        })
                        
                    }
                    
                    stars(twoStars: 4.0, threeStars: 3.0)
                }  else if level.number == 15 {
                    if score < level.fifteenHigh {
                        
                        level.fifteenHigh = score
                        level.update()
                        level.delay(delay: 1.5, closure: {
                            UIView.animate(withDuration: 0.75, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.7, options: [], animations: {
                                self.high.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                                
                            }, completion: nil)
                        })
                        
                    }
                    
                    stars(twoStars: 4.0, threeStars: 3.0)
                }








                UIView.animate(withDuration: 0.25, animations: {
                    self.blur.alpha = 1.0

                })
                
                UIView.animate(withDuration: 1.5, delay: 0.0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.5, options: [], animations: {
                    self.success.center.y -= 2000
                }, completion: nil)
                
                level.justPassed = true
                if level.number == level.highestAvailable {
                    
                    level.levelsPassed += 1
                    level.update()
                    level.newUnlock = true
                    
                    
                    
                }
            }

            
            
        }
        }
        
    }
//@IBOUTLETS
    
    @IBOutlet weak var submit: RoundButton!
    @IBOutlet weak var grid: UIImageView!
    @IBOutlet weak var theWholeThang: UIStackView!
    @IBOutlet weak var blur: UIVisualEffectView!
    @IBOutlet weak var answer: UIStackView!
    @IBOutlet weak var e1: UIImageView!
    @IBOutlet weak var e2: UIImageView!
    @IBOutlet weak var e3: UIImageView!
    @IBOutlet weak var e4: UIImageView!
    @IBOutlet weak var yourTurn: UIStackView!
    @IBOutlet weak var texture: UIImageView!
    @IBOutlet weak var go: UILabel!
    @IBOutlet weak var wrong: UILabel!
    @IBOutlet weak var success: Round!
    @IBOutlet weak var timerLbl: UITextView!
    @IBOutlet weak var levelShow: UILabel!
    @IBOutlet weak var wowie: UILabel!
    @IBOutlet weak var endTime: UITextView!
    @IBOutlet weak var levelLbl: UILabel!
    @IBOutlet weak var retry: RoundButton!
    @IBOutlet weak var container: RoundButton!
    @IBOutlet weak var high: Round!
    @IBOutlet weak var plusFive: UILabel!
    @IBOutlet weak var plusFifty: UILabel!
    @IBOutlet weak var plusTwoFifty: UILabel!
    
    @IBOutlet weak var brainpower: Round!
    
    @IBOutlet weak var bpNumber: UITextView!

    
    
    
}





