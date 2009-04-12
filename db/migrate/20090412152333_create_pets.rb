class CreatePets < ActiveRecord::Migration
  def self.up
    create_table :pets do |t|
      t.string :name
      t.integer :user_id
      t.timestamps
    end
    
    Pet.create(:name => "Youpi", :user_id => 1)
    Pet.create(:name => "Blouk", :user_id => 1)
    Pet.create(:name => "Pif", :user_id => 1)
    Pet.create(:name => "Paf", :user_id => 2)
    Pet.create(:name => "Meuh", :user_id => 3)
    Pet.create(:name => "Boug", :user_id => 3)
    Pet.create(:name => "Zigg", :user_id => 4)
    Pet.create(:name => "Iop", :user_id => 4)
    Pet.create(:name => "Tcham", :user_id => 4)
    Pet.create(:name => "Outch", :user_id => 5)
    Pet.create(:name => "Tzii", :user_id => 5)
    Pet.create(:name => "Tutu", :user_id => 6)
    Pet.create(:name => "Tata", :user_id => 7)
    Pet.create(:name => "Bobo", :user_id => 7)
    Pet.create(:name => "Bulk", :user_id => 7)
    Pet.create(:name => "Rocky", :user_id => 7)
    Pet.create(:name => "Arnold", :user_id => 8)
    Pet.create(:name => "Miii", :user_id => 9)
    Pet.create(:name => "Tititi", :user_id => 10)
    Pet.create(:name => "Bob", :user_id => 11)
    Pet.create(:name => "Max", :user_id => 12)
    Pet.create(:name => "Poop", :user_id => 12)
    Pet.create(:name => "Bikk", :user_id => 13)
    Pet.create(:name => "Allo", :user_id => 13)                                                                                            
  end

  def self.down
    drop_table :pets
  end
end
