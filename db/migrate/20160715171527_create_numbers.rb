class CreateNumbers < ActiveRecord::Migration

  def change
    create_table :numbers do |t|
      t.integer :phone_number
      t.string :email
      t.string :password
      t.string :slug
      t.datetime :expires_at
      t.timestamps
    end
  end

end
