class CreateRosters < ActiveRecord::Migration
  def change
    create_table :rosters do |t|
      t.string :username
      t.string :company_name
      t.string :address
      t.string :phone_number

      t.timestamps
    end
  end
end
