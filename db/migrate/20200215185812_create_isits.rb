class CreateIsits < ActiveRecord::Migration[5.2]
  def change
    create_table :isits do |t|
      t.string :name

      t.timestamps
    end
  end
end
