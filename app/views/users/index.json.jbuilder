json.array!(@users) do |user|
  json.extract! user, :email, :password_hash, :password_salt, :first_name, :last_name, :address, :city, :state, :zip, :phone_home, :phone_work, :nurse, :institution, :rn_id, :stage_registerd, :aphon_member, :scaphon_member
  json.url user_url(user, format: :json)
end