class AddCodeToComments < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :code, :string
  end
end
