class Mainorderboard
  include Mongoid::Document
  field :name, type: String
  field :salesman, type: String
  field :phone, type: String
  field :email, type: String
  field :ordernumber, type: String
  field :date, type: String
end
