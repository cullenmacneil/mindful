//
//  CalculatorScreen.swift
//  Mindful
//
//  Created by Cullen Macneil on 12/3/22.
//

import UIKit

class CalculatorScreen: UIViewController {
    
    //Establishing an outlet between the users input (top section) and the calculators answer (bottom section)
    
    @IBOutlet weak var calculatorInput: UILabel!
    @IBOutlet weak var calculatorAnswer: UILabel!
    
    
    //Establshing the users input as an empty string
    
    var input:String = ""
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //Everytime the view is reloaded, we reset the calculator
        
        clearAll()
    }
    
    
    //The function resets the users input, reinitializes the users input to an empty string, the calculator input as an empty string, and the calculator answer as an empty string
    
    func clearAll(){
        
        input = ""
        calculatorInput.text = ""
        calculatorAnswer.text = ""
        
    }
    
    
    //Establishing a function that returns a boolean value on whether or not the user input a valid input
    
    func validInput() ->Bool
        {
            
            //Sets the count of special characters to 0, and creates a varaible to keep track of the characters input into the calcluator
            
            var count = 0
            var funcCharIndexes = [Int]()
            
            //Runs a loop for each input in the calculator to count all of the unknown characters
            
            for char in input
            {
                if(specialCharacter(char: char))
                {
                    funcCharIndexes.append(count)
                }
                count += 1
            }
            
            var previous: Int = -1
            
            
            //For the value of funcCharIndexes we check to see the value of index, if any of the statements are satisified we know we have an invalide character and we return false, else we will itterate through the whole loop and return true, which lets us know that the user used all valide characters
            
            for index in funcCharIndexes
            {
                if(index == 0)
                {
                    return false
                }
                
                if(index == input.count - 1)
                {
                    return false
                }
                
                if (previous != -1)
                {
                    if(index - previous == 1)
                    {
                        return false
                    }
                }
                previous = index
            }
            
            return true
        }
    
    //Validates the character input is a special character that we can use to do arithmetic using simput if statments and returning either tru or false based on the results of the if statements
    
    func specialCharacter (char: Character) -> Bool
        {
            if(char == "*")
            {
                return true
            }
            if(char == "/")
            {
                return true
            }
            if(char == "+")
            {
                return true
            }
            return false
        }
        
    //Establishes a connection between the clear button and the backend, calling the clearAll function
    
    @IBAction func clearTap(_ sender: Any) {
        
        clearAll()
        
    }
    
    //Creates the functionality for the delete button, if the input is already empty the function will do nothing. But, if the input is not empty we remove the last digit/input and reset the value of the calculator input
    
    @IBAction func backTap(_ sender: Any) {
        
        if(!input.isEmpty)
                {
                    input.removeLast()
                    calculatorInput.text = input
                }
    }
    
    //Creating a function where we can add the characters we type on the calculator to the input of the calculator. We do such by constantly adding the input to itself along with the value the user types ie digit. Then we reinitialize the calculators input to the input we just established
    
    func addToInput(value: String){
        
        input = input + value
        calculatorInput.text = input
        
    }
    
    //Establishes a connection between the percent button and the backend, we then add this value to the input of the calculator
    
    @IBAction func percentTap(_ sender: Any) {
        
        addToInput(value: "%")
        
    }
    
    //Establishes a connection between the divide button and the backend, we then add this value to the input of the calculator
    
    @IBAction func divideTap(_ sender: Any) {
        
        addToInput(value: "/")
        
    }
    
    //Establishes a connection between the multiply button and the backend, we then add this value to the input of the calculator
    
    @IBAction func multiplyTap(_ sender: Any) {
        
        addToInput(value: "*")
        
    }
    
    //Establishes a connection between the subtract button and the backend, we then add this value to the input of the calculator
    
    @IBAction func subtractTap(_ sender: Any) {
        
        addToInput(value: "-")
        
    }
    
    //Establishes a connection between the add button and the backend, we then add this value to the input of the calculator
    
    @IBAction func plusTap(_ sender: Any) {
        
        addToInput(value: "+")
        
    }
    
    //Establishes a connection between the decimal button and the backend, we then add this value to the input of the calculator
    
    @IBAction func decimalTap(_ sender: Any) {
        
        addToInput(value: ".")
        
    }
    
    //Establishes a connection between the zero button and the backend, we then add this value to the input of the calculator
    
    @IBAction func zeroTap(_ sender: Any) {
        
        addToInput(value: "0")
        
    }
    
    //Establishes a connection between the one button and the backend, we then add this value to the input of the calculator
    
    @IBAction func oneTap(_ sender: Any) {
        
        addToInput(value: "1")
        
    }
    
    //Establishes a connection between the two button and the backend, we then add this value to the input of the calculator
    
    @IBAction func twoTap(_ sender: Any) {
        
        addToInput(value: "2")
        
    }
    
    //Establishes a connection between the three button and the backend, we then add this value to the input of the calculator
    
    @IBAction func threeTap(_ sender: Any) {
        
        addToInput(value: "3")
        
    }
    
    //Establishes a connection between the four button and the backend, we then add this value to the input of the calculator
    
    @IBAction func fourTap(_ sender: Any) {
        
        addToInput(value: "4")
        
    }
    
    //Establishes a connection between the five button and the backend, we then add this value to the input of the calculator
    
    @IBAction func fiveTap(_ sender: Any) {
        
        addToInput(value: "5")
        
    }
    
    //Establishes a connection between the six button and the backend, we then add this value to the input of the calculator
    
    @IBAction func sixTap(_ sender: Any) {
        
        addToInput(value: "6")
        
    }
    
    //Establishes a connection between the seven button and the backend, we then add this value to the input of the calculator
    
    @IBAction func sevenTap(_ sender: Any) {
        
        addToInput(value: "7")
        
    }
    
    //Establishes a connection between the eight button and the backend, we then add this value to the input of the calculator
    
    @IBAction func eightTap(_ sender: Any) {
        
        addToInput(value: "8")
        
    }
    
    //Establishes a connection between the nine button and the backend, we then add this value to the input of the calculator
    
    @IBAction func nineTap(_ sender: Any) {
        
        addToInput(value: "9")
        
    }
    
    //Creates a function for when the equal button is tapped
    
    @IBAction func equalTap(_ sender: Any) {
        
        
        //If valid input is true we cotinue to formatting our answer
        
        if(validInput())
                {
            
                    //We check if the user clicked the percent function, if so we multiply the answer by 0.01
            
                    let checkedInputForPercent = input.replacingOccurrences(of: "%", with: "*0.01")
            
                    //We then utilize the use of checkedInputForPercent to format our answer accordingly
                
                    let expression = NSExpression(format: checkedInputForPercent)
                    let answer = expression.expressionValue(with: nil, context: nil) as! Double
            
                    //Calls our format string fucntion in order to proeprly format the string we want
            
                    let answerString = formatAnswer(answer: answer)
            
                    //Finally we get the answer and set the string value of calculatorAnswer equal to the answer string that we just formatted
                    calculatorAnswer.text = answerString
            
                }
                else
                {
                    
                    //Is the uer placed an invalid input we display a message showcasing that we cannot do th eoperation
                    
                    let alert = UIAlertController(
                        title: "Invalid Input",
                        message: "Calculator unable to do math based on input",
                        preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Okay", style: .default))
                    self.present(alert, animated: true, completion: nil)
                    
                }
        
        
    }
    
    //We format the answer and return a string
    
    func formatAnswer(answer: Double) -> String
    {
        if(answer.truncatingRemainder(dividingBy: 1) == 0)
        {
            
            //If the answer has no deicmals we display it as such
            
            return String(format: "%.0f", answer)
            
        }
        else
        {
            //Else if the answer has decimals we display it to the precision of the hundredths place
            
            return String(format: "%.2f", answer)
            
        }
    }
}
