class CreateScorePapers < ActiveRecord::Migration[5.0]
  def change
    create_table :score_papers do |t|
      t.string :name
      t.string :studentID
      t.integer :score

      t.timestamps
    end
  end
end
