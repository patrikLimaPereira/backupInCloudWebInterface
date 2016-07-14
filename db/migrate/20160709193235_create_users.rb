class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
        t.string :name, limite: 50   
        t.string :login, limite: 50   
        t.string :encrypted_password, limite: 2048 
        t.timestamps null: false    
    end
  end
end
