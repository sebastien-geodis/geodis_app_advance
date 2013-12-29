class AddAttachmentPhotoToVips < ActiveRecord::Migration
  def self.up
    add_column :vips, :photo_file_name, :string
    add_column :vips, :photo_content_type, :string
    add_column :vips, :photo_file_size, :integer
    add_column :vips, :photo_update_at, :datetime
  end

  def self.down
    remove_column :vips, :photo_file_name
    remove_column :vips, :photo_content_type
    remove_column :vips, :photo_file_size
    remove_column :vips, :photo_update_at
  end
end
