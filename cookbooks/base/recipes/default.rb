#
# Cookbook Name:: base
# Recipe:: default
#

recipes = node['_recipes']

recipes.each do |r|
  include_recipe "base::#{r}"
end
