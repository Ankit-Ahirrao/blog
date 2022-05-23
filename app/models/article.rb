class Article < ApplicationRecord
    include Visible
   
    before_destroy do
        puts "Before destroying"
    end

    has_many :comments, dependent: :destroy

    validate :check_title

    def check_title
        unless title
            errors.add(:base, "title can't be blank")
        end
    end

    #validates :termsofservice, acceptance: true
    #validates :title, presence: true
    #before_validation :ensure_title_has_value

=begin       
    def ensure_title_has_value
        if title.blank?
            self.title = body unless body.blank?
        end
    end
=end
    #before_create do
     #  self.title = body.capitalize if title.blank?
    #end
=begin
    around_destroy do
        puts "Destroying..."
    end
=end
    after_destroy do
        puts "Article is destroyed"
    end


    after_initialize do
        puts "Object has been initialized"
    end

    after_find do
        puts "Object has found"
    end 

    after_touch do
        puts "Touched an object"
    end

    

    validates :body, presence: true, length: { minimum: 10 }

end

