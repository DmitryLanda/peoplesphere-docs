:[](export/data_structures.md)
:[](import/data_structures.md)

# Group Connector Builder
Connector builder consists from few parts.

**Export**
`Export` is a way to extract desired data from system to the file (CSV or XLS) 

**Management Permissions:** 
 - `connector_builder_export.manage.*` - Allows to create, edit and remove export mappings for all Pso Types 
 
**Pso Type specific permissions:** 
- `connector_builder_export.manage.<trigram>` - Allows to create, edit and remove export mappings for specific Pso Type only

**Common flow**
Once the export map created - it may be used to do an export. 
Preparing and formatting data may take some time, so it will be done in asynchronous way.
To initiate the process we need to `run export` (see related section). `status` for affected export map will be changed to `processing` 
Once the process completed `status` for affected export map will be changed to `done` or `failed` (it depends whether result successful or not)
More details about export process can be got by using `Export Logs` endpoint

**Import** 
`Import` is a way to load desired data into system from file (XLS)

**Pso Type specific permissions:** 
- `connector_builder_imports.manage.<trigram>`


## Exports [/connector-builder/exports]

:[](export/list.md)
:[](export/show.md)
:[](export/run-export.md)
:[](export/download-export-result.md)
:[](export/export-logs.md)
:[](export/create.md)
:[](export/update.md)
:[](export/delete.md)
 
## Imports [/connector-builder/imports]

:[](import/list.md)
:[](import/show.md)
:[](import/create.md)
:[](import/update.md)
:[](import/delete.md)
:[](import/generate.md)
:[](import/validate.md)
:[](import/run.md)
:[](import/download.md)
