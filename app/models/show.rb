class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters 
    has_many :actors, through: :characters 

    def actors_list
        self.actors.map { |a| a.full_name}
    end 
    

end