# Create Cookbooks directory
mkdir cookbooks
cd cookbooks

# Generate Cookbook
chef generate cookbook test-cookbook
cd test-cookbook

# Generate Recipe
chef generate recipe test-recipe

# Edit Recipe
nano recipes/test-recipe.rb

# Verify Code Syntax
chef exec ruby -c recipes/test-recipe.rb

# Run Recipe
chef-client -zr "recipe[test-cookbook::test-recipe]"

###################### Create Second Recipe in test-cookbook ###########################

cd test-cookbook
chef generate recipe test-recipe2

# Edit Recipe
nano recipes/test-recipe2.rb

# Check Syntax and Run Recipe
chef exec ruby -c recipes/test-recipe2.rb
chef-client -zr "recipe[test-cookbook::test-recipe2]"

###################### Create Second Cookbook ###########################
# Go to cookbooks directory where all cookbooks shows
chef generate cookbook new-cookbook

# Generate Recipe, Edit Recipe and Syntax check then execute
cd new-cookbook
chef generate recipe new-recipe
nano recipes/webserver.rb
chef exec ruby -c recipes/webserver.rb
chef-client -zr "recipe[new-cookbook::webserver]"

