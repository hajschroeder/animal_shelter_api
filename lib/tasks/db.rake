namespace :db do
  desc 'Drop, create, migrate, and seed the db'
  task reseed: ['db:drop', 'db:create', 'db:migrate', 'db:test:prepare', 'db:seed'] do
    puts 'Gardening complete'
  end
end
