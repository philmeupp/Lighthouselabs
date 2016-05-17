class AddSongs < ActiveRecord::Migration
  def change :songs do |t|
    t.string :title
    t.string :author
    t.string :url
    t.timestamps
  end
end
