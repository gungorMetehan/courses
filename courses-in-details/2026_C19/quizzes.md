**QUIZ 1: Introducing Power BI Desktop**

**Question 1:**

Which of the following can be found in both "Power Excel" and Power BI?
  + a) Query editing tools
  + b) DAX measures
  + c) Data modeling tools
  + d) All of these can be found in both "Power Excel" and Power BI *

**Question 2:**

Which Power BI option would you disable if you wanted to build all table relationships from scratch?
  + a) Automodel
  + b) Autodetect new relationships after data is loaded *
  + c) Parallel table loading
  + d) Auto Date/Time

**Question 3:**

Suppose your system is configured to recognize dates in DD-MM-YYYY format, but you've loaded a file containing dates in English (United States) format (MM-DD-YYYY). How could you ensure that Power BI reads those date values properly?
  + a) Update your Regional Settings to English (United States) *
  + b) Update your Regional Settings to System Default
  + c) Update your Regional Settings to Autodetect Date/Time
  + d) Leave default settings in place (Power BI will automatically handle this)

**Question 4:**

What are the three core views in the Power BI desktop front-end?
  + a) Report, Data, Queries
  + b) Report, Queries, Model
  + c) Report, Data, Model *
  + d) Queries, Data, Model

**Question 5:**

In the typical Power BI workflow, which of the following takes place after data is loaded but before reports are built?
  + a) Table relationships are formed *
  + b) User-level permissions are established
  + c) Parameters and roles are defined
  + d) Lunch break

**Question 6:**

Which of the following are you NOT able to do within Power BI Desktop?
  + a) Connect to data sources with >1,000,000 rows
  + b) Create relational data models
  + c) Build interactive reports and dashboards
  + d) Collaborate with other users in real-time *


**QUIZ 2: Connecting & Shaping Data**

**Question 1:**

Which three tabs in the Query Editor contain data shaping and transformation tools?
  + a) Home, Transform, Add Column *
  + b) Transform, Load, Add Column
  + c) Load, Transform, Analyze
  + d) Transform, Design, Analyze

**Question 2:**

When you apply a tool from the "Transform" menu of the Power Query editor, which of the following is true?
  + a) Original column values are preserved
  + b) Original column values are replaced *
  + c) Original values are preserved, and a new column is created with transformed values
  + d) Power BI will give you the option to preserve or replace original values

**Question 3:**

Which of the following date tools is only available in the "Transform" tab of the Query Editor?
  + a) Age
  + b) Month
  + c) Day
  + d) Latest *

**Question 4:**

Which type of column would you add to create a series of values to uniquely identify each row in a table?
  + a) Index *
  + b) Conditional
  + c) Sequential
  + d) Count

**Question 5:**

Which query editing tool would you use to aggregate or roll up your data at a higher level? (i.e. Daily to Monthly)
  + a) Group By *
  + b) Merge
  + c) Append
  + d) Pivot

**Question 6:**

Which term best describes the process of transforming a table from a horizontal orientation to a vertical orientation by turning distinct column values into rows?
  + a) Transposing
  + b) Pivoting
  + c) Unpivoting *
  + d) Hinging

**Question 7:**

Which of the following operations is used to add new rows to an existing table?
  + a) Append *
  + b) Merge
  + c) Left Join
  + d) Outer Join

**Question 8:**

After connecting to a local file from Power BI Desktop, what would happen if you were to later move that source file to a new folder or location?
  + a) Power BI would automatically reconfigure the query on refresh
  + b) You would be prompted to update the file location the next time you open Power BI Desktop
  + c) Power BI would not recognize the new file path, and the query would break *
  + d) Power BI would automatically generate a new query pointing to the updated file path

**Question 9:**

When you click "Refresh" from the main Power BI home menu, which of the following takes place by default?
  + a) All queries will refresh *
  + b) Only the query associated with the selected table or visual will refresh
  + c) Only the latest query will refresh
  + d) Only queries where source data has changed will be refreshed

**Question 10:**

