# CONNECTING AND SHAPING DATA

## TOPICS

- Intro to Power Query
- The Query Editor
- Data QA & Profiling
- Calendar Tools
- Data Connectors
- Connection Models
- Table Transformations
- Combining Queries

## GOALS FOR THIS SECTION

1. Explore Power BI's query editor to understand the role that Power Query plays in the larger BI workflow
2. Introduce different types of connectors and connectivity models avaiable for getting data into Power BI
3. Review tools for checking data quality and key profiling metrics like column distribution, empty values, errors, and outliers
4. Transform tables using text, numerical and date/time tools, pivot and group records, and create new conditional columns
5. Practive combinging, modifying, and refreshing queries.


## POWER BI FRONT-END VS BACK-END

Back-end including :
1. Connect & extract data using pre-build connectors
2. Profile & QA the data to explore, clean, and prepare it for modeling and analysis
3. Transform & shape tables to add new features, modify values, group records, or sort and filter columns
4. Merge or append queries to join and combine them prior to the front-end
5. Perform advanced transformations using custom M code

Front-end including :
1. Build data models by creating table relationships between primary and foreign keys
2. Add calculated measures & columns using Data Analysis Expressions (DAX)
3. Design reports to visualize the data and create interactive, dynamic dashboards.
4. Publish & share your Power BI workbooks using Power BI Service (cloud application)

## TYPES OF DATA CONNECTORS

Power BI can connect to virtually any type of source data, including (but not limited to):
- **Flat files & folders** (csv, text, xlsx, etc)
- **Databases** (SQL, Access, Oracle, IBM, etc)
- **Azure** (Azure SQL, Analysis Services, Databricks, etc)
- **Online Services** (SharePoint, GitHub, Dynamics 365, Google Analytics, Salesforce, Power BI Service, etc)
- **Other** (Web feeds, R scripts, Spark, Hadoop, etc)

## POWER QUERY EDITOR

Click on Transform Data

![power query editor](https://github.com/anaswick/my_portfolio/assets/24541471/539b3de1-d5eb-4fed-9e59-1b07232bc551)

**Query Editing Tools**

![power query editor - query editing tools](https://github.com/anaswick/my_portfolio/assets/24541471/1e0f1784-a71d-4497-b4ab-c19003c5cce1)

**Formula Bar**

![power query editor - fomula bar m code](https://github.com/anaswick/my_portfolio/assets/24541471/e4b36b53-8128-4883-876b-aedf783901a0)

**Queries Pane**

![power query editor - queries pane](https://github.com/anaswick/my_portfolio/assets/24541471/50403cbc-0552-4ded-87c2-4837d62f32f0)

**Table names & properties**

![power query editor - table names and properties](https://github.com/anaswick/my_portfolio/assets/24541471/821fc6d7-6578-4432-89e1-2b707780cc99)

**Applied steps**

![power query editor - applied steps](https://github.com/anaswick/my_portfolio/assets/24541471/078f4227-cc7a-4034-87e5-42d3ace48f62)

**Table preview**

![power query editor - table preview](https://github.com/anaswick/my_portfolio/assets/24541471/b701b439-f6a3-41ee-8b42-b8f5ff3f5f5a)

**Query editing tools - Home**
The home tabs includes general settings and common table transformation tools.

![1 query editing tools - home](https://github.com/anaswick/my_portfolio/assets/24541471/5e498c73-5d5e-489f-9300-3e63997c483a)

**Query editing tools - Transform**
The transform tab include tools to modify existing columns (splitting/grouping, transposing, extracting text, etc)

![2 query editing tools - transform](https://github.com/anaswick/my_portfolio/assets/24541471/d3d9d50f-43fd-4aaa-8b1a-c681464bd9bc)

**Query editing tools - Add Column**
The add column tools create new columns (based on conditional rules, text operations, calculations, dates, etc)

![3 query editing tools - add columns](https://github.com/anaswick/my_portfolio/assets/24541471/5d38a0ca-e4a6-44ea-8cd8-5ec5a01ae298)

# BASIC STEPS AFTER LOADING DATASET

1. Rename the data source / table name
2. Make sure each features is in the right data type

