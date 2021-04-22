class Link < ActiveRecord::Base  
  
  validates_presence_of :original_url  
  validates_uniqueness_of :short_url  
    
  before_validation :generate_short_url
    
  def generate_short_url
    length = 5
    self.short_url =  SecureRandom.alphanumeric(length) 
  end
end  