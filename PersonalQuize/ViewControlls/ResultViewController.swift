//
//  ResultViewController.swift
//  PersonalQuize
//
//  Created by Irina Muravyeva on 05.10.2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var resultLable: UILabel!
    @IBOutlet var definitionLabel: UILabel!
    
    var yourAnimal: Animal!
    var userAnswers: [Answer]!
    
    var animalsCount: [Animal: Int] = [:]

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        calculateResult ()
        showResult()
    }
    
    @IBAction func DonePressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }

    private func calculateResult () {
        
        for answer in userAnswers {
            switch answer.animal {
            case .cat:
                if animalsCount[.cat] == nil {animalsCount = [.cat: 0]}
                animalsCount[.cat]! += 1
            case .dog:
                if animalsCount[.dog] == nil {animalsCount = [.dog: 0]}
                animalsCount[.dog]! += 1
            case .rabbit:
                if animalsCount[.rabbit] == nil {animalsCount = [.rabbit: 0]}
                animalsCount[.rabbit]! += 1
            case .turtle:
                if animalsCount[.turtle] == nil {animalsCount = [.turtle: 0]}
                animalsCount[.turtle]! += 1
                
            }
         }
        
        print(animalsCount)
        let animalsCountSorted = animalsCount.sorted {$0.value > $1.value}
        print(animalsCountSorted)
        yourAnimal = animalsCountSorted.first?.key
    }
    
    private func showResult() {
        resultLable.text = "Вы - \(yourAnimal.rawValue)!"
        definitionLabel.text = yourAnimal.definition
    }
}
