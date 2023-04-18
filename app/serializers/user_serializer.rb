class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :firstname, :lastname, :email, :created_at
end
