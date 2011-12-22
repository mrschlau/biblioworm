class CreateBooks < ActiveRecord::Migration
  def self.up
    create_table :books do |t|
      t.integer :contributing_worm_id
      t.string :genre
      t.string :title
      t.string :author
      t.string :synopsis

      t.timestamps
    end
  end

  def self.down
    drop_table :books
  end
end
