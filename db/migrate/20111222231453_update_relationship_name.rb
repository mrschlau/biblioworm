class UpdateRelationshipName < ActiveRecord::Migration
  def self.up
    rename_column :books, :contributing_worm_id, :worm_id
    end

  def self.down
    rename_column :books, :worm_id, :contributing_worm_id
    end
end
