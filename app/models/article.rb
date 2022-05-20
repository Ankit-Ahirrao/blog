class Article < ApplicationRecord
    include Visible

    has_many :comments, dependent: :destroy
    #validates :termsofservice, acceptance: true
    validates :title, presence: true
    before_validation :ensure_title_has_value 

    def ensure_title_has_value
        if title.blank?
            self.title = body unless body.blank?
        end
    end
    validates :body, presence: true, length: { minimum: 10 }

end
