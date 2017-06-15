class RemoveUserIdFromCours < ActiveRecord::Migration[5.1]
  def change
    remove_column :cours, :user_id, :integer
  end
end
