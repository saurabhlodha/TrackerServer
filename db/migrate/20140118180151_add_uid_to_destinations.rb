class AddUidToDestinations < ActiveRecord::Migration
  def change
    add_column :destinations, :uid, :integer
  end
end
