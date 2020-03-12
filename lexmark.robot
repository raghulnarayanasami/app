*** Settings ***
Library  SeleniumLibrary
Suite Teardown    Close All Browsers
*** Variables ***
${LOGIN URL}      https://www.lexmark.com/en_us.html
*** Test Cases ***
Register
    [Tags]  Registration
    open browser    ${LOGIN URL}   chrome
    #click element  xpath:/html/body/div[2]/div[1]/div/div/div[2]/p/button
    sleep  5s
    #click on signin/register
    click element  xpath://*[@id="lxk-navbar-collapse-1"]/ul[2]/li[2]/a
    sleep  5s
    #click on register
    #wait until element is visible  xpath://*[@id="mainContent"]/div/div/div/article/form/div/section[2]/div/div/button
    click element  xpath://*[@id="mainContent"]/div/div/div/article/form/div/section[2]/div/div/button
    #selecting title
    select from list by value  xpath://*[@id="title"]    Mr.
    sleep  2s
    #entering first name
    input text  name:/atg/userprofiling/ProfileFormHandler.value.firstName    Ram
    sleep  2s
    #entering second name
    input text  name:/atg/userprofiling/ProfileFormHandler.value.lastName    Cris
    sleep  2s
    #entering company name
    input text  name:/atg/userprofiling/ProfileFormHandler.value.companyName    TCS
    sleep  2s
    #selecting intersted in
    select from list by value  xpath://*[@id="mainContent"]/div/article/div/section/form/div[5]/select    primaryUsage.Personal.useathome
    sleep  2s
    #entering email address
    input text  name:/atg/userprofiling/ProfileFormHandler.value.login    ram4@gmail.com
    sleep  2s
    #reentering email
    input text  name:/atg/userprofiling/ProfileFormHandler.value.secondEmailAddress    ram4@gmail.com
    sleep  2s
    #entering password
    input text  name:/atg/userprofiling/ProfileFormHandler.value.password    password@123
    sleep  2s
    #reentring password
    input text  name:/atg/userprofiling/ProfileFormHandler.value.confirmPassword    password@123
    sleep  2s
    click element  xpath://*[@id="mainContent"]/div/article/div/section/form/div[11]/label
    sleep  2s
    click element  xpath://*[@id="mainContent"]/div/article/div/section/form/div[12]/button[2]
    #element text should be  xpath://*[@id="mainContent"]/div/article/header/div    Your account has been created.
    close browser
Login
    [Tags]  Login
    open browser    ${LOGIN URL}   chrome
    Maximize Browser Window
    #click element  xpath:/html/body/div[2]/div[1]/div/div/div[2]/p/button
    sleep  5s
    #click on signin/register
    click element  xpath://*[@id="lxk-navbar-collapse-1"]/ul[2]/li[2]/a
    sleep  5s
    input text  name:/atg/userprofiling/ProfileFormHandler.value.login    ram2@gmail.com
    sleep  2s
    input text  name:/atg/userprofiling/ProfileFormHandler.value.password    password@123
    sleep  2s
    #click login button
    click element  xpath://*[@id="mainContent"]/div/div/div/article/form/div/section[1]/div/div/button
    sleep  5s
    #wait until element is visible  xpath:/html/body/div[2]/div[2]/div[1]/div[1]/div/div/div/div[2]/div[1]/div/div/div/div/div/div/div[1]/div/div/div/div[2]/div/div/div/div[1]/div/div/div/div[1]/div/div/div[2]/div/a
    #click on printers
    click element  xpath://*[@id="lxk-navbar-collapse-1"]/ul[1]/li[2]/a
    sleep  2s
    #click on small & medium printers
    click element  xpath://*[@id="lxk-navbar-collapse-1"]/ul[1]/li[2]/ul/li/div/div/ul/li[1]/a
    sleep  5s
    click element  xpath:/html/body/div[2]/div[2]/div[5]/div[1]/div/div/div/div/div/div[1]/div/div[1]/div/span
    sleep  30s
    #click view product
    #scroll element into view  xpath://*[@id="finder"]/div/div[2]/div/div[3]/div[1]/div[2]/div[1]/h4
   # sleep  1s
    #wait until element is visible  xpath://*[@id="finder"]/div/div[2]/div/div[3]/div[1]/div[2]/div[1]/h4  timeout=5s
    #click element  xpath://*[@id="finder"]/div/div[2]/div/div[3]/div[1]/div[2]/div[1]/h4
    #signout
    click element  xpath://*[@id="lxk-navbar-collapse-1"]/ul[2]/li[2]/a

    sleep  2s
    click element  xpath://*[@id="lxk-navbar-collapse-1"]/ul[2]/li[2]/ul/li/div/div/ul/li[4]/a
    sleep  2s
    close browser

*** Keywords ***
