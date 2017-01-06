class CreateAuthorsAndBooks < ActiveRecord::Migration[5.0]
  def up
    create_table :authors do |t|
      t.string :name

      t.timestamps
    end

    create_table :books do |t|
      t.belongs_to :author, index: true
      t.datetime :published_at

      t.timestamps
    end
  end

  def down
    drop_table :authors
    drop_table :books
  end
end
