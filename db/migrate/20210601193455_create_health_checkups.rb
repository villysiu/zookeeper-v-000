class CreateHealthCheckups < ActiveRecord::Migration[6.1]
  def change
    create_table :health_checkups do |t|
      t.text :comments
      t.date :date
      t.integer :animal_id
      t.integer :user_id


      t.timestamps
    end
  end
end
