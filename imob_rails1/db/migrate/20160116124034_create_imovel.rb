## gerado pelo comando > rails g migration create_users
class CreateImovel < ActiveRecord::Migration
  def change
    create_table :imovels do |t|
    	##t.references :user, index: true
    	##t.string :detalhe
    	##t.string :descricao
    	##t.double :valor
    	##t.references :tipo_contrato
    end
  end
end
