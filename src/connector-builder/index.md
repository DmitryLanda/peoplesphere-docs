<!-- include(data_structures.md) -->

# Group Connector Builder
Connector builder consists from few parts. The only available now is `export`.

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

## Exports [/connector-builder/exports]

<!-- include(list.md) -->
<!-- include(show.md) -->
<!-- include(run-export.md) -->
<!-- include(download-export-result.md) -->
<!-- include(export-logs.md) -->
<!-- include(create.md) -->
<!-- include(update.md) -->
