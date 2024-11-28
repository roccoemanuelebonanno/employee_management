class CreateEmployees < ActiveRecord::Migration[8.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :tax_code
      t.date :age
      t.string :email

      t.timestamps
    end
  end
end
