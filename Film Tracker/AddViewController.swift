//
//  AddViewController.swift
//  Film Tracker
//
//  Created by Lotanna Igwe-Odunze on 3/2/19.
//

import UIKit

class AddViewController: UIViewController, UITextFieldDelegate {
    
    override func viewDidLoad() {
        entryField.delegate = self
    }
    
    private let fmgr = FilmManager.shared

    @IBOutlet weak var entryField: UITextField!

    @IBOutlet weak var saveButton: UIButton!
    
    @IBAction func saveFilmClicked(_ sender: UIButton) {
        
        if entryField.text != nil {
        
            fmgr.films.append(entryField.text!)
            
            saveButton.titleLabel?.text = "Saved!"
            
        }
        
    }
    
    //Hide the keyboard when Enter is pressed
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        entryField.resignFirstResponder()
        return true
    }
    
    //Clear the text field after typing
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        return true
    }
    
    
}

