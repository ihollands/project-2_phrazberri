class CreatePhrases < ActiveRecord::Migration[5.0]
  def change
    create_table :phrases do |t|
      t.string :body
      t.string :fig_trans
      t.string :lit_trans
      t.string :context
      t.string :pronunciation
      t.references :language

      t.timestamps
    end
  end
end
