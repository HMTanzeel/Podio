class CreateWebsite1s < ActiveRecord::Migration[7.0]
  def change
    create_table :website1s do |t|
      t.string :web_name
      t.string :url
      t.datetime :created
      t.boolean :status
      t.string :email
      t.integer :phone
      t.string :location
      t.string :domain
      t.string :hosting
      t.string :server

      t.timestamps
    end
  end
end
