class Techsuppanswer < ActiveRecord::Base
                belongs_to :technicalspecialist
                has_many :techsuppquestionses
                validates_presence_of :answer, :techsuppquestions_id
end
