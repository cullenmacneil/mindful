//
//  ToDoScreen.swift
//  Mindful
//
//  Created by Cullen Macneil on 12/1/22.
//

import UIKit

class ToDoScreen: UIViewController {
    
    //Initialzing items as a string so that later we can accept the users input as a string
    
    var items = [String]()
    
    @IBOutlet weak var Table: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Setting the delegate for "Table" as its self. Sets the data source for "Table" as itself
        
        Table.delegate = self
        Table.dataSource = self

    }
    
    @IBAction func AddButtonClicked(_ sender: UIButton) {
        
        //Establishes the text field of the alert, the alert itself, and the cancel button
        
        var textField = UITextField()
        let alert = UIAlertController(title: "Add new item", message: "", preferredStyle: .alert)
        let cancel = UIAlertAction(title: "Cancel", style: .default) { (cancel) in
            
        }
        
        //Sets the save button of out alert to append the text ("items" later referenced as "self") and the reloads the table in the view comtroller so that the user activley sees the results
        
        let save = UIAlertAction(title: "Save", style: .default) { (save) in
        
            self.items.append(textField.text!)
            self.Table.reloadData()
            
        }
        
        
        //We add the text fiked that we established before as well as a placeholding value for the alert
        
        alert.addTextField { (text) in
            textField = text
            textField.placeholder = "New reminder"
        }
        
        //Adding the actions that we ealier declared to the alert that appears when the user clicks the plus button
        
        alert.addAction(cancel)
        alert.addAction(save)
        
        //Shows the alert that we established the data for in the lines above, we also establishes that the alert is animated for UI and use nil becasue we want to return nothing
        
        self.present(alert, animated: true, completion: nil)
        
    }
    
}


//Extending our ViewController to also accept UITableViewDelegate and UITableViewDataSource so we manage the tbale/To Do list portion of the screen

extension ToDoScreen: UITableViewDelegate, UITableViewDataSource {
    
    //Establishing a function for the formatting of the table that utilizes UITableView as our table view and estableshed that the number of rows in the table will be an int, we want to return an int so we can figure how many rows we need
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return items.count
        
    }
    
    
    //A function for table view that estableshed where the new cell of the table will go, the table view utilized will be UITableView and will establish where the text the user is inputting will go. We reuse the prototype cell from the storyboard as a placeholder as we receive the information from the user
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //We set cell equal to the prototyped cell as a template, we then deque said cell the cell gets appened in the uders view and set the text for the cell equal to the string for "items" as indexPath.row. We then return this information by returning cell
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]

        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
    //If the editing style is deltion, we remove the cell on the backend in which the user is currently at (indexPath.row) and we remove it from the view conreoller with a fading effect
        
      if editingStyle == .delete {
          
          self.items.remove(at: indexPath.row)
          tableView.deleteRows(at: [indexPath], with: .fade)
          
      }
    }
}
