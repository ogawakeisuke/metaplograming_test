class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :display_title_jp
      t.string :display_title_en
      t.string :display_mix_title_jp
      t.string :display_mix_title_en
      t.string :display_artist_name_jp
      t.string :display_artist_name_en
      t.string :display_remixer_name_jp
      t.string :display_remixer_name_en

      t.timestamps
    end
  end
end
