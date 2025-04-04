class CreateDummyTable < ActiveRecord::Migration[7.2]
  def change
    create_table :dummy_tables do |t|
      t.text :name
      t.timestamps
    end
  end
end
