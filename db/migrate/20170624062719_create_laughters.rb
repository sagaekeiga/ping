class CreateLaughters < ActiveRecord::Migration
  def change
    create_table :laughters do |t|
      t.text :title
      t.text :content

      t.timestamps null: false
    end
  end
end
