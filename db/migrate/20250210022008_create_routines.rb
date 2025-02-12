class CreateRoutines < ActiveRecord::Migration[8.0]
  def change
    create_table :routines, id: :uuid do |t|
      t.string :name
      t.references :trainer, null: false, type: :uuid, foreign_key: { to_table: :users }
      t.references :trainee, null: false, type: :uuid, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
