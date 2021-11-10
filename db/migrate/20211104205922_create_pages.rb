class CreatePages < ActiveRecord::Migration[6.1]
  def change
    create_table :pages do |t|
      # t.integer :subject_id, index: true
      # t.references :subject
      t.belongs_to :subject
      t.integer :position
      t.string :name
      t.boolean :visible
      t.string :permalink
      t.text :content

      t.timestamps
    end
  end
end
