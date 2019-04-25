# Blueprint
[Blueprint](https://apiblueprint.org) API docs.

# Installation

Just run `docker-compose up`
Docker will be installed and docs generated.

# Build docs

Just run `docker-compose up` as on installation.
Generated HTML file will be putted into `./public` folder.

# Adding new docs

+ Create new folder in `./src/` for your doc group, f.e.: `./src/news`
+ Add core file in the folder, f.e.: `./src/news/news.md`
+ Add new include to `./src/index.md`, f.e.: `<!-- include(news/news.md) -->`
    + Please, note, final output will be generated with includes order
+ You must to add new resource groups for new doc, f.e.: `# Group News`
+ If you need to add some related prebuild MSON Schema:
    + Add new `_data_structures` file to your doc group folder, f.e.: `./src/news/_data_structures.md`
    + Add include to your doc file(prefer in the start of the doc file), f.e.: `<!-- include(_data_structures.md) -->`
    + You must to starts schemas file with `# Data Structures` head.
+ Run build

For more info and examples see:
+ [Blueprint examples](https://github.com/apiaryio/api-blueprint/tree/master/examples)
+ [Blueprint tutorials](https://apiblueprint.org/documentation/tutorial.html)
+ [Blueprint advanced tutorials](https://apiblueprint.org/documentation/advanced-tutorial.html)  
+ [Blueprint specification](https://apiblueprint.org/documentation/specification.html)  