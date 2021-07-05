
class CreateNetworks < ActiveRecord::Migration[5.1]
  #define a change method in which to do the migration
  def change
    create_table :networks do |t| 
      t.string :call_letters
      # the above breaks down to
      # "create a column called :call_letters on table t with type string
      t.integer :channel
    end
  end
end
