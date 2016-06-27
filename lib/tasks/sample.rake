namespace :db do

  desc "Fill database with sample data"
  task populate: :environment do

    User.create!(login: "chh", email: "chh@chh.tw", password: "12345678")

  end

end
