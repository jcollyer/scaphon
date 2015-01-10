namespace :users do
  desc "add password digest hash to all users to make Bcrypt happy"
  task add_password_digest_to_users: :environment do
    @users = User.all
    @users.each do |user|
      user.password_digest = "$2a$10$8Jc6I9MrmobyLk5kqZJ3..EHKh5KP0mG39RKZEIT82fX.QjWiGJb2"
      user.save
    end
  end

  desc "add auth token to all users"
  task add_auth_token_to_users: :environment do
    @users = User.all
    @users.each do |user|
      user.auth_token = SecureRandom.base64
      user.save
    end
  end
end
