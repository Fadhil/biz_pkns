set :output, "log/cron.log"

every 1.minutes do
  #rake 'lib/tasks/cleanup_user.rake'
  command 'User.where("confirmed = 0 AND created_at <= ?", 6.months.ago).delete'
end