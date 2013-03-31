# @user = User.all.where("updated_at >= ?", Time.6.month.ago)
# @user.delete

# # @user = User.all.where(:created_at > 'Time.6.month.ago').delete

# User.where("created_at >= '6.months.ago'")

#User.where("created_at <= ?", 6.months.ago).last.delete