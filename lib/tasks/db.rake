namespace :db do
  desc "Drop, create, migrate then seed the database"
  task :refresh => [
    'environment', 
    'db:drop', 
    'db:create', 
    'db:migrate', 
    'db:seed', 
  ]
end
