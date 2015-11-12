module PartyGoer

  def initialize
    @drink = 0
  end

  def drink
    @drink += 1
    if @drink >= 3
      return false
    else
      return true
    end
  end

  def sing
    "I'm singing!"
  end

  def cause_havoc
    raise PersonalizedHavocError, "You should define this yourself!"

  end

  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def invited?
      return true
    end
  end
end

class PersonalizedHavocError < StandardError; end
