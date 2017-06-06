//
//  World1ViewController.swift
//  octa
//
//  Created by Gary Gogis on 5/20/17.
//  Copyright © 2017 Gary Gogis. All rights reserved.
//

import UIKit





class World1ViewController: UIViewController {
	
    var canPlay = true
	var current = 1
	var lastLeft = true
	
	
	func imageUpdate() {
        func delay(delay: Double, closure: @escaping () -> () ){
            let when = DispatchTime.now() + delay
            DispatchQueue.main.asyncAfter(deadline: when) {
                closure()
            }
            
        }
		print("level.number = \(level.number)")
		delay(delay: 0.01, closure: {
			self.slidey.setValue(Float(level.number), animated: true)
		})
		if level.number >= level.highestAvailable {
		time.text = "No Time"
		
		} else if level.number == 1 {
			time.text = "\(level.oneHigh)"
		} else if level.number == 2 {
			time.text = "\(level.twoHigh)"
		} else if level.number == 3 {
			time.text = "\(level.threeHigh)"
		} else if level.number == 4 {
			time.text = "\(level.fourHigh)"
		} else if level.number == 5 {
			time.text = "\(level.fiveHigh)"
		} else if level.number == 6 {
			time.text = "\(level.sixHigh)"
		} else if level.number == 7 {
			time.text = "\(level.sevenHigh)"
		} else if level.number == 8 {
			time.text = "\(level.eightHigh)"
		} else if level.number == 9 {
			time.text = "\(level.nineHigh)"
		} else if level.number == 10 {
			time.text = "\(level.tenHigh)"
		} else if level.number == 11 {
			time.text = "\(level.elevenHigh)"
		} else if level.number == 12 {
			time.text = "\(level.twelveHigh)"
		} else if level.number == 13 {
			time.text = "\(level.thirteenHigh)"
		} else if level.number == 14 {
			time.text = "\(level.fourteenHigh)"
		} else if level.number == 15 {
			time.text = "\(level.fifteenHigh)"
		}
		
		if current == 1 {
			
			
			self.levelText.text = "\(level.number)"
			
		} else if current == 2 {
			
			self.textTwo.text = "\(level.number)"
			
			
		} else if current == 3 {
			
			self.textThree.text = "\(level.number)"
			
			
		}

		
		
		
		print(level.levelsPassed)
        print(level.highestAvailable)
        print(level.number)
		
		func stars(variable: Double, twoStars: Double, threeStars: Double) {
			if variable < threeStars {
				self.noStars.isHidden = true
				self.oneStar.isHidden = true
				self.twoStar.isHidden = true
				self.threeStar.isHidden = false
			}else if variable < twoStars {
				self.noStars.isHidden = true
				self.oneStar.isHidden = true
				self.twoStar.isHidden = false
				self.threeStar.isHidden = true
			} else {
				
				self.noStars.isHidden = true
				self.oneStar.isHidden = false
				self.twoStar.isHidden = true
				self.threeStar.isHidden = true
			}
		}
		
		
		
		
		//MUST be done for EACH level:
		
        delay(delay: 0.0001, closure: {
			if level.oneHigh == 0.0 {
				level.oneHigh = 999999
			}
			if level.twoHigh == 0.0 {
				level.twoHigh = 999999
			}
			if level.threeHigh == 0.0 {
				level.threeHigh = 999999
			}
			if level.fourHigh == 0.0 {
				level.fourHigh = 999999
			}
			if level.fiveHigh == 0.0 {
				level.fiveHigh = 999999
			}
			if level.sixHigh == 0.0 {
				level.sixHigh = 999999
			}
			if level.sevenHigh == 0.0 {
				level.sevenHigh = 999999
			}
			if level.eightHigh == 0.0 {
				level.eightHigh = 999999
			}
			if level.nineHigh == 0.0 {
				level.nineHigh = 999999
			}
			if level.tenHigh == 0.0 {
				level.tenHigh = 999999
			}
			if level.elevenHigh == 0.0 {
				level.elevenHigh = 999999
			}
			if level.twelveHigh == 0.0 {
				level.twelveHigh = 999999
			}
			if level.thirteenHigh == 0.0 {
				level.thirteenHigh = 999999
			}
			if level.fourteenHigh == 0.0 {
				level.fourteenHigh = 999999
			}
			if level.fifteenHigh == 0.0 {
				level.fifteenHigh = 999999
			}
			if level.number == 1 && level.oneHigh != 999999{
				
				stars(variable: level.oneHigh, twoStars: 3.0, threeStars: 1.8)
				
			} else if level.number == 2 && level.twoHigh != 999999{
				
				stars(variable: level.twoHigh, twoStars: 5.0, threeStars: 4.0)
				
			} else if level.number == 3 && level.threeHigh != 999999{
				stars(variable: level.threeHigh, twoStars: 5.0, threeStars: 3.7)
			} else if level.number == 4 && level.fourHigh != 999999{
				stars(variable: level.fourHigh, twoStars: 4.5, threeStars: 3.2)
			} else if level.number == 5 && level.fiveHigh != 999999{
				stars(variable: level.fiveHigh, twoStars: 5.0, threeStars: 3.4)
			} else if level.number == 6 && level.sixHigh != 999999{
				stars(variable: level.sixHigh, twoStars: 5.1, threeStars: 3.5)
			} else if level.number == 7 && level.sevenHigh != 999999{
				stars(variable: level.sevenHigh, twoStars: 4.0, threeStars: 2.5)

			} else if level.number == 8 && level.eightHigh != 999999{
				stars(variable: level.eightHigh, twoStars: 4.0, threeStars: 3.0)
			}  else if level.number == 9 && level.nineHigh != 999999{
				stars(variable: level.nineHigh, twoStars: 4.0, threeStars: 3.0)
			}  else if level.number == 10 && level.tenHigh != 999999{
				stars(variable: level.tenHigh, twoStars: 4.0, threeStars: 3.0)
			}  else if level.number == 11 && level.elevenHigh != 999999{
				stars(variable: level.elevenHigh, twoStars: 4.0, threeStars: 3.0)
			}  else if level.number == 12 && level.twelveHigh != 999999{
				stars(variable: level.twelveHigh, twoStars: 4.0, threeStars: 3.0)
			}  else if level.number == 13 && level.thirteenHigh != 999999{
				stars(variable: level.thirteenHigh, twoStars: 4.0, threeStars: 3.0)
			}  else if level.number == 14 && level.fourteenHigh != 999999{
				stars(variable: level.fourteenHigh, twoStars: 4.0, threeStars: 3.0)
			}  else if level.number == 15 && level.fifteenHigh != 999999{
				stars(variable: level.fifteenHigh, twoStars: 4.0, threeStars: 3.0)
			} else {
				self.time.text = "No Time"
			
				print("999999 or not on")
				print(level.oneHigh)

				self.noStars.isHidden = false
				self.oneStar.isHidden = true
				self.twoStar.isHidden = true
				self.threeStar.isHidden = true
			}
			
			
			
			
			
			
			
			
			
			
            
        
        if level.number <= level.highestAvailable {
            print("not Locked")
            self.noStars.isHidden = false
            self.time.isHidden = false
            self.lockHerUp.isHidden = true
            self.canPlay = true
        } else {
            print("locked")
            self.lockHerUp.isHidden = false
            self.time.isHidden = true

            self.noStars.isHidden = true
            self.canPlay = false
        }
        })
	}

	
	
