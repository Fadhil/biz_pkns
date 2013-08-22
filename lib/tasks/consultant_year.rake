task :consultant_years => :environment do
  Consultant.all.each do |consultant|
    puts "Registering #{consultant.email}\n"
    if consultant.register_date.nil?
      consultant.register_date = ['2013','2011','2010','2012'][rand(0..3)]
    end
    if consultant.save
      #consultant.reload
      puts "set register year to: #{consultant.register_date}"
    else
      puts "something went wrong"
    end
    puts "completed registering all consultants"
  end
end
