class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
      t.string :title

      t.timestamps
    end
  end
end
