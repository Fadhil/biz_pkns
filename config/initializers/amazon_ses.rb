ActionMailer::Base.add_delivery_method :ses, AWS::SES::Base,
  access_key_id: 'AKIAJNHIISHPT6R4MCKA',#ENV['AMAZON_ACCESS_KEY'],
  secret_access_key: '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'#ENV['AMAZON_SECRET_KEY']
