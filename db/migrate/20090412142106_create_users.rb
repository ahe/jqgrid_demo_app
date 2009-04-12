class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :pseudo
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :role
      t.timestamps
    end
    
    User.create(:pseudo => "ahe", :firstname => "Anthony", :lastname => "Heukmes", :email => "ahe@ahe.be", :role => "admin")
    User.create(:pseudo => "willd", :firstname => "Wilfried", :lastname => "Dalmat", :email => "willd@ahe.be", :role => "middlefielder")
    User.create(:pseudo => "marcos", :firstname => "Marcos", :lastname => "Camozzato", :email => "marcos@ahe.be", :role => "defender")
    User.create(:pseudo => "onyewuo", :firstname => "Ogushi", :lastname => "Onyewu", :email => "onyewuo@ahe.be", :role => "defender")
    User.create(:pseudo => "sarrm", :firstname => "Momo", :lastname => "Sarr", :email => "sarrm@ahe.be", :role => "defender")
    User.create(:pseudo => "mulemol", :firstname => "Landry", :lastname => "Mulemo", :email => "mulemol@ahe.be", :role => "defender")
    User.create(:pseudo => "witsela", :firstname => "Axel", :lastname => "Witsel", :email => "witsela@ahe.be", :role => "middlefielder")
    User.create(:pseudo => "defours", :firstname => "Steven", :lastname => "Defour", :email => "defours@ahe.be", :role => "middlefielder")
    User.create(:pseudo => "goreuxr", :firstname => "Reginal", :lastname => "Goreux", :email => "goureux@ahe.be", :role => "middlefielder")
    User.create(:pseudo => "jova", :firstname => "Milan", :lastname => "Jovanovic", :email => "jova@ahe.be", :role => "striker")
    User.create(:pseudo => "decamar", :firstname => "Igor", :lastname => "De Camargo", :email => "decamar@ahe.be", :role => "striker")
    User.create(:pseudo => "mbokani", :firstname => "Dieumerci", :lastname => "Mbokani", :email => "mbokani@ahe.be", :role => "striker")
    User.create(:pseudo => "nicaise", :firstname => "Benjamin", :lastname => "Nicaise", :email => "nicaise@ahe.be", :role => "middlefielder")
    User.create(:pseudo => "bolats", :firstname => "Sinan", :lastname => "Bolat", :email => "bolats@ahe.be", :role => "goalkeeper")
    User.create(:pseudo => "leonb", :firstname => "Leon", :lastname => "Benko", :email => "leonb@ahe.be", :role => "striker")
    User.create(:pseudo => "espi", :firstname => "Aragon", :lastname => "Espinoza", :email => "espi@ahe.be", :role => "goalkeeper")
    User.create(:pseudo => "carce", :firstname => "Medhi", :lastname => "Carcela", :email => "carce@ahe.be", :role => "middlefielder")
    User.create(:pseudo => "manga", :firstname => "Eliaquim", :lastname => "Mangala", :email => "manga@ahe.be", :role => "middlefielder")
    User.create(:pseudo => "miku", :firstname => "Tomislav", :lastname => "Mikulic", :email => "miku@ahe.be", :role => "defender")
    User.create(:pseudo => "maestro", :firstname => "Segio", :lastname => "Conceicao", :email => "maestro@ahe.be", :role => "middlefielder")
    User.create(:pseudo => "bolo", :firstname => "Laszlo", :lastname => "Boloni", :email => "bolo@ahe.be", :role => "trainer")
    User.create(:pseudo => "pesto", :firstname => "Joaquim", :lastname => "Preto", :email => "ahe@ahe.be", :role => "trainer")
    User.create(:pseudo => "pf", :firstname => "Pierre", :lastname => "Francois", :email => "pf@ahe.be", :role => "admin")
    User.create(:pseudo => "moi", :firstname => "Moi", :lastname => "Moi", :email => "moi@ahe.be", :role => "striker")
  end

  def self.down
    drop_table :users
  end
end