	@IBOutlet weak var waveBack: UIImageView!
	@IBOutlet weak var waveFront: UIImageView!
	func swipe(left: Bool){
		func delay(delay: Double, closure: @escaping () -> () ){
			let when = DispatchTime.now() + delay
			DispatchQueue.main.asyncAfter(deadline: when) {
				closure()
			}
			
		}

        delay(delay: 0.01, closure: {
            self.slidey.setValue(Float(level.number), animated: true)
        })
        
        
        
		if left {
			if level.number != 15 {

			if current != 3 {
				print("First:")
				print(current)
				current += 1
				print("Second:")
				print(current)

			} else {
				print("CURRENT IS THREE")
				current = 1
			}
			level.number += 1
			imageUpdate()

			print("Current: \(current)")
			
			UIView.animate(withDuration: 1.0, delay: 0.01, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.9, options: [], animations: {
				self.levelOne.center.x -= 300
				self.levelText.center.x -= 300
				self.textTwo.center.x -= 300
				self.levelTwo.center.x -= 300
				self.textThree.center.x -= 300
				self.levelThree.center.x -= 300
				self.clouds.center.x -= 25
			}, completion: nil)
			
			if current == 1 {
				
				
				self.levelText.text = "\(level.number)"
				
				delay(delay: 1.0, closure: {
					
					
						print(level.number)
					self.levelThree.center.x += 900
					self.textThree.center.x += 900
					print(self.levelThree.center.x)
				})
			} else if current == 2 {
				
				self.textTwo.text = "\(level.number)"
				
				delay(delay: 1.0, closure: {
					
					
						print(level.number)

					self.levelOne.center.x += 900
					self.levelText.center.x += 900
					
					print(self.levelOne.center.x)
					
				})
				
			} else if current == 3 {
				
				self.textThree.text = "\(level.number)"
				
				delay(delay: 1.0, closure: {
					
						print(level.number)

					self.levelTwo.center.x += 900
					self.textTwo.center.x += 900
					print(self.levelTwo.center.x)
					
				})
				
			}
			} else {
				UIView.animate(withDuration: 0.25, delay: 0.01, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.9, options: [], animations: {
					
					
					self.levelOne.center.x -= 50
					self.levelText.center.x -= 50
					self.textTwo.center.x -= 50
					self.levelTwo.center.x -= 50
					self.textThree.center.x -= 50
					self.levelThree.center.x -= 50
					self.clouds.center.x -= 5
		
				}, completion: nil)
				UIView.animate(withDuration: 0.25, delay: 0.25, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.9, options: [], animations: {
					self.levelOne.center.x += 50
					self.levelText.center.x += 50
					self.textTwo.center.x += 50
					self.levelTwo.center.x += 50
					self.textThree.center.x += 50
					self.levelThree.center.x += 50
					self.clouds.center.x += 5
					
				}, completion: nil)

			}
			
			
			
			
		} else if !left {
			if level.number != 1 {
				if current != 1 {
					current -= 1
				} else {
					current = 3
				}
				level.number -= 1
				imageUpdate()
				print("Current: \(current)")
				if current == 1 {
					levelText.text = "\(level.number)"
					levelOne.center.x -= 900
					levelText.center.x -= 900
				} else if current == 2 {
					levelTwo.center.x -= 900
					textTwo.center.x -= 900
					textTwo.text = "\(level.number)"
				}else if current == 3 {
					levelThree.center.x -= 900
					textThree.center.x -= 900
					textThree.text = "\(level.number)"
				}
				UIView.animate(withDuration: 1.0, delay: 0.01, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.9, options: [], animations: {
					self.levelOne.center.x += 300
					self.levelText.center.x += 300
					self.textTwo.center.x += 300
					self.levelTwo.center.x += 300
					self.textThree.center.x += 300
					self.levelThree.center.x += 300
					self.clouds.center.x += 25
					
				}, completion: nil)
			}else{
				UIView.animate(withDuration: 0.25, delay: 0.01, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.9, options: [], animations: {
					self.levelOne.center.x += 50
					self.levelText.center.x += 50
					self.textTwo.center.x += 50
					self.levelTwo.center.x += 50
					self.textThree.center.x += 50
					self.levelThree.center.x += 50
					self.clouds.center.x += 5
					
				}, completion: nil)
				UIView.animate(withDuration: 0.25, delay: 0.25, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.9, options: [], animations: {
					self.levelOne.center.x -= 50
					self.levelText.center.x -= 50
					self.textTwo.center.x -= 50
					self.levelTwo.center.x -= 50
					self.textThree.center.x -= 50
					self.levelThree.center.x -= 50
					self.clouds.center.x -= 5
					
				}, completion: nil)
			}
			
			
			
			
			
			
			
			
		}
		
		
		
	}

