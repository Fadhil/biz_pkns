desc "Generate Role"
task :roles => :environment do
  Role.create(title:'admin', name:'admin')
  Role.create(title:'pkns', name:'pkns')
end

