class CreateQuestionTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :question_types do |t|
      t.integer :level
      t.string :name
      t.text :description
      t.string :color

      t.timestamps
    end
  end
end
