class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|

      t.text :name
      t.text :email
      t.text :content
      # t.timestamps
    end
  end
end
