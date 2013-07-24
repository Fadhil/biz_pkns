module ReportsHelper
  def get_title(report_type)
    case report_type
    when 'user_by_activity'
      'Bilangan Peserta Yang Mengikuti Aktiviti Dalam Program'
    end
  end

end
