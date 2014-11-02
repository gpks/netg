class ReviewDecorator < Draper::Decorator
  delegate_all

  def author
    User.find(self.user_id).firstname +" "+ User.find(self.user_id).lastname 
  end

end
