class AddAttachmentImageToContributions < ActiveRecord::Migration[5.1]
  def self.up
    change_table :contributions do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :contributions, :image
  end
end