	override func viewDidLoad() {
		
		level.update()
		super.viewDidLoad()
		level.justPassed = false
		self.levelText.text = "\(level.number)"
		imageUpdate()

		
		if level.newUnlock {
			level.delay(delay: 0.5, closure: {
				self.swipe(left: true)
				level.newUnlock = false

			})
			
		}
		if !level.playedYet || level.number == level.highestAvailable {
		level.delay(delay: 0.00001, closure: {
			if !level.newUnlock {
				level.number = level.highestAvailable
				self.imageUpdate()
				self.levelText.text = "\(level.number)"

			} else {
				level.number = level.highestAvailable - 1
				self.levelText.text = "\(level.number)"

				self.imageUpdate()



			}
			
		})
		}
		
		
		imageUpdate()
		let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture))
		swipeRight.direction = UISwipeGestureRecognizerDirection.right
		self.view.addGestureRecognizer(swipeRight)
		
		let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture))
		swipeLeft.direction = UISwipeGestureRecognizerDirection.left
		self.view.addGestureRecognizer(swipeLeft)
		
		

		
	}
	
	func respondToSwipeGesture(gesture: UIGestureRecognizer) {
		func swipe(left: Bool){
			func delay(delay: Double, closure: @escaping () -> () ){
				let when = DispatchTime.now() + delay
				DispatchQueue.main.asyncAfter(deadline: when) {
					closure()
				}
				
			}
			delay(delay: 0.01, closure: {
				self.slidey.setValue(Float(level.number), animated: true)
			})
			if left {
				if level.number != 15 {
					levelTwo.alpha = 1.0
					textTwo.alpha = 1.0

					
					if current != 3 {
						print("First:")
						print(current)
						current += 1
						print("Second:")
						print(current)
						
					} else {
						print("CURRENT IS THREE")
						current = 1
					}
					level.number += 1
					imageUpdate()
					
					print("Current: \(current)")
					
					UIView.animate(withDuration: 1.0, delay: 0.01, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.9, options: [], animations: {
						self.levelOne.center.x -= 300
						self.levelText.center.x -= 300
						self.textTwo.center.x -= 300
						self.levelTwo.center.x -= 300
						self.textThree.center.x -= 300
						self.levelThree.center.x -= 300
						self.clouds.center.x -= 25
					}, completion: nil)
					
					if current == 1 {
						
						
						self.levelText.text = "\(level.number)"
				
						
						delay(delay: 1.0, closure: {
							
							
								print(level.number)

							
							self.levelThree.center.x += 900
							self.textThree.center.x += 900
							print(self.levelThree.center.x)
							
						})
					} else if current == 2 {
						
						self.textTwo.text = "\(level.number)"
						
						delay(delay: 1.0, closure: {
							
							
								print(level.number)

							self.levelOne.center.x += 900
							self.levelText.center.x += 900
							
							print(self.levelOne.center.x)
							
							
						})
						
					} else if current == 3 {
						
						self.textThree.text = "\(level.number)"
						
						delay(delay: 1.0, closure: {
							
								print(level.number)

							self.levelTwo.center.x += 900
							self.textTwo.center.x += 900
							print(self.levelTwo.center.x)
						
						})
						
					}
				} else {
					
					
					UIView.animate(withDuration: 0.25, delay: 0.01, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.9, options: [], animations: {
						
						
						self.levelOne.center.x -= 50
						self.levelText.center.x -= 50
						self.textTwo.center.x -= 50
						self.levelTwo.center.x -= 50
						self.textThree.center.x -= 50
						self.levelThree.center.x -= 50
						self.clouds.center.x -= 5
						
					}, completion: nil)
					UIView.animate(withDuration: 0.25, delay: 0.25, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.9, options: [], animations: {
						self.levelOne.center.x += 50
						self.levelText.center.x += 50
						self.textTwo.center.x += 50
						self.levelTwo.center.x += 50
						self.textThree.center.x += 50
						self.levelThree.center.x += 50
						self.clouds.center.x += 5
						
					}, completion: nil)
					
				}
				
				
				
				
				
				
				
				
			} else if !left {
				if level.number != 1 {
				if current != 1 {
					current -= 1
				} else {
					current = 3
				}
				level.number -= 1
				
					imageUpdate()
					
				print("Current: \(current)")
				if current == 1 {
					levelText.text = "\(level.number)"
					levelOne.center.x -= 900
					levelText.center.x -= 900
				} else if current == 2 {
					levelTwo.center.x -= 900
					textTwo.center.x -= 900
					textTwo.text = "\(level.number)"
				}else if current == 3 {
					levelThree.center.x -= 900
					textThree.center.x -= 900
					textThree.text = "\(level.number)"
				}
				UIView.animate(withDuration: 1.0, delay: 0.01, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.9, options: [], animations: {
					self.levelOne.center.x += 300
					self.levelText.center.x += 300
					self.textTwo.center.x += 300
					self.levelTwo.center.x += 300
					self.textThree.center.x += 300
					self.levelThree.center.x += 300
					self.clouds.center.x += 25

				}, completion: nil)
				}else{
					UIView.animate(withDuration: 0.25, delay: 0.01, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.9, options: [], animations: {
						self.levelOne.center.x += 50
						self.levelText.center.x += 50
						self.textTwo.center.x += 50
						self.levelTwo.center.x += 50
						self.textThree.center.x += 50
						self.levelThree.center.x += 50
						self.clouds.center.x += 5
						
					}, completion: nil)
					UIView.animate(withDuration: 0.25, delay: 0.25, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.9, options: [], animations: {
						self.levelOne.center.x -= 50
						self.levelText.center.x -= 50
						self.textTwo.center.x -= 50
						self.levelTwo.center.x -= 50
						self.textThree.center.x -= 50
						self.levelThree.center.x -= 50
						self.clouds.center.x -= 5
						
					}, completion: nil)
				}

				
				
				
				
				
				
				
			}
			
			
			
		}
		
		
		
		if let swipeGesture = gesture as? UISwipeGestureRecognizer {
			switch swipeGesture.direction {
			case UISwipeGestureRecognizerDirection.right:
				print("Swiped right")
				swipe(left: false)
			case UISwipeGestureRecognizerDirection.down:
				print("Swiped down")
			case UISwipeGestureRecognizerDirection.left:
				print("Swiped left")
				swipe(left: true)
			case UISwipeGestureRecognizerDirection.up:
				print("Swiped up")
			default:
				break
			}
		}
	}
	
	
	override func viewWillAppear(_ animated: Bool) {
		self.waveBack.center.y = 5000
		
	}
	override func viewDidAppear(_ animated: Bool) {
		UIView.animate(withDuration: 3.0, delay: 0.0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.5, options: [], animations: {
			self.waveBack.center.y -= 1250
			self.flag.center.y += 500
		}, completion: nil)
		UIView.animate(withDuration: 3.0, delay: 0.2, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.5, options: [], animations: {
			self.waveFront.center.y -= 1250
			self.clouds.center.y += 250
			
		}, completion: nil)
		UIView.animate(withDuration: 90.0, delay: 0.0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0.1, options: [], animations: {
			self.waveBack.center.x -= 300
			self.waveFront.center.x += 300
			self.clouds.center.y += 50
			
		}, completion: nil)
	}
	
    @IBAction func pressOne(_ sender: Any) {
        level.delay(delay: 0.1, closure: {
            
        if self.current == 1 {
            if self.canPlay{
                UIView.animate(withDuration: 0.1, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.6, options: [], animations: {
                    
                    self.levelOne.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
                    self.levelText.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
					
                }, completion: nil)
                UIView.animate(withDuration: 2.0, delay: 0.1, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.6, options: [], animations: {
                    
                    self.levelOne.transform = CGAffineTransform(scaleX: 3.0, y: 3.0)
                    self.levelText.transform = CGAffineTransform(scaleX: 3.0, y: 3.0)
                })
                level.delay(delay: 0.15, closure: {
					print(level.oneHigh)
                    
                    self.performSegue(withIdentifier: "toLevel", sender: nil)
                })
            } else {
				
				UIView.animate(withDuration: 0.2, delay: 0.0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.3, options: [], animations: {
					self.lockHerUp.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
				}, completion: nil)
				UIView.animate(withDuration: 0.2, delay: 0.19, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.3, options: [], animations: {
					self.lockHerUp.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
				}, completion: nil)
				UIView.animate(withDuration: 0.2, delay: 0.28, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.3, options: [], animations: {
					self.lockHerUp.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
				}, completion: nil)
				UIView.animate(withDuration: 0.2, delay: 0.37, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.3, options: [], animations: {
					self.lockHerUp.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
				}, completion: nil)
				UIView.animate(withDuration: 0.1, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.6, options: [], animations: {
					
					self.levelOne.center.x += 5
					self.levelText.center.x += 5
					self.lockHerUp.center.x += 5
					
				}, completion: nil)
				UIView.animate(withDuration: 0.1, delay: 0.1, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.6, options: [], animations: {
					
					self.levelOne.center.x -= 10
					self.levelText.center.x -= 10
					self.lockHerUp.center.x -= 10
					
				}, completion: nil)
				UIView.animate(withDuration: 0.1, delay: 0.2, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.6, options: [], animations: {
					
					self.levelOne.center.x += 5
					self.levelText.center.x += 5
					self.lockHerUp.center.x += 5
					
				}, completion: nil)
            }
        }else{
            self.swipe(left: true)
        }
        })

        
    }
	
    @IBAction func pressTwo(_ sender: Any) {
		level.delay(delay: 0.1, closure: {
			
			if self.current == 2 {
				if self.canPlay{
                    UIView.animate(withDuration: 0.1, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.6, options: [], animations: {
                        
                        self.levelTwo.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
                        self.textTwo.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
						
                    }, completion: nil)
                    UIView.animate(withDuration: 2.0, delay: 0.1, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.6, options: [], animations: {
                        
                        self.levelTwo.transform = CGAffineTransform(scaleX: 3.0, y: 3.0)
                        self.textTwo.transform = CGAffineTransform(scaleX: 3.0, y: 3.0)
                    })
                    level.delay(delay: 0.15, closure: {
                        
                        self.performSegue(withIdentifier: "toLevel", sender: nil)
                    })
				} else {
					
					
					UIView.animate(withDuration: 0.2, delay: 0.0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.3, options: [], animations: {
						self.lockHerUp.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
					}, completion: nil)
					UIView.animate(withDuration: 0.2, delay: 0.19, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.3, options: [], animations: {
						self.lockHerUp.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
					}, completion: nil)
					UIView.animate(withDuration: 0.2, delay: 0.28, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.3, options: [], animations: {
						self.lockHerUp.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
					}, completion: nil)
					UIView.animate(withDuration: 0.2, delay: 0.37, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.3, options: [], animations: {
						self.lockHerUp.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
					}, completion: nil)
					UIView.animate(withDuration: 0.1, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.6, options: [], animations: {
						
						self.levelTwo.center.x += 5
						self.textTwo.center.x += 5
						self.lockHerUp.center.x += 5
						
					}, completion: nil)
					UIView.animate(withDuration: 0.1, delay: 0.1, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.6, options: [], animations: {
						
						self.levelTwo.center.x -= 10
						self.textTwo.center.x -= 10
						self.lockHerUp.center.x -= 10
						
					}, completion: nil)
					UIView.animate(withDuration: 0.1, delay: 0.2, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.6, options: [], animations: {
						
						self.levelTwo.center.x += 5
						self.textTwo.center.x += 5
						self.lockHerUp.center.x += 5
						
					}, completion: nil)
				}
			}else{
				self.swipe(left: true)
			}
		})

		
    }
	
	
    @IBAction func pressThree(_ sender: Any) {
		level.delay(delay: 0.1, closure: {
			
			if self.current == 3 {

				if self.canPlay{
                    UIView.animate(withDuration: 0.1, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.6, options: [], animations: {
                        
                        self.levelThree.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
                        self.textThree.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
                        self.lockHerUp.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
                        
                    }, completion: nil)
                    UIView.animate(withDuration: 2.0, delay: 0.1, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.6, options: [], animations: {
                        
                        self.levelThree.transform = CGAffineTransform(scaleX: 3.0, y: 3.0)
                        self.textThree.transform = CGAffineTransform(scaleX: 3.0, y: 3.0)
                        self.lockHerUp.transform = CGAffineTransform(scaleX: 3.0, y: 3.0)
                    })
                    level.delay(delay: 0.15, closure: {
                        
                        self.performSegue(withIdentifier: "toLevel", sender: nil)
                    })

				} else {
					
					UIView.animate(withDuration: 0.2, delay: 0.0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.3, options: [], animations: {
						self.lockHerUp.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
					}, completion: nil)
					UIView.animate(withDuration: 0.2, delay: 0.19, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.3, options: [], animations: {
						self.lockHerUp.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
					}, completion: nil)
					UIView.animate(withDuration: 0.2, delay: 0.28, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.3, options: [], animations: {
						self.lockHerUp.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
					}, completion: nil)
					UIView.animate(withDuration: 0.2, delay: 0.37, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.3, options: [], animations: {
						self.lockHerUp.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
					}, completion: nil)

					
					
					UIView.animate(withDuration: 0.1, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.6, options: [], animations: {
						
						self.levelThree.center.x += 5
						self.textThree.center.x += 5
						self.lockHerUp.center.x += 5

					}, completion: nil)
					UIView.animate(withDuration: 0.1, delay: 0.1, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.6, options: [], animations: {
						
						self.levelThree.center.x -= 10
						self.textThree.center.x -= 10
						self.lockHerUp.center.x -= 10

					}, completion: nil)
					UIView.animate(withDuration: 0.1, delay: 0.2, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.6, options: [], animations: {
						
						self.levelThree.center.x += 5
						self.textThree.center.x += 5
						self.lockHerUp.center.x += 5

					}, completion: nil)
				}
			}else{
				self.swipe(left: true)
			}
		})
		
		
		
        
    }
	
	
	
	
	
    @IBOutlet weak var time: UITextView!
	
	@IBOutlet weak var levelOne: UIButton!
	
	@IBOutlet weak var levelTwo: UIButton!
	
	@IBOutlet weak var levelThree: UIButton!
	
	@IBOutlet weak var levelText: UITextView!
	
	@IBOutlet weak var textTwo: UITextView!
	
	@IBOutlet weak var textThree: UITextView!
	
	@IBOutlet weak var flag: UIImageView!
	
	@IBOutlet weak var clouds: UIImageView!
	
    @IBOutlet weak var noStars: UIImageView!
    
    @IBOutlet weak var oneStar: UIImageView!
    
    @IBOutlet weak var twoStar: UIImageView!
    
    @IBOutlet weak var threeStar: UIImageView!
    
	
    @IBOutlet weak var lockHerUp: UIImageView!
    @IBOutlet weak var slidey: UISlider!
    
    

    @IBAction func sliderChanged(_ sender: UISlider) {
        
        level.number = Int(round(slidey.value))
        imageUpdate()
        
    }
}



