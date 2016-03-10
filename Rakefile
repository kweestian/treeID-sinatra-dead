require 'rake'
require 'sinatra/activerecord/rake'
require ::File.expand_path('../config/environment', __FILE__)
require 'sinatra/asset_pipeline/task'
require './app/'

Rake::Task["db:create"].clear
Rake::Task["db:drop"].clear


# Sets Asset pipeline task
Sinatra::AssetPipeline::Task.define! App

# NOTE: Assumes SQLite3 DB
desc "create the database"
task "db:create" do
  touch 'db/db.sqlite3'
end

desc "drop the database"
task "db:drop" do
  rm_f 'db/db.sqlite3'
end

desc 'Retrieves the current schema version number'
task "db:version" do
  puts "Current version: #{ActiveRecord::Migrator.current_version}"
end
