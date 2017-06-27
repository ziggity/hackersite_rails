class CreateTables < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.timestamps
    end
    create_table :posts do |t|
      t.belongs_to :user, index: true
      t.column :url, :string
      t.column :points, :integer

      t.timestamps
    end
    create_table :comments do |t|
      t.belongs_to :post, index: true
      t.belongs_to :user, index: true
      t.column :content, :string
      t.column :points, :integer

      t.timestamps
    end
  end
end
