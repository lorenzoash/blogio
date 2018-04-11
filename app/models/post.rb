class Post < ApplicationRecord
    has_many :comments, dependent: :destroy
    after_initialize :set_defaults

    def set_defaults
        if self.upvotes.nil?
            self.upvotes = 0
        end
    def set_defaults
        if self.downvotes.nil?
            self.downvotes = 0
        end 
     end   
  end
end
