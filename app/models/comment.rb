class Comment < ApplicationRecord
  include Visible
  belongs_to :article

  after_destroy :log_destroy_message 

    def log_destroy_message
        puts "Comment destroyed"
    end

end
