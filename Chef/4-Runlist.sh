## Run Multiple recipe from cookbooks
chef-client -zr "recipe[test-cookbook1::test-recipe1],recipe[new-cookbook1::new-recipe1]"

# Note: Using this method we can only run one recipe from one cookbook. We can't run multiple recipe from single cookbook.

## Run Multiple recipes from One Cookbook - Include Recipe
nano test-cookbook/recipes/default.rb

include_recipe "test-cookbook1::test-recipe1"
include_recipe "test-cookbook1::recipe2"

## Now run default.rb recipe, We have include 2 recipe in default.rb recipe. So, when we run default.rb then all included recipes will be run

# Example Commands:-

# Single Cookbook
chef-client -zr "recipe[test-cookbook1::default]"

# Multiple Cookbook - Make sure to include recipes names in default.rb recipe
chef-client -zr "recipe[cookbook_name::default],recipe[cookbook_name::default]"

or

chef-client -zr "recipe[cookbook_name],recipe[cookbook_name]"

## Above command will run default.rb recipe if we do not mention recipe name
