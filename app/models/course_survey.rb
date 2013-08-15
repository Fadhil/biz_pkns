class CourseSurvey < Survey
  belongs_to :course_report

  require 'csv'

  def import_survey_data(data)
    @parsed_file=CSV.parse(data)
    @parsed_file.each  do |row|
      if row[0] == 'Jumlah Penilaian Peserta'
        no_columns = row.size
        row.each_with_index do |column, index|
          self.questions << Question.create(title: column) unless index == 0
        end
      elsif row[0] != nil
        row.each_with_index do |column, index|

          # We're ignoring the first column, so question[0] is actually question[index - 1] (starting from index 1)
          unless index == 0
            question = self.questions[index - 1]
            question.responses << Response.create(answer: column) 
            if question.question_type == nil
              if column == 'ya'
                question.question_type = 'yes_no'
              else
                question.question_type = 'scale'
              end
              question.save
            end
          end
        end
      end
    end
  end

 
end
