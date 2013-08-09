class User < ActiveRecord::Base
  attr_accessible :role, :learn, :email, :zipcode

  validates_presence_of :email
  validates_presence_of :zipcode

  def self.roles
    ['Physician', 'Medical Student', 'Biomedical Scientist', 'Nurse', 'Other Healthcare Professional', 'Member of the non-medical community']
  end

  def self.learn
    ['Medical Statistics', 'Business of Medicine', 'Politics and Medicine', 'Design Thinking in Medicine', 'Financial Planning', 'Medical Innovation']
  end 
end