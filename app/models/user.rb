class User < ApplicationRecord

  def self.create_user_csv
    users = User.all

    CSV.open('./lib/files/user.csv', 'wb') do |csv|
      csv << ["Name", "Email", "Phone", "Address", "Title"]
      users.each do |user|
        csv << [user.name, user.email, user.phone, user.address, user.title]
      end
    end
  end
end
