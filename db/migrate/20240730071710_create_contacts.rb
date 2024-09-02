class CreateContacts < ActiveRecord::Migration[7.1]
  def change
    create_table :contacts do |t|
      t.string :full_name
      t.string :email
      t.integer :mobile_number
      t.text :message
      t.boolean :term_condition

      t.timestamps
    end
  end
end
