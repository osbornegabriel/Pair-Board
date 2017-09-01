class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name, :last_name, :email, :password_digest, :phone, null: false
      t.string :picture_url, :bio
      t.text :topics, array: true

      t.timestamps
    end
  end
end
