class CreateReplies < ActiveRecord::Migration[5.2]
  def change
    create_table :replies do |t|
      t.belongs_to :comment
      t.string :body
      t.timestamps
    end
  end
end

#Création d'un commentaire de commentaire qui a pour papa un commentaire, require un body en string!