Which of the following information is preserved when you import an entire data model from Excel to Power BI Desktop?
  + a) Table relationships
  + b) DAX measures
  + c) Query editing procedures
  + d) All of this information is preserved *


**QUIZ 3: Creating a Data Model**

**Question 1:**

Why might you normalize a data model?
  + a) To make it more efficient
  + b) To minimize the risk of error during data modifications
  + c) To simplify queries and analysis
  + d) All of the above *

**Question 2:**

Which type of table is most likely to contain foreign keys?
  + a) Lookup Tables
  + b) Fact Tables *
  + c) Dimension Tables
  + d) All Tables

**Question 3:**

Which type of database schema could be described as a central fact table surrounded by a single layer of individual dimension tables?
  + a) Star *
  + b) Snowflake
  + c) Snowball
  + d) Spiral

**Question 4:**

Which of the following is NOT true about table relationships in Power BI Desktop?
  + a) You can create relationships from a single Data/Fact table to multiple Lookup/Dim tables
  + b) You can create multiple active relationships from one table to the same primary key *
  + c) You can create both active and inactive relationships between two tables
  + d) You can edit or modify existing table relationships

**Question 5:**

Which of the following would you most likely encounter if you tried to connect two fact tables directly to each other?
  + a) Repeating values
  + b) Many-to-Many relationships *
  + c) Ambiguous relationships
  + d) Null values

**Question 6:**

Which type of cardinality describes the "ideal" type of table relationship in Power BI Desktop?
  + a) One-to-One
  + b) One-to-Many *
  + c) Many-to-Many
  + d) All-to-One

**Question 7:**

Generally speaking, what's the best way to "connect" two data or fact tables within the same model?
  + a) Deduplicate the foreign keys in one table to create a one-to-many relationship
  + b) Deduplicate the foreign keys in both tables
  + c) Match the row-level granularity in order to define a one-to-one relationship
  + d) Relate them through shared lookup tables *

**Question 8:**

Why might it be helpful to arrange lookup tables above data tables in the Relationships/Model view?
  + a) To remind you that filters flow "downstream" *
  + b) Because they generally contain the most fields
  + c) Because it makes it easier to create new relationships
  + d) Because lookup tables contain the fewest number of fields

**Question 9:**

Which of the following would be the most likely cause of an ambiguous relationship error in a Power BI data model?
  + a) Multiple 1-way filters
  + b) Inactive table relationships
  + c) Multiple data tables
  + d) Multiple two-way filters *

**Question 10:**

What can you do to prevent users from filtering with invalid fields from a data model?
  + a) Politely (but firmly) ask them to cut it out
  + b) Threaten them with public humiliation
  + c) Tell them that "there will be consequences" if they do it again, then slowly back out of the room without breaking eye contact
  + d) Activate the "Hide in Report View" option *

**Question 11:**

Which of the following could represent a valid hierarchy?
  + a) Country > City > State
  + b) Peach > Pear > Plum
  + c) Zip Code > State > Department
  + d) Product Category > Product Brand > Product *


**QUIZ 4: Calculated Fields with DAX**

**Question 1:**

Which of the following formulas would make the most sense as a calculated column?
  + a) Products[RetailPrice] * 0.75 *
  + b) AVERAGE(Products[RetailPrice])
  + c) SUM(Sales[quantity])
  + d) DISTINCTCOUNT(Customers[CustomerName])

**Question 2:**

Which of the following is true about calculated columns and measures?
  + a) Calculated columns understand row context
  + b) Measures understand filter context
  + c) Calculated column values are stored in tables
  + d) All of the above *

**Question 3:**

Which of the following is true about the Grand Total cell within a matrix visual?
  + a) It inherits the filter context of each row in the table
  + b) It retrieves the values from each row in the matrix and sums them up
  + c) It evaluates using its own filter context *
  + d) All of the above

**Question 4:**

Why is it helpful to use fully-qualified column references?
  + a) They make it clear which table the column lives in
  + b) They help users distinguish between column references and measure references
  + c) They can help make formulas easier to interpret
  + d) All of the above *

**Question 5:**

