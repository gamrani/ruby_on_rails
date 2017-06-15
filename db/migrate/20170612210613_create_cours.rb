class CreateCours < ActiveRecord::Migration[5.1]
  def change
    create_table :cours do |t|
      t.text :content
      t.titre :string

      t.timestamps
    end
  end
end
