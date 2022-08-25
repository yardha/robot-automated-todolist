*** Variables *** 
${INPUT BOX}            xpath=//input[@placeholder='Create a new todo...']
@{INPUT SINGLE TASK}    xpath=//input[@placeholder='Create a new todo...']      ${TASK 1}
${TASK 1}               open website
${ADD TASK BUTTON}      xpath=//button[@class='todo-submit']
${FINISHING TASK 1}     xpath=//label[normalize-space()='open website']//span[@class='custom-checkbox']
${DELETING TASK 1}      xpath=//body//div[@id='root']//div//div[1]//button[1]//*[name()='svg']