class User < ActiveRecord::Base


 has_many :extras, dependent: :destroy
 validates :name, presence: true,
 length: { minimum: 5 }
 validates :phone_number, :numericality => {:only_integer => true}

end

