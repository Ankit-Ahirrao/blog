class Article < ApplicationRecord
    include Visible

    has_many :comments, dependent: :destroy
    #validates :termsofservice, acceptance: true
    validates :title, presence: { message: "Title must be given"}
    validates :body, presence: true, length: { minimum: 10 }
end
