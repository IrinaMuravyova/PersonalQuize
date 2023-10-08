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
    
    var userAnswers: [Answer]!
    
    private var yourAnimal: Animal!

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
        
        var animalsCount: [Animal: Int] = [:]
        let animals = userAnswers.map({$0.animal})
        
        for animal in animals {
            if let animalCount = animalsCount[animal] {
                animalsCount.updateValue(animalCount + 1,
                                         forKey: animal)
            } else {
                animalsCount[animal] = 1
            }
        }
// второй вариант цикла
//        for animal in animals {
//            animalsCount[animal] = (animalsCount[animal] ?? 0) + 1
//        }
//
//        третий вариант
//        for animal in animals {
//            animalsCount[animal, default: 0] += 1
//        }
        
        let animalsCountSorted = animalsCount.sorted {$0.value > $1.value}
        yourAnimal = animalsCountSorted.first?.key
    }
    
    private func showResult() {
        resultLable.text = "Вы - \(yourAnimal.rawValue)!"
        definitionLabel.text = yourAnimal.definition
    }
}
