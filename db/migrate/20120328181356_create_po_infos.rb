class CreatePoInfos < ActiveRecord::Migration
  def change
    create_table :po_infos do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :country
      t.string :phone
      t.string :fax
      t.string :email
      t.integer :po_infoable_id
      t.string :po_infoable_type

      t.timestamps
    end
  end
end
