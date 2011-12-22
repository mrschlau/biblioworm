class Worm < ActiveRecord::Base
    has_many :books
    
    validates :name, :length => { :maximum => 50 }
    validates :email, :length => { :maximum => 75 }
    validates :favorite_author, :length => { :maximum => 50 }
end
