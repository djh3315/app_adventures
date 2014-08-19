class CreateAnimes < ActiveRecord::Migration
  def change
    create_table :animes do |t|

      t.timestamps
    end
  end
end
