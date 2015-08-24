class CreateTest2s < ActiveRecord::Migration
  def change
    create_table :test2s do |t|
      t. :attribute_timestamp_wotz
      t. :attribute_timestamp_wtz

      t.timestamps null: false
    end
  end
end
