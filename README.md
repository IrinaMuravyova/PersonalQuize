<p align="center">
      <img src="https://i.ibb.co/qmqv7ZY/2024-04-13-17-42-50.png" width="726">
</p>

<p align="center">
   <img src="https://img.shields.io/badge/Engine-XCode v15.3-blueviolet">
   <img src="https://img.shields.io/badge/Version-v1.0-blue">
   <img src="https://img.shields.io/badge/License-MIT-green">
</p>

## About
Шуточное учебное приложение курса IOS разработчик от Swiftbook. 
На одном экране сменяются вопросы и способ их подачи, по итогу прохождения всех вопросов мы видим результаты теста.

**В проекте используются:**

* MVC архитектура
* размещение элементов интерфейса с помошью Storyboard
* переход между экранами по сегвею и кодом
* передача данных с одного экрана на другой через prepare
* NavigationController


### Техническое задание к проекту:

Приложение состоит из нескольких экранов.
Стартовый экран статичный, на нем мы запускаем опрос.
Следующий экран с динамическим интерфейсом открывается через модальный переход на NavigationController.
Динамический экран содержит progress view, вопросы и соответсвующие им атрибуты сменяются на этом же экране.
Возврат на первый экран через кнопку Done. Кнопка Done располагается на экране с результатами теста.
На экране результатов не должно быть кнопки возврата назад.


![screenshot of sample](https://i.ibb.co/gmBSfGm/Personal-Quize.jpg)

## Documentation

### ViewControllers:

* QuestionViewController - 
     
  #### Methods:
  
  ***singleAnswerButtonPressed*** - 
  
  ***multipleAnswerButtonPressed*** - 
  
  ***rangedAnswerButtonPressed*** - 
  
  ***QuestionViewController*** -
  
  ***showCurrentAnswers*** -
  
  ***showSingleQuestion*** -

  ***nextQuestion*** -

  ***showMultilpeQuestion*** -

  ***showRangedQuestion*** -
  
  
* ResultViewController - отображает имя пользователя и кнопку логаута
       
  #### Methods:
  
  ***DonePressed*** -
  
  ***calculateResult*** -
  
  ***showResult*** - 

### Models:

Все модели расположены в файле "Question.swift"

  ***Question*** - основная модель данных.
  
  ***ResponseType*** - категории вопросов и ответов
  
  ***Answer*** - весь список ответов под конкретный вопрос
  
  ***Animal*** - виды животных, возможных в результате теста, и их описание



## Developers

- [Irina Muravyova](https://github.com/IrinaMuravyova)

## License
Project PersonalQuize is distributed under the MIT license.
