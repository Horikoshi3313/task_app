class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :title
      t.datetime :start
      t.datetime :end
      t.text :text
      t.datetime :updated
      t.string :member

      t.timestamps
    end
  end
end
