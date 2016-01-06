class AddAttachmentRightToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.attachment :right
    end
  end

  def self.down
    remove_attachment :posts, :right
  end
end
