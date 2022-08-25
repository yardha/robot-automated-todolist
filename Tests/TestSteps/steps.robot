*** Settings ***
Library     SeleniumLibrary
Resource    ../Settings/Web/browser.robot

***Keywords***
Open Todolist
    Open Browser                    @{CHROME BROWSER}
    Maximize Browser Window

Type Task
    Click Element                   ${INPUT BOX}
    Input Text                      @{INPUT SINGLE TASK}

Add Task
    Click Element                   ${ADD TASK BUTTON}

Checklist Task
    Click Element                   ${FINISHING TASK 1}

Remove Task
    Click Element                   ${DELETING TASK 1}

Type Multiple Tasks
    FOR                             ${counter}          IN RANGE            0           3
        Run Keyword If                  ${status}           Exit For Loop
        ${counter}                      Set Variable        ${counter}+1
    END

Finishing Multiple Tasks


Clear All Completed Tasks