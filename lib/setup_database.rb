# require 'data_mapper'
# require 'dm-postgres-adapter'
require './lib/user'
require './lib/space'

def setup_database
  if ENV['ENVIRONMENT'] == 'test'
    DataMapper.setup(
      :default, 'postgres://:@localhost/makers_bnb_test'
    )
  else
    DataMapper.setup(
      :default, 'postgres://:@localhost/makers_bnb'
  )
  end

  DataMapper.finalize
  DataMapper.auto_upgrade!

end