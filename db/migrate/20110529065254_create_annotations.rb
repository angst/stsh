class CreateAnnotations < ActiveRecord::Migration
  def self.up
    create_table :annotations do |t|
      t.integer :x
      t.integer :y
      t.text :body
      t.integer :order_on_page

      t.timestamps
    end
  end

  def self.down
    drop_table :annotations
  end
end
