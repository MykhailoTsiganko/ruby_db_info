require 'rubygems'
require 'active_record'

module BankingDBModel
  def init
    ActiveRecord::Base.establish_connection(
        :adapter=> "mysql2",
        :host => "10.1.73.30",
        :port =>"33306",
        :username=> "root",
        :password => "dummy",
        :database=> "banking_production"
    )
    # ActiveRecord::Base.establish_connection(
    #     :adapter=> "mysql2",
    #     :host => "localhost",
    #     :port =>"3306",
    #     :username=> "root",
    #     :password => "root",
    #     :database=> "test"
    # )
  end

  class UserModel < ActiveRecord::Base
    self.table_name = 'users'
  end

  class UserSignupInformation < ActiveRecord::Base
    self.table_name = 'user_signup_informations'
  end

  class PersonalDatas < ActiveRecord::Base
    self.table_name = 'personal_datas'
  end

  class LegalDocumentAcceptances < ActiveRecord::Base
    self.table_name = 'legal_document_acceptances'
  end

  class CustomersAffiliates < ActiveRecord::Base
    self.table_name = 'customers_affiliates'
  end

  class Accounts < ActiveRecord::Base
    self.table_name = 'accounts'
  end

  class AccountFlags < ActiveRecord::Base
    self.table_name = 'account_flags'
  end

end




