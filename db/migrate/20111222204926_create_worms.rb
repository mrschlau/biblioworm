class CreateWorms < ActiveRecord::Migration
  def self.up
    create_table :worms do |t|
      t.string :name
      t.string :email
      t.string :favorite_author

      t.timestamps
    end
  end

  def self.down
    drop_table :worms
  end
end
