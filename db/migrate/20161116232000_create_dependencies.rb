class CreateDependencies < ActiveRecord::Migration[5.0]
  def change
    create_table :dependencies do |t|
      t.string :name, null: false
      t.integer :os_type, default: 0, null: false
      t.references :rgem, index: true, foreign_key: true
    end

    add_index :dependencies, [:name, :os_type], unique: true
  end
end
