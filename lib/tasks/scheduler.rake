desc 'task for heroku scheduler'

task :remove_inactive_users=> :environment do
    User.remove_inactive_users
end