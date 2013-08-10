class User < ActiveRecord::Base
  attr_accessible :role, :learn, :email, :zipcode

  validates_presence_of :email
  validates_presence_of :zipcode
  validates_format_of :zipcode, :with => /^\d{5}(-\d{4})?$/, :message => "should be in the form 12345 or 12345-1234"

  def self.roles
    ['Physician', 'Medical Student', 'Biomedical Scientist', 'Nurse', 'Other Healthcare Professional', 'Member of the non-medical community']
  end

  def self.learn
    ['Medical Statistics', 'Business of Medicine', 'Politics and Medicine', 'Design Thinking in Medicine', 'Financial Planning', 'Medical Innovation']
  end 
end