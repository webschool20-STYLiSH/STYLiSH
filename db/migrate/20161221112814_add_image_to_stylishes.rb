class AddImageToStylishes < ActiveRecord::Migration[5.0]
  def change
    add_column :stylishes, :image, :string
  end
end
