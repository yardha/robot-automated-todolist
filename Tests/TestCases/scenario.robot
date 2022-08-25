*** Settings ***
Library                                   SeleniumLibrary
Resource                                  ../TestSteps/steps.robot
Resource                                  ../Variables/variables.robot

*** Comments ***


*** Test Cases ***
Add Task
    Open Todolist
    Type Task
    Add Task

Finishing Task
    Checklist Task

Deleting Task
    Remove Task

Finishing To Do List
    Type Multiple Tasks
    Finishing Multiple Tasks
    Clear All Completed Tasks