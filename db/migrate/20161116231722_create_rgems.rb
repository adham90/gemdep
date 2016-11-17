class CreateRgems < ActiveRecord::Migration[5.0]
  def change
    create_table :rgems do |t|
      t.string :name, index: true
    end
  end
end
