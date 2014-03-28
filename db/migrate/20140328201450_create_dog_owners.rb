class CreateDogOwners < ActiveRecord::Migration
  def change
    create_table :dog_owners do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :dog_name

      t.timestamps
    end
  end
end
