class Article < ApplicationRecord
    has_many :comments , dependent: :destroy
    validates :title, presence: true,
    length: { minimum: 5 }  
    # validates :title_confirmation, presence: true
    # validates :title_confirmation, presence: true
end
