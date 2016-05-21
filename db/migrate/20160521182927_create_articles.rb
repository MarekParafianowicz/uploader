class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.string :paper
      t.datetime :date
      t.string :file

      t.timestamps null: false
    end
  end
end
