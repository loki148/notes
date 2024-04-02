class CreateNotes < ActiveRecord::Migration[7.1]
  def change
    create_table :notes do |t|
      t.column :name, :string
      t.column :body, :text
      t.timestamps
    end
  end
end
