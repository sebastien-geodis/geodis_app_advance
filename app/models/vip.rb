class Vip < ActiveRecord::Base
  Paperclip.options[:command_path] = 'C:/Program Files/ImageMagick'
  belongs_to :user
  belongs_to :monitoring
  belongs_to :intervention
  has_attached_file :photo, :styles => { :small => "150x150>",  :very_small => "75x75>"},
                  :url  => "/assets/vips/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/vips/:id/:style/:basename.:extension"


validates_attachment_size :photo, :less_than => 5.megabytes
validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png', 'image/gif']
end
