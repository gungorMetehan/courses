**MODULE 2: Quiz**

**Question 1**

Fill in the blank. Your original CSV data set contains 975 rows and __ columns. 
  + 35
  + 48
  + 38 *
  + 23

**Question 2**

Which of the following is a good practice you learned when configuring your resource and selecting a name for the Service name field?
  + a) Replace “Watson Studio” with a name that’s relevant to your project.
  + b) Keep “Watson Studio” and remove “Data Refinery Tool”.
  + c) Keep “Watson Studio” because that’s the service and then add a name that’s relevant to your project at the end. *
  + d) Replace “Watson Studio” with “Data Refinery Tool”.

**Question 3**

When starting out, you visit the catalog of IBM products and services for AI / Machine Learning. Which block do you select for the product that you are using?
  + a) Data Refinery Tool
  + b) IBM Watson Studio *
  + c) New Project
  + d) Configure Resource


**MODULE 3: Quiz**

**Question 1**

Looking at the Profile tab to view the statistics the tool provides for the INCIDENT_CAUSE field, what can you conclude? Zoom in.
Select the two that apply.
![CRV_Simulation_UnderstandandCleanData_ScreenCapture_Quiz](https://github.com/user-attachments/assets/c690e6ef-7197-41bc-a4b1-9431846abb70)

  + There are 975 unique occurrences to tell you that’s the total number of rows in the CSV file.
  + There is a value for Standard Deviation to tell you how dispersed the data is in relation to the mean. [X]
  + The INCIDENT_CAUSE field could contain interesting data for predictions on your project, so you’ll keep this data. [X]
  + The INCIDENT_CAUSE field doesn’t contain interesting data for predictions on your project, so you’ll remove this data.

**Question 2**

Which of the following good practices did you follow when cleaning the data set?
Select the two that apply.
  + Removed identification-type data because it’s not going to be predictable for your project. [X]
  + Kept columns that have date and time information because they could help reveal interesting information for predictions. [X]
  + Configured the data types for all cleaned columns to be Integers so the tool can perform proper calculations.
  + Kept columns that have personal information because they could help reveal interesting information for predictions.

**Question 3**

What are the three tabs at the top that you work with to perform operations in the data refinery tool?
  + a) Prepare, Data, and Visualizations
  + b) Collect, Refine, and Visualizations
  + c) Clean, Filter, and Visualizations
  + d) Data, Profile, and Visualizations *

**Question 4**

Fill in the blank. Your data set is from auto insurance claims that your company approved. The goal of your project is to predict fraudulent claims. You must therefore examine the _______________ of the data in each column. It’s up to you to decide this when cleaning the data. 
  + a) probability
  + b) reliability
  + c) frequency
  + d) predictability *

**Question 5**

You learned to be aware of personal information (PI) on projects and determine whether it’s permissible to use. Which of the following columns in your data set represent personal information that you can remove and don't need for your project?
Select the three that apply.  
  + BIRTH_DATE [X]
  + CLAIM_AMOUNT
  + LAST_NAME [X]
  + DRIVERS_LICENSE_ID [X]


**MODULE 4: Quiz**

**Question 1**

What’s the purpose of refining your data set for this project?
  + a) To transform the data from Boolean to Integer data to perform calculations
  + b) To investigate the final visualization that shows claims over $10K might be fraudulent and might help predict fraud
  + c) To investigate the hypothesis that claims for repairs under $10K might be fraudulent and might help predict fraud
  + d) To investigate the hypothesis that claims for repairs over $10K might be fraudulent and might help predict fraud *

**Question 2**

Fill in the blank. What did you type in the Value field when you added the new column to your data set? Here’s a screen capture to help you. Zoom in.

![CRV_Simulation_RefineData_ScreenCapture_Quiz](https://github.com/user-attachments/assets/5868a405-0966-49fe-87e4-ec937777f64c)

Acceptable responses: 10000 and 10,000

**Question 3**

What is the name of the new column you added to the data set?
  + a) CLAIM_AMOUNT
  + b) EXCESSIVE_CLAIM_AMOUNT *
  + c) FRAUD_AMOUNT
  + d) GREATER_THAN

**Question 4**

Which of the following statements is correct about when you converted the data type of the new column you added?
  + a) The values were Integers (0, 1) and you changed them to be Boolean (true, false).
  + b) The values were Boolean (true, false) and you changed them to be Integers (0, 1). *
  + c) The values were Boolean (true, false) and you changed them to be Strings (yes, no).
  + d) The values were Strings (yes, no) and you changed them to be Integers (0, 1).


**MODULE 5: Quiz**

**Question 1**

Complete the sentence. To create your scatter plot visualization, you selected _______________ for the x-axis to be the independent variable and _______________ for the y-axis to be the dependent variable.
  + a) LAST_NAME, FIRST_NAME
  + b) EXCESSIVE_CLAIM_AMOUNT, FLAG_FOR_FRAUD_INV
  + c) FLAG_FOR_FRAUD_INV, EXCESSIVE_CLAIM_AMOUNT
  + d) EXCESSIVE_CLAIM_AMOUNT, CLAIM_AMOUNT *

**Question 2**

Looking at this data point in your interactive visualization, what can you conclude? Zoom in.

![CRV_Simulation_VisualizeData_ScreenCapture_Quiz](https://github.com/user-attachments/assets/4696caf2-8d15-467a-a4db-59e8545f8857)

  + a) It represents a claim that’s over $10K that is fraudulent. *
  + b) It represents a claim that’s over $10K that is not fraudulent.
  + c) It represents a claim that’s over $10K that is not fraudulent.
  + d) It represents a claim that’s under $10K that is fraudulent.

**Question 3**

What does the data from the FLAG_FOR_FRAUD_INV column provide for your visualization?
  + a) It provides the “answers” that you concluded from refining the data by adding the new EXCESSIVE_CLAIM_AMOUNT column.
  + b) It provides the “answers” that were concluded by fraud investigators about how many claims are under $10K.
  + c) It provides the “answers” that were concluded by fraud investigators about which claims were actual fraud. *
  + d) It provides the “answers” that the business sponsor concluded for the hypothesis.

**Question 4**

What does the color mapping of the data from the FLAG_FOR_FRAUD_INV column mean?
Select the two that apply.
  + The pink dots represent claims that investigators concluded to not be fraud.
  + The blue dots represent claims that investigators concluded to not be fraud. [X]
  + The pink dots represent claims that investigators concluded to be fraud. [X]
  + The black dots represent claims that investigators concluded to not be fraud.

**Question 5**

If you were presenting findings to the business sponsor, what insights would you share about your data science project?
Select the two that apply.
  + There are claims the company paid that are over $10K that are not fraudulent as well as claims under $10K that are fraudulent. [X]
  + There are no indicators that fraud can be predicted by the claim amount the company paid.
  + There are a lot of fraudulent claims under $10K and claims for repairs under $10K can help predict fraud.
  + There are a lot of fraudulent claims over $10K and claims for repairs over $10K can help predict fraud. [X]
