# Chef Guide
- **Cookbooks:** Create a directory named cookbooks. In this directory we will generate cookbook.
- **Cookbook:** Whenever you want to generate new cookbook then stay inside cookbooks directory, Don't create cookbook in generated cookbooks. For example if we generate cookbook named `test-cookbook` and we will inside `test-cookbook` then when we generate `new-cookbook` this will generate inside `test-cookbook`. So, Stay inside main `cookbooks` directory.
- **Recipe:** We can generate multiple recipes in single cookbook. Name should be unique.
- **Run Recipe:** This syntax will be used for run recipe `chef-client -zr "recipe[cookbook_name::recipe_name]"` example `chef-client -zr "recipe[test-cookbook::test-recipe]"`
