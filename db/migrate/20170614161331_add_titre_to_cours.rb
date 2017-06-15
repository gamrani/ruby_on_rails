class AddTitreToCours < ActiveRecord::Migration[5.1]
  def change
    add_column :cours, :titre, :string
  end
end
