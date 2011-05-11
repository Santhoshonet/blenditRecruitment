class Techsuppquestions < ActiveRecord::Base
    belongs_to :techsuppanswer
    validates_presence_of :question

end
