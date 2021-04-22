class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :activity
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
