*** Variables *** 
${INPUT BOX}                    xpath=//input[@placeholder='Create a new todo...']
@{INPUT SINGLE TASK}            xpath=//input[@placeholder='Create a new todo...']      ${TASK 1}
${TASK 1}                       open website
${ADD TASK BUTTON}              xpath=//button[@class='todo-submit']
${FINISHING TASK 1 BUTTON}      xpath=//*[@id="root"]/main/div[3]/div[1]/label/input
${FINISHING TASK 2 BUTTON}      xpath=//*[@id="root"]/main/div[3]/div[2]/label/input
${FINISHING TASK 3 BUTTON}      xpath=//*[@id="root"]/main/div[3]/div[3]/label/input
${DELETING TASK 1 BUTTON}       xpath=//body//div[@id='root']//div//div[1]//button[1]//*[name()='svg']
${CLEAR TASK BUTTON}            xpath=//button[@class='clear']