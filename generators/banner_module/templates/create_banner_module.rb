class CreateBanners < ActiveRecord::Migration
  def self.up
    create_table :banners do |t|
      t.string :titulo
      t.integer :click, :default => 0
      t.string :arquivo_file_name
      t.string :arquivo_content_type
      t.integer :arquivo_file_size
      t.datetime :arquivo_updated_at
      t.string :link
      t.boolean :topo, :default=> false
      t.boolean :conteudo, :default=> false
      
      t.timestamps
    end
  end

  def self.down
    drop_table :banners
  end
end
