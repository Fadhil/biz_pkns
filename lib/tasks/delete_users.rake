task :delete_users => :environment do
  begin
    f = File.open("#{Rails.root}/invalid_email.csv",'r')
    if f.nil? 
      raise "You don't have a invalid_email.csv file"
    end
  rescue Exception => e
    puts "Something messed up"
    puts e.message
    puts e.backtrace.inspect
    Rails.logger.info e.message
    Rails.logger.info e.backtrace.inspect
  else
    puts "Found file, attempting to delete users\n"
    success_count = 0;
    failure_count = 0;
    f.readlines[0].split.each do |a|
      u = User.where(email: a.strip).first
      unless u.nil? 
        puts "Found user #{u.full_name}. Deleting\n"
        if u.delete
          puts "Successfully deleted user\n"
          success_count += 1
        else
          puts "The user #{u.full_name} with email #{u.email} could not be deleted. You might wanna do something about this"
          Rails.logger.info "The user #{u.full_name} with email #{u.email} could not be deleted. You might wanna do something about this"
        end
      end

    end
    
    if success_count > 0
      puts "Successfully deleted #{success_count} users\n"
    end
    if failure_count > 0
      puts "Failed to delete #{failure_count} users\nCheck the logs"
    end

    if success_count == 0 && failure_count == 0
      puts "No users were found. Nothing happened\n"
    end
  end
end
