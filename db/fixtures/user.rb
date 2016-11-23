User.seed do |s|
  s.id = 1
  s.name = "testuser#{Faker::Name.name}"
  s.password = "12345678"
  s.email = "example001@example.com"
  s.password_confirmation = "12345678"
  s.uid = SecureRandom.uuid
end

User.seed do |s|
  s.id = 2
  s.name = "testuser#{Faker::Name.name}"
  s.password = "12345678"
  s.email = "example002@example.com"
  s.password_confirmation = "12345678"
  s.uid = SecureRandom.uuid
end

User.seed do |s|
  s.id = 3
  s.name = "testuser#{Faker::Name.name}"
  s.password = "12345678"
  s.email = "example003@example.com"
  s.password_confirmation = "12345678"
  s.uid = SecureRandom.uuid
end

User.seed do |s|
  s.id = 4
  s.name = "testuser#{Faker::Name.name}"
  s.password = "12345678"
  s.email = "example004@example.com"
  s.password_confirmation = "12345678"
  s.uid = SecureRandom.uuid
end

User.seed do |s|
  s.id = 5
  s.name = "testuser#{Faker::Name.name}"
  s.password = "12345678"
  s.email = "example005@example.com"
  s.password_confirmation = "12345678"
  s.uid = SecureRandom.uuid
end

User.seed do |s|
  s.id = 6
  s.name = "testuser#{Faker::Name.name}"
  s.password = "12345678"
  s.email = "example006@example.com"
  s.password_confirmation = "12345678"
  s.uid = SecureRandom.uuid
end

