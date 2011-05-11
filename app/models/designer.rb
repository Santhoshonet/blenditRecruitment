class Designer < ActiveRecord::Base
                  has_one :attachment
  validates_presence_of :name, :message => "your name is not filled."
  validates_presence_of :email, :message => "your email is not filled."
  validates_presence_of :mobile, :message => "your email is not filled."
  validates_format_of :email, :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}\z/ , :message => "your email is not in valid format."
  validates_uniqueness_of :email , :message => "your email is already registered."
  validates_presence_of :portpolios , :message => "your portfolio url is not filled."
  validates_presence_of :inspirationurl1 ,:message => "your inspiration url 1 is not filled."
  validates_presence_of :inspirationurl2 ,:message => "your inspiration url 2 is not filled."
  validates_presence_of :inspirationurl3 ,:message => "your inspiration url 3 is not filled."
  validates_presence_of :inspirationcomment, :message => "your comment on inspirations urls is not filled."
  validates_presence_of :javascript, :message => "your javascript field is not filled."
  after_save :sendnotification
  def sendnotification
    NotificationToEmployer.send_designer_notification(self).deliver
  end
end
