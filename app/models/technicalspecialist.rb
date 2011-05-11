class Technicalspecialist < ActiveRecord::Base
                          has_one :attachment
                          has_one :techsuppanswer
  validates_presence_of :name, :message => "your name is not filled."
  validates_presence_of :email, :message => "your email is not filled."
  validates_format_of :email, :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}\z/ , :message => "your email is not in valid format."
  validates_uniqueness_of :email , :message => "your email is already registered."
end
