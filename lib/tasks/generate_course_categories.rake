desc "Generate Course Categories"
task :generate_course_categories => :environment do
  CourseCategory.where(name: 'Coaching').first_or_create
  CourseCategory.where(name: 'Jaringan').first_or_create
  CourseCategory.where(name: 'Kem Usahawan').first_or_create
  CourseCategory.where(name: 'Klinik/Seminar').first_or_create
  CourseCategory.where(name: 'Konvokesyen').first_or_create
  CourseCategory.where(name: 'Mesyuarat').first_or_create
  CourseCategory.where(name: 'Kursus/Bengkel/Makmal').first_or_create
  CourseCategory.where(name: 'Kursus Guru Pembimbing').first_or_create
  CourseCategory.where(name: 'Kursus Pengurusan').first_or_create
  CourseCategory.where(name: 'Latihan').first_or_create
  CourseCategory.where(name: 'Lawatan').first_or_create
  CourseCategory.where(name: 'Pengambilan').first_or_create
  CourseCategory.where(name: 'Pro Konvokesyen').first_or_create
  CourseCategory.where(name: 'Promosi Jualan').first_or_create
  CourseCategory.where(name: 'Taklimat').first_or_create

  puts "Created Course Categories"
end