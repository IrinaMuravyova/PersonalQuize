//
//  Question.swift
//  PersonalQuize
//
//  Created by Irina Muravyeva on 05.10.2023.
//


struct Question {
    let title: String
    let typeQuestion: ResponseType
    let answers: [Answer]
    
    func getQuestions() -> [Question] {
        [
            Question(title: "Какую пишу Вы предпочитаете ?",
                     typeQuestion: .single,
                     answers: [Answer(title: "Стейк", animal: .dog),
                               Answer(title: "Рыба", animal: .cat),
                               Answer(title: "Морковь", animal: .rabbit),
                               Answer(title: "Кукуруза", animal: .turtle)
                              ]),
            Question(title: "Какую пишу Вы предпочитаете ?",
                     typeQuestion: .multiple,
                     answers: [Answer(title: "Плавать", animal: .turtle),
                               Answer(title: "Спать", animal: .cat),
                               Answer(title: "Обниваться", animal: .rabbit),
                               Answer(title: "Есть", animal: .dog)]),
            Question(title: "Любите ли Вы поездки на машине ?",
                     typeQuestion: .rangered,
                     answers: [Answer(title: "Ненавижу", animal: .cat),
                               Answer(title: "", animal: .turtle),
                               Answer(title: "", animal: .rabbit),
                               Answer(title: "Обожаю", animal: .dog)])
        ]
    }
}

enum ResponseType {
    case single
    case multiple
    case rangered
}

struct Answer {
    let title: String
    let animal: Animal
}

enum Animal: Character {
    case cat = "🐈"
    case dog = "🐶"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .cat:
            return "Вы себе на уме. Любите гулять сами по себе. Вы цените одиночество."
        case .dog:
            return "Вам нравится быть с друзьями. Вы окружаете себя людьми, которые Вам нравятся и всегда готовы помочь."
        case .rabbit:
            return "Вам нравится всё мягкое. Вы здоровы и полны энергии."
        case .turtle:
            return "Ваша сила - в мудрости. Медленный и вдумчивые выигрывает на больших дистанциях."
        }
    }
}
