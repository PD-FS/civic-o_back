class CreateQuestionType2s < ActiveRecord::Migration[5.2]
  def change
    create_table :question_type2s do |t|
      t.text :name
      t.text :description
      t.string :color
      t.boolean :sn_active_qt

      t.timestamps
    end
  end
end
