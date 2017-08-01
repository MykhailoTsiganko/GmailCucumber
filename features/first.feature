Feature: Gmail message meneger test

  Scenario: Delete importent messages
    Given I login with credential username='SelTestTsyganko@gmail.com' password ='Selenium1'
    When I mark 3 messages as important
    And go to important
    And delete recently added messages
    Then check if deleted messages arent present on the page

  Scenario Outline: Delete importent messages for different users
    Given I login with credential username='<username>' password ='<password>'
    When I mark <messageNumber> messages as important
    And go to important
    And delete recently added messages
    Then check if deleted messages arent present on the page

    Examples: 
      | username                            | password               | messageNumber |
      | taras.tsyhanko.tk.2014@lpnu.ua      | 05.10.1996             |             3 |
      | novacug.cucumber@gmail.com          | GigurdaZargeng38       |             1 |
      | mykhailo.tsyhanko@gmail.com         | ReGmiha231             |             3 |
      | Micle.AutomationBudda2017@gmail.com | TheSkyIsShiningBricly1 |             1 |
