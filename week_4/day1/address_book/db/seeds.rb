  # create_table "contacts", force: :cascade do |t|
  #   t.string   "name"
  #   t.string   "address"
  #   t.string   "phone_number"
  #   t.string   "email"
  #   t.datetime "created_at",   null: false
  #   t.datetime "updated_at",   null: false
  # end

Contact.create name: "Anais", address: "120 8th street", phone: "3052050250", email: "backtalker@hotmail.com", favorite: true
Contact.create name: "Faraz", address: "220 9th street", phone: "3051234567", email: "winningatcode@gmail.com", favorite: false
Contact.create name: "Josh", address: "274 40th street", phone: "3057654321", email: "jackdanielsjosh@webmail.com", favorite: false
Contact.create name: "James", address: "127 112th ave", phone: "3059941243", email: "theartist@yahoo.com", favorite: true

