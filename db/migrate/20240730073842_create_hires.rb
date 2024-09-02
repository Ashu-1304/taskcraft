class CreateHires < ActiveRecord::Migration[7.1]
  def change
    create_table :hires do |t|
      t.string :full_name
      t.string :email
      t.integer :mobile_number
      t.string :response
      t.text :message

      t.timestamps
    end
  end
end
