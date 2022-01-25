class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.integer :tag
      t.string :tag_name
      t.timestamps
    end
  end
end
