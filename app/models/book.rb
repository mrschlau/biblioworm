class Book < ActiveRecord::Base
    belongs_to :worm
    
    validates :worm_id, :length => { :maximum => 3 }
    validates :genre, :length => { :maximum => 40 }
    validates :title, :length => { :maximum => 100 }
    validates :author, :length => { :maximum => 50 }
    validates :synopsis, :length => { :maximum => 500 }
end
