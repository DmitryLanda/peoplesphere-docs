<!-- include(export/data_structures.md) -->
<!-- include(import/data_structures.md) -->

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

<!-- include(export/list.md) -->
<!-- include(export/show.md) -->
<!-- include(export/run-export.md) -->
<!-- include(export/download-export-result.md) -->
<!-- include(export/export-logs.md) -->
<!-- include(export/create.md) -->
<!-- include(export/update.md) -->
<!-- include(export/delete.md) -->
 
## Imports [/connector-builder/imports]

<!-- include(import/list.md) -->
<!-- include(import/show.md) -->
<!-- include(import/create.md) -->
<!-- include(import/update.md) -->
<!-- include(import/delete.md) -->
<!-- include(import/generate.md) -->
<!-- include(import/validate.md) -->
<!-- include(import/run.md) -->
