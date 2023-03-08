class CreateNewsletters < ActiveRecord::Migration[6.1]
  def change
    create_table :newsletters do |t|
      t.string :title
      t.string :description
      t.string :image
      t.string :article

      t.timestamps
    end
  end
end
