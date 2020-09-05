class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :content
      t.integer :status,  default: 0
      t.references :list, foreign_key: true

      t.timestamps
    end
  end
end
