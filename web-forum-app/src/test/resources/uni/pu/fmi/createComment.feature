
Feature: Създаване на коментар от потребител

  Scenario Outline: 
    Given Натиснем бутона за правене на коментар
    When Въведем коментара: "<text>"
    And Даваме оценка: "<rating>"
    And Натиснем бутона за коментиране
    Then Виждаме съобщение за създаване: "<expectedCreateMessage>"

    Examples: 
      | text        | rating | expectedCreateMessage                              |      
   	  | Харесах     | 5      |  Успешно добавихте коментар и оценка!			  |
      | Супер       |        |  Успешно добахихте коментар!                 |
      |             |        |  Секцията за коментар не може да е празна!   |  
      |             | 4      |  Секцията за коментар не може да е празна!   |      
