## gerado pelo comando > rails g migration create_users
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	##adicionando indice no banco de dados
    	t.references :city, index: true
    	## atributos da tabela
    	t.string :name 
    	t.date :birth_date
    	t.string :phone, limit: 20
    	t.string :username
    	t.string :password
    end
  end
end
