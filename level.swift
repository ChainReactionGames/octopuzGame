//
//  level.swift
//  octa
//
//  Created by Gary Gogis on 6/3/17.
//  Copyright © 2017 Gary Gogis. All rights reserved.
//

import Foundation

struct level {
    
    
    static let defaults = UserDefaults.standard
    static var levelsPassed: Int = level.defaults.integer(forKey: "highestLevel")
    
    static var highestAvailable = level.levelsPassed + 1
    static var number = 1
    static var oneHigh = level.defaults.double(forKey: "oneHigh")
    static var twoHigh = level.defaults.double(forKey: "twoHigh")
    static var threeHigh = level.defaults.double(forKey: "threeHigh")
    static var fourHigh = level.defaults.double(forKey: "fourHigh")
    static var fiveHigh = level.defaults.double(forKey: "fiveHigh")
    static var sixHigh = level.defaults.double(forKey: "sixHigh")
    static var sevenHigh = level.defaults.double(forKey: "sevenHigh")
    static var eightHigh = level.defaults.double(forKey: "eightHigh")
    static var nineHigh = level.defaults.double(forKey: "nineHigh")
    static var tenHigh = level.defaults.double(forKey: "tenHigh")
    static var elevenHigh = level.defaults.double(forKey: "elevenHigh")
    static var twelveHigh = level.defaults.double(forKey: "twelveHigh")
    static var thirteenHigh = level.defaults.double(forKey: "thirteenHigh")
    static var fourteenHigh = level.defaults.double(forKey: "fourteenHigh")
    static var fifteenHigh = level.defaults.double(forKey: "fifteenHigh")
    static var brainPower = level.defaults.double(forKey: "brainpower")
    static var justPassed = false
    static var newUnlock = false
    static var playedYet = false
    static func delay(delay: Double, closure: @escaping () -> () ){
        let when = DispatchTime.now() + delay
        DispatchQueue.main.asyncAfter(deadline: when) {
            closure()
        }
        
    }
    static func update(){
        defaults.set(levelsPassed, forKey: "highestLevel")
        level.highestAvailable = level.levelsPassed + 1
        defaults.set(brainPower, forKey: "brainpower")

        defaults.set(oneHigh, forKey: "oneHigh")
        defaults.set(twoHigh, forKey: "twoHigh")
        defaults.set(threeHigh, forKey: "threeHigh")
        defaults.set(fourHigh, forKey: "fourHigh")
        defaults.set(fiveHigh, forKey: "fiveHigh")
        defaults.set(sixHigh, forKey: "sixHigh")
        defaults.set(sevenHigh, forKey: "sevenHigh")
        defaults.set(eightHigh, forKey: "eightHigh")
        defaults.set(nineHigh, forKey: "nineHigh")
        defaults.set(tenHigh, forKey: "tenHigh")
        defaults.set(elevenHigh, forKey: "elevenHigh")
        defaults.set(twelveHigh, forKey: "twelveHigh")
        defaults.set(thirteenHigh, forKey: "thirteenHigh")
        defaults.set(fourteenHigh, forKey: "fourteenHigh")
        defaults.set(fifteenHigh, forKey: "fifteenHigh")
        
        
        
    }
}
