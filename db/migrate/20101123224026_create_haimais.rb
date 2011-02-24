class CreateHaimais < ActiveRecord::Migration
  def self.up
    create_table :haimais do |t|
      t.string :author
      t.text :content
      t.timestamp :date

      t.timestamps
    end
  end

  def self.down
    drop_table :haimais
  end
end
