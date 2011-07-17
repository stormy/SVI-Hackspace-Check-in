class Checkin < ActiveRecord::Base
  validates :name,
    :presence => true,
    :length => { :minimum => 2 }

  validates_exclusion_of :name, :in => ["What's your name?"],
    :message => "Looks like you left the default text in place."

  validates_exclusion_of :email, :in => ["What's your email?"],
    :message => "Looks like you left the default text in place."

  validates_exclusion_of :status, :in => ["What are you working on?"],
    :message => "Looks like you left the default text in place."



  validates :email, :presence => true, :length => { :minimum => 2 }
  validates :status, :presence => true, :length => { :minimum => 2 }
end