When would it be most appropriate to use the && operator?
  + a) To concatenate more than two text strings
  + b) To create an AND condition between more than two expressions *
  + c) To concatenate two text strings
  + d) To create an AND condition between two expressions

**Question 6:**

Suppose you wanted to count the number of products that fall under a specific subcategory. Which DAX function would be most appropriate?
  + a) COUNT
  + b) COUNTA
  + c) DISTINCTCOUNT *
  + d) UNIQUE

**Question 7:**

Which DAX function could you use to replace one word or character in a text string with another?
  + a) SWITCH
  + b) SEARCH
  + c) SUBSTITUTE *
  + d) FIND

**Question 8:**

Which DAX function could you use to access a field from another related table?
  + a) LOOKUP
  + b) CALCULATE
  + c) MERGE
  + d) RELATED *

**Question 9:**

What is the purpose of the following function: =CALCULATE([Profit],Territories[Country]="USA")
  + a) Calculates a measure named "Profit" across the entire Territories table
  + b) Sums the "Profit" column for rows where Country = "USA"
  + c) Creates a new column named "Profit" which is calculated for all rows where Country = "USA"
  + d) Evaluates the "Profit" measure for rows where Country = "USA" in the Territories table *

**Question 10:**

Which of the following could be used to modify filter context?
  + a) Selecting a data point in a visual
  + b) Adjusting a report slicer
  + c) Using CALCULATE within a measure
  + d) All of the above *

**Question 11:**

In which of the following use cases would the ALL function be most helpful?
  + a) Calculating the ratio of low-price to high-price products
  + b) Calculating the distinct count of customers in the entire Customer table
  + c) Calculating category sales as a percentage of the total *
  + d) Calculating a discount rate based on the full retail price compared to the sale price

**Question 12:**

Which of the following returns a table, rather than a single scalar value?
  + a) COUNTA
  + b) FILTER *
  + c) SUM
  + d) All of the above

**Question 13:**

Which time intelligence function would you use to calculate the running total of a measure?
  + a) DATESYTD
  + b) DATEADD
  + c) DATESINPERIOD *
  + d) DATEDIFF


**QUIZ 5: Visualizing Data with Reports**

**Question 1:**

Which type of filter is NOT configured within the Filters pane of the report view?
  + a) Visual Level
  + b) Page Level
  + c) Report Level
  + d) Drillthrough *

**Question 2:**

Which type of filter would you use if you wanted it to apply to ALL visuals within a Power BI report?
  + a) Visual Level
  + b) Page Level
  + c) Report Level *
  + d) Drillthrough

**Question 3:**

Which of the following is specifically designed to navigate users to a pre-filtered page of the report?
  + a) Bookmarks
  + b) Drillthrough filters *
  + c) Hyperlinks
  + d) Highlights

**Question 4:**

Which of the following would you use to prevent one visual from filtering based on selections within another?
  + a) Interactions *
  + b) Cross-filters
  + c) Drillthroughs
  + d) Visual-level filters

**Question 5:**

Which of the following allows users to change the granularity by selecting data points within a visual?
  + a) Drill down
  + b) Drillthrough
  + c) Drill mode *
  + d) All of the above

**Question 6:**

Which of the following options allows you to link a button or shape to a report bookmark?
  + a) Outline
  + b) Icon
  + c) Action *
  + d) Link

**Question 7:**

In which case would you most likely use parameters?
  + a) Forecasting sales volume
  + b) Calculating product sales as % of total
  + c) Calculating an output based on variable inputs *
  + d) Modeling non-linear trend lines

**Question 8:**

Suppose you have a report containing sensitive information, and would like to configure which data certain users or groups of users can access. Which of the following would be most appropriate?
  + a) Apply page-level filters to create custom views
  + b) Define user roles in Power BI Desktop, and apply them to users in Power BI Service *
  + c) Add password protection to the Power BI report
  + d) Configure custom authentication credentials

**Question 9:**

Which of the following is NOT possible in the Phone layout view?
  + a) Applying themes
  + b) Customizing which visuals to include or exclude
  + c) Creating new visuals *
  + d) All of these are possible
