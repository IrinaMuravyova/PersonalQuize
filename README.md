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
* проверка логина/пароля пользователя, loguot
* переход между экранами
* передача данных с одного экрана на другой через prepare
* заливка градиентом
* UITabBarController
* работа с клавиатурой
* алерты


### Техническое задание к проекту:

Передать массив с ответами на экран с результатами
Определить наиболее часто встречающийся тип животного
Отобразить результаты в соотвствии с этим животным
Избавиться от кнопки возврата назад на экране результатов


![screenshot of sample](https://i.ibb.co/gmBSfGm/Personal-Quize.jpg)

## Documentation

### ViewControllers:

* LoginViewController - отвечает за авторизацию пользователя.
     
  #### Methods:
  
  ***forgotUserNameButtonDidTap*** - выводит алерт с напоминанием имени пользователя
  
  ***forgotPasswordButtonTapped*** - выводит алерт с напоминание пароля
  
  ***logInButtonTapped*** - срабатывает по нажатию кнопки Login и содержит проверку логин/пароля
  
  ***sendAlert*** - настраивает шаблон алертов
  
* WelcomeViewController - отображает имя пользователя и кнопку логаута
* PersonViewController - содержит ФИ пользователя, его фото и приветственые слова от него
* TabBarController - настройки TabBar
* BioViewController - включает биографические данные пользователя
* ExperienceViewController - описывает рабочий опыт пользователя
* GradientView - устанавливает градиент
       
  #### Methods:
  
  ***setupGradient***

### Models:

**User** - задает логин и пароль для входа в приложение, содержит индивидуальные данные пользователя для наполнения Views



## Developers

- [Irina Muravyova](https://github.com/IrinaMuravyova)

## License
Project YandexAlgoritms is distributed under the MIT license.
