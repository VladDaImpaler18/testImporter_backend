class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text :question
      t.string :diagram_info
      t.string :answer
      t.string :dummy

      t.timestamps
    end
  end
end
