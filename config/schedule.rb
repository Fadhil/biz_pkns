set :output, "#{path}/log/cron.log"

every 2.minutes do
  #rake 'lib/tasks/cleanup_user.rake'
  #runner "User.where('confirmed = 0 AND created_at <= ?', 6.months.ago).delete"
  #runner 'User.where("confirmed = 0 AND created_at <= ?", 6.months.ago).delete'
  runner "User.remove_inactive_users", environment: :development
end