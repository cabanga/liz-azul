class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  #attr_accessor :video_file
#
  #before_create :upload_to_vimeo
#
  #def upload_to_vimeo
  #  vimeo_client = VimeoMe2::User.new("#{Rails.application.credentials.vimeo_secret}")
  #  video = vimeo_client.upload_video(self.video_file)
  #  self.data_url = video['uri']
  #  self.save
  #  return true
  #rescue VimeoMe2::RequestFailed => e
  #  errors.add(:video_file, e.message)
  #  return false
  #end



end
