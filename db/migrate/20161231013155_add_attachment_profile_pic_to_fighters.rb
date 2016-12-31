class AddAttachmentProfilePicToFighters < ActiveRecord::Migration
  def self.up
    change_table :fighters do |t|
      t.attachment :profile_pic
    end
  end

  def self.down
    remove_attachment :fighters, :profile_pic
  end
end
