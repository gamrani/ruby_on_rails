class CreateEtudiantsCoursProfs < ActiveRecord::Migration[5.1]
  def change
    create_table :etudiants_cours_profs do |t|

      t.timestamps
    end
  end
end
