class RedactorRails::Picture < RedactorRails::Asset
  mount_uploader :data, RedactorRailsPictureUploader, :mount_on => :data_file_name

  # def url_content
  #   url(:content)# + '?AWSAccessKeyId=ASIAIE5DMA4YI2EWA5YQ&Expires=1396913353&Signature=WncjWXzratOLbG86EwzWi%2ByB538%3D&x-amz-security-token=AQoDYXdzEJj//////////wEakALCmuIVebn/c0Lvtk1N6uh1yi895z6B%2BVOBambev2MAm/T1Idswr2NYxvAiU7PH7R1Og7mgvyCl/fwl%2BvWNVgHtiD37stUwTHb%2BG9%2B9wg6Wa8A40Nxi7Rl7nKPPN4n%2BbUfAg%2BW/wxk0UiMNoipNL1GQ1kHpSdrJ15wPyC9bncgobZvHuu72C1JgXeS2SXg9Pse%2BwteK56%2BQrdA9kRuwqzXypr7XyKznt7sF7EXVfrJo/J9z8TIZfsObVUH06NAjOuqTlWVI1CnN7M%2BmFlLXhTHPc9QtvU9hfOKhi7x9lCp6yLey5OD5%2By6aK4cMCwAPvQCCk3CvNotrB9XgAz4SnQT7uxSPk/le3cA5mO7jJLaYqSCdy4yaBQ%3D%3D'
  # end
end
