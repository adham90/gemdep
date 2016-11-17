class CreateDependencies < ActiveRecord::Migration[5.0]
  def change
    create_table :dependencies do |t|
      t.string :name
      t.references :rgem, foreign_key: true
    end
  end
end
