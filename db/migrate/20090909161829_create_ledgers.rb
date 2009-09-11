class CreateLedgers < ActiveRecord::Migration
  def self.up
    create_table :ledgers do |t|
      t.date :date
      t.decimal :value, :precision => 14, :scale => 2
      t.string :description
      t.timestamps
    end
  end

  def self.down
    drop_table :ledgers
  end
end
