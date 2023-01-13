//
//  TimerScreen.swift
//  Mindful
//
//  Created by Cullen Macneil on 11/30/22.
//

import UIKit

class TimerScreen: UIViewController {
    
    //Establishing a connection between the UI elements and the backend programming
    
    @IBOutlet weak var TimeLabel: UILabel!
    @IBOutlet weak var CancelLabel: UIButton!
    @IBOutlet weak var StartLabel: UIButton!
    
    
    //Declaring a timer, that has not started with 25 minutes on the clock
    
    var timer = Timer()
    var isTimerStarted = false
    var time = 1500
    var tracker = 1500
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func StartButtonTapped(_ sender: Any) {
        
        //Enables the cancel button
        
        CancelLabel.isEnabled = true
        CancelLabel.alpha = 1.0
        
        //Verifies if the timer is already started, if not will run code below
        
        if !isTimerStarted{
            
            //Starts the timer, updates the text for the "Start" label and mainatins the text color
            
            startTimer()
            isTimerStarted = true
            
            
        }else {
            
            //If the timer is already started, it will cancel it and resert the UI
            
            timer.invalidate()
            isTimerStarted = false
        }
    }
    
    //When the cancel button is tapped, reset how to cancel label looks and cancel/invalidate the timer
    
    @IBAction func CancelButtonTapped(_ sender: Any) {
        
        CancelLabel.setTitleColor(UIColor(red: 0.07, green: 0.33, blue: 0.45, alpha: 1.00), for: .normal)
        timer.invalidate()
        
        //Resets the timer back to 25 mins or 1500 seconds, resets the timer to the original position
        
        time = 1500
        isTimerStarted = false
        TimeLabel.text = "25:00"
    }
    
    
    func startTimer(){
        
        //Starts the timer and a counter that keeps track of seconds passed
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(updateTimer)), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer(){
        
        //Counts the time down, but the tracker up. The time is for the user, the tracker is maintain where we are in the time
        
        time -= 1
        tracker = tracker + 1
        TimeLabel.text = formatTime()
        
        //If time reaches 0, we reset the timer by calling timer.invalidate, we also reset the view of cancel lable as we go from having it enable to not
        
        if (time <= 0){
            
            CancelLabel.setTitleColor(UIColor(red: 0.07, green: 0.33, blue: 0.45, alpha: 1.00), for: .normal)
            CancelLabel.isEnabled = false
            timer.invalidate()
            
            //Resets the timer back to 25 mins or 1500 seconds, resets the timer to the original position
            
            time = 1500
            isTimerStarted = false
            TimeLabel.text = "25:00"
            
        }
        
        //Pomodoro studying is usually done with 25 mins of work, 5 mins of rest usually repreated in 4 sets. So we itterate through a for loop 4 times alternating timers to maintain if we are on a break period or a work period
        
        for var i in 1...4 {
            
            //If the tracker sees that the 25 mins have passed, the timer will enter the 5 minute rest period setting a timer automatically for that

            if (tracker == 3000){
                time = 300
                TimeLabel.text = "5:00"
                tracker = 300
            }
            
            //If the tracker sees that the 5 min timer is up, we reinitalize to a 25 minute timer to restart our pomodoro techinique
            
            if (tracker == 600){
                time = 1500
                TimeLabel.text = "25:00"
            }
            
            //Counts us through the for loop
            
            i = i + 1
            
            //If the users cancels their timer, the for loop will reinitialize
            
            if (CancelLabel.isEnabled == true) {
                i = 1
            }
            
        }
    }
        
    
    //Simply just writing how the label or timer is meant to be formatted in terms of minutes and seconds
    
        func formatTime()->String{
            let minutes = Int(time) / 60 % 60
            let seconds = Int(time) % 60
            return String(format:"%02i:%02i", minutes, seconds)
            
        }
    }
