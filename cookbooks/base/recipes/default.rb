#
# Cookbook Name:: base
# Recipe:: default
#

recipes = node['recipes']

recipes.each do |recipe|
  include_recipe "base::#{recipe}"
end
