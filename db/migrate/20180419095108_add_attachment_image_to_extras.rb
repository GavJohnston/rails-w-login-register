class AddAttachmentImageToExtras < ActiveRecord::Migration[5.1]
  def self.up
    change_table :extras do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :extras, :image
  end
end
