# POWER QUERY BEST PRACTICES

### Get organized before connecting and loading the data
- define clear and intuitive table/query names from the start, and establish an organized file/folder structure if you are working with local flat files to avoid changes to file names or paths

### Disable report refresh for any static data sources
- There is no need to constantly refresh data sources that do not change, like lookups or static data tables

### When working with large tables, only load the data you need
- Do not include hourly data when you only need daily, or transaction-level data when only need a product-level summary (extra data will only slow your report down!)


