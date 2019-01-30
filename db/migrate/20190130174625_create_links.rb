class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.belongs_to :user, index: true
      t.string :url
      t.timestamps
    end
  end
end

#Créations d'une table links avec pour papa user, require un string pour l'url