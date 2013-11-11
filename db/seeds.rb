Registrant.destroy_all
User.destroy_all
Report.destroy_all

Registrant.create([
  {
    id: SecureRandom.urlsafe_base64,
    email: "bob@munat.com",
    expires_at: Time.now + 4.hours
  },
  {
    id: SecureRandom.urlsafe_base64,
    email: "bill@munat.com",
    expires_at: Time.now + 4.hours
  },
  {
    id: SecureRandom.urlsafe_base64,
    email: "biff@munat.com",
    expires_at: Time.now + 4.hours
  }
])

users = User.create([
  {
    id: SecureRandom.urlsafe_base64,
    name: "Anne",
    email: "anne@me.com",
    password: "123",
    password_confirmation: "123"
  },
  {
    id: SecureRandom.urlsafe_base64,
    name: "Chad",
    email: "chad@munat.com",
    password: "123",
    password_confirmation: "123"
  },
  {
    id: SecureRandom.urlsafe_base64,
    name: "Cad",
    email: "cad@munat.com",
    password: "123",
    password_confirmation: "123"
  },
  {
    id: SecureRandom.urlsafe_base64,
    name: "Pete",
    email: "pete@me.com",
    password: "123",
    password_confirmation: "123"
  }
])

Report.create([
  {
    id: SecureRandom.urlsafe_base64,
    name: "Report 1",
    address_of_site: "123 Lane",
    cost: 100000,
    user: users[0]
  },
  {
    id: SecureRandom.urlsafe_base64,
    name: "Report 2 for Anne",
    address_of_site: "123 Hong Kong",
    cost: 456,
    user: users[0]
  },
  {
    id: SecureRandom.urlsafe_base64,
    name: "Report 2",
    address_of_site: "123 Lake View",
    cost: 987349,
    user: users[1]
  },
  {
    id: SecureRandom.urlsafe_base64,
    name: "Report 3",
    address_of_site: "123 Hollywood",
    cost: 19999000,
    user: users[2]
  }
])