//
//  QuestionViewController.swift
//  PersonalQuize
//
//  Created by Irina Muravyeva on 03.10.2023.
//

import UIKit

class QuestionViewController: UIViewController {
    
// MARK: - IBOutlets
    @IBOutlet var progressView: UIProgressView!
    @IBOutlet var questionLabel: UILabel!
    
    @IBOutlet var singleStackView: UIStackView!
    @IBOutlet var singleStackButtons: [UIButton]!
    
    @IBOutlet var multipleStackView: UIStackView!
    @IBOutlet var multipleStackLabels: [UILabel]!
    @IBOutlet var multipleStackSwitchs: [UISwitch]!
    
    @IBOutlet var rangedStackView: UIStackView!
    @IBOutlet var rangedStackLabels: [UILabel]!
    @IBOutlet var rangedSlider: UISlider! {
        didSet {
            let answerCounts = Float(currentAnswers.count) - 1
            rangedSlider.maximumValue = answerCounts
            rangedSlider.value = answerCounts / 2
        }
    }
    
    private let questions = Question.getQuestions()
    private var questionIndex = 0
    
    private var resultAnswers: [Answer] = []
    private var currentAnswers: [Answer] {
        questions[questionIndex].answers
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resultVC = segue.destination as? ResultViewController else {return}
        resultVC.userAnswers = resultAnswers
    }
    
// MARK: - IBAction
    @IBAction func singleAnswerButtonPressed(_ sender: UIButton) {
        guard let buttonIndex = singleStackButtons.firstIndex(of: sender) else { return}
        
        let currentAnswer = currentAnswers[buttonIndex]
        resultAnswers.append(currentAnswer)
        
        nextQuestion()
    }
    
    @IBAction func multipleAnswerButtonPressed() {
        for (item, answer) in zip(multipleStackSwitchs, currentAnswers) {
            if item.isOn {
                resultAnswers.append(answer)
            }
        }
        
        nextQuestion()
    }
    
    @IBAction func rangedAnswerButtonPressed() {
        let index = lrintf(rangedSlider.value)
        resultAnswers.append(currentAnswers[index])
        
        nextQuestion()
    }
    
}

// MARK: - Private methods
extension QuestionViewController{
    private func updateUI() {
        
        for stack in [singleStackView, multipleStackView, rangedStackView] {
            stack?.isHidden = true
        }
        
        let currentQuestion = questions[questionIndex]
        questionLabel.text = currentQuestion.title
        
        title = "Вопрос № \(questionIndex + 1) из \(questions.count)"
        
        let totalProgress = Float(questionIndex) / Float(questions.count)
        progressView.setProgress(totalProgress, animated: true)
       
        showCurrentAnswers(for: currentQuestion.typeQuestion)
        
        
    }
    
    private func showCurrentAnswers(for type: ResponseType) {
        switch type {
        case .single:
            showSingleQuestion(with: currentAnswers)
        case .multiple:
            showMultilpeQuestion(with: currentAnswers)
        case .rangered:
            showRangedQuestion(with: currentAnswers)
        }
    }
    private func showSingleQuestion(with answer: [Answer]) {
        singleStackView.isHidden.toggle()
        
        for (button, answer) in zip(singleStackButtons, answer) {
            button.setTitle(answer.title, for: .normal)
        }
    }
    
    private func nextQuestion() {
        questionIndex += 1
        
        if questionIndex < questions.count {
            updateUI()
            return
        }
        
        performSegue(withIdentifier: "resultSegue", sender: nil)
    }
    
    private func showMultilpeQuestion(with answers: [Answer]) {
        multipleStackView.isHidden.toggle()
        
        for (label, answer) in zip(multipleStackLabels, answers) {
            label.text = answer.title
        }
    }
    
    private func showRangedQuestion(with answer: [Answer]) {
        rangedStackView.isHidden.toggle()
        
        rangedStackLabels.first?.text = answer.first?.title
        rangedStackLabels.last?.text = answer.last?.title
    }
}
