*** Settings ***
Library     SeleniumLibrary
Resource    ../Settings/Web/browser.robot

***Keywords***
Open Todolist
    Open Browser                    @{OPERA BROWSER}
    Maximize Browser Window

Type Task
    Sleep                           1
    Wait Until Element Is Visible   ${INPUT BOX}
    Click Element                   ${INPUT BOX}
    Input Text                      @{INPUT SINGLE TASK}

Add Task
    Sleep                           1
    Wait Until Element Is Visible   ${ADD TASK BUTTON}
    Click Element                   ${ADD TASK BUTTON}

Checklist Task
    Sleep                           1
    Click Element                   ${FINISHING TASK 1 BUTTON}

Remove Task
    Sleep                           1
    Click Element                   ${DELETING TASK 1 BUTTON}

Type Multiple Tasks
    Sleep                           1
    FOR                             ${counter}          IN RANGE            0           3
        Sleep                           1
        Type Task
        Sleep                           1
        Add Task
        ${counter}                      Set Variable        ${counter}+1
    END

Finishing Multiple Tasks
        Sleep                           1
        Click Element                   ${FINISHING TASK 1 BUTTON}
        Sleep                           1
        Click Element                   ${FINISHING TASK 2 BUTTON}
        Sleep                           1
        Click Element                   ${FINISHING TASK 3 BUTTON}
        Sleep                           1
        Click Element                   ${CLEAR TASK BUTTON}
        Sleep                           1
        
Close Website
    Close Browser