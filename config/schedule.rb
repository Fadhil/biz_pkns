set :output, "log/cron.log"

every 1.months, :at=> '1am' do
  #rake 'lib/tasks/cleanup_user.rake'
  command 'User.where("confirmed = 0 AND created_at <= ?", 6.months.ago).delete'
end