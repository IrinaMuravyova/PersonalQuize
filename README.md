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
* работа с массивами


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

* QuestionViewController - отвечает за логику динамического экрана с вопросами
     
  #### Methods:
  
  ***singleAnswerButtonPressed*** - вызывается, когда пользователь нажимает один из вариантов ответа на первый вопрос
  
  ***multipleAnswerButtonPressed*** - вызывается, когда пользователь нажимает "Ответить" во втором вопросе
  
  ***rangedAnswerButtonPressed*** - вызывается, когда пользователь нажимает "Ответить" в третьем вопросе

  ***updateUI*** - скрывает ненужные элементы интерфейса динамического экрана, актуализирует progressBar и текс в NavigationBar
  
  ***showCurrentAnswers*** - вызывает нужный метод для отображения элементов интерфейса в зависимости от типа вопроса
  
  ***showSingleQuestion*** - показывает элементы интерфейса для первого вопроса

  ***nextQuestion*** - сохраняет номер текущего вопроса и обновляет интерфейс

  ***showMultilpeQuestion*** - показывает элементы интерфейса для второго вопроса

  ***showRangedQuestion*** - показывает элементы интерфейса для третьего вопроса
  
  
* ResultViewController - отвечает за логику экрана с результатом опроса
       
  #### Methods:
  
  ***DonePressed*** - возвращение к первому экрану
  
  ***calculateResult*** - просматривает все ответы и подсчитывает ответов для какого животного было больше
  
  ***showResult*** - отображение результата теста на экране

### Models:

Все модели расположены в файле "Question.swift"

  ***Question*** - основная модель данных.
  
        Methods:
        
            getQuestions - содержит данные вопросов
  
  ***ResponseType*** - категории вопросов и ответов
  
  ***Answer*** - весь список ответов под конкретный вопрос
  
  ***Animal*** - виды животных, возможных в результате теста, и их описание



## Developers

- [Irina Muravyova](https://github.com/IrinaMuravyova)

## License
Project PersonalQuize is distributed under the MIT license.
