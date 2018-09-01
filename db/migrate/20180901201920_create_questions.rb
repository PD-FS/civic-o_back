class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.references :question_type, foreign_key: true
      t.text :txt_desc_question
      t.integer :score_question
      t.integer :level
      t.boolean :sn_active

      t.timestamps
    end
  end
end
