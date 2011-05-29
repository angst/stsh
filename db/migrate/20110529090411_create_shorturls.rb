class CreateShorturls < ActiveRecord::Migration
  def self.up
    create_table :shorturls do |t|
      t.string :url
      t.timestamps
    end
    add_index :shorturls, :url
  end

  def self.down
    drop_table :shorturls
  end
end
