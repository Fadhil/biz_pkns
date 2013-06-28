ActionMailer::Base.add_delivery_method :ses, AWS::SES::Base,
  access_key_id: ENV['AMAZON_ACCESS_KEY'], #'AKIAJNHIISHPT6R4MCKA',#
  secret_access_key: ENV['AMAZON_SECRET_KEY'] #'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'#
