class User < ApplicationRecord
    validates :name, presence: true

    after_initialize do
        puts "Object is initialized"
    end

    after_find do
        puts "Object is found"
    end
end
