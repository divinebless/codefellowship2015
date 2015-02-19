class AddAttachmentAvatorToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.attachment :avator
    end
  end

  def self.down
    remove_attachment :articles, :avator
  end
end
