class CreateEmails < ActiveRecord::Migration[7.0]
  def change
    create_table :emails do |t|
      t.string :address
      t.string :subject
      t.text :content
      t.integer :sent
      t.integer :views

      t.timestamps
    end
  end
end
