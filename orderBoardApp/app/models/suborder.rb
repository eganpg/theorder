class Suborder
  include Mongoid::Document
  field :productname, type: String
  field :par, type: String
  field :onhand, type: String
  field :include, type: String
end
