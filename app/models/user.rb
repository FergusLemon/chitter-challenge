class User
  include DataMapper::Resource

  property :id,        Serial
  property :name,      String
  property :username,  String, :required => true, :unique => true, :messages =>
                               { :presence => 'Please enter a username',
                                 :is_unique => 'We already have that username' }
  property :email,     String, :required => true, :unique => true, :format => :email_address,
                               :messages => { :presence => 'Please enter an email address',
                                             :is_unique => 'We already have that email',
                                             :format => 'Please enter a valid email address' }
  property :password,  BCryptHash

  def self.authenticate(username, password)
    user = first(username: username)
    if user && BCrypt::Password.new(user.password) == password
      user
    else
      nil
    end
  end
end
