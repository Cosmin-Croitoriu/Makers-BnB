require 'data_mapper'
require 'dm-postgres-adapter'

class Space
   include DataMapper::Resource

   property :id,             Serial
   property :name,           String, :required => true, :unique => true
   property :description,    Text, :required => true,
   property :price,          Float, :required => true
   #belongs_to :user

end
