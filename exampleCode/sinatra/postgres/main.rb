require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'pry'
require 'rainbow'

get '/' do
  erb :index
end

get "/contacts" do
  db = PG.connect(:dbname => 'address_book', :host => 'localhost')
  sql = "SELECT * FROM contacts"
  @contacts = db.exec(sql)
  db.close
  erb :contacts
end

get '/contacts/new' do
  "add a contact"
  erb :form
end

post '/contacts' do
  first = params[:first]
  last = params[:last]
  age = params[:age]
  gender = params[:gender]
  dtgd = params[:dtgd]
  phone = params[:phone]
  sql = "INSERT INTO CONTACTS (first, last, age, gender, dtgd, phone) values ('#{first}', '#{last}', #{age}, '#{gender}', '#{dtgd}', '#{phone}')"
  db = PG.connect(:dbname => 'address_book', :host => 'localhost')
  db.exec(sql)
  db.close
  redirect to '/contacts'
end

post '/contacts/delete' do
  "bye"
end

get '/contacts/:id' do
  id = params[:id]
  db = PG.connect(:dbname => 'address_book', :host => 'localhost')
  sql = "SELECT * FROM contacts WHERE id = '#{id}'"
  @contact = db.exec(sql).first
  db.close
  erb :contact
end

