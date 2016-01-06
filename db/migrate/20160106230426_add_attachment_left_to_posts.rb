class AddAttachmentLeftToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.attachment :left
    end
  end

  def self.down
    remove_attachment :posts, :left
  end
end
