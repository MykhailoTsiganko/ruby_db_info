require '../orm/banking/models'


class DBHelper
  include BankingDBModel

  def initialize
    init()
  end

  def getUserById(id)
    return  UserModel.find(id);
  end

  def getUserSignupInformation(id)
    return UserSignupInformation.find_by(user_id: id)
  end

  def getPersonalDatas(id)
    return PersonalDatas.find_by(user_id:id)
  end

  def getLegalDocumentAcceptances(id)
    return LegalDocumentAcceptances.find_by(user_id:id)
  end

  def getLegalCustomersAffiliates(id)
    return CustomersAffiliates.find_by(user_id:id)
  end

  def getAccounts(id)
    return Accounts.find_by(user_id:id)
  end

  def getAccountFlags(id)
    return AccountFlags.find_by(user_id:id)
  end

end

helper = DBHelper.new()

user = helper.getUserById("2")


puts user.class


puts user.email
