class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.belongs_to :user, index: true
      t.belongs_to :link, index: true
      t.string :body
      t.timestamps
    end
  end
end

#Création de commentaires enfant de User et de Lien, require un string pour le contenu/body