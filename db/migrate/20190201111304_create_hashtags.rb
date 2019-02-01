class CreateHashtags < ActiveRecord::Migration[5.2]
  def change
    create_table :hashtags do |t|
      t.string :hashtag_id
      t.text :message

      t.timestamps
    end
  end
end
