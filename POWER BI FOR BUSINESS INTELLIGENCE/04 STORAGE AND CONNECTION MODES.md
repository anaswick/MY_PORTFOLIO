# STORAGE AND CONNECTION MODES

Power BI Desktop supports several types of storage and connection modes :
- **Import** : tables are stored in-memory within Power BI and queries are fulfilled by cached data (*default*)
- **DirectQuery** : tables are connected directly to the source and queries are executed on-demand at the data source
- **Composite Model (Dual)** : tables come from a mix of import and DirectQuery modes, or integrate multiple DirectQuery tables
- **Live Connection** : connect to pre-published Power BI datasets in Power BI Service or Azure Analysis Services.

## When is the right time to use each kind of storage and connection modes ?

### Import
1. Datasets is less than 1 GB (after compression) & fast performance
2. Source data does not change frequently
3. No restriction on Power Query, data modeling, and DAX functions

### DirectQuery
1. Dataset is too large to be stored in memory
2. Source data change frequently and reports must reflect changes
3. Company policy states that data can only be accessed from the original source

### Composite Model
1. Boost performance by setting appropriate storage for each table
2. Combine a DirectQuery model with additional imported data
3. Create a single model from two or more DirectQuery models

### Live Connection
1. Create one dataset that serves as a central source of truth
2. Analyst teams can create different reports from the same source
3. Multi-developer teams where one user builds the model and another works on visualization

