require("sinatra")
require("sinatra/reloader")
require("pg")
also_reload("lib/**/*.rb")
require("./lib/stylist")
require("./lib/client")

DB = PG.connect({:dbname => "salon"})

get("/") do
  @stylists = Stylist.all()
  erb(:index)
end

post("/") do
  name = params.fetch("stylist_name")
  stylist = Stylist.new({:name => name, :id => nil})
  stylist.save()
  redirect('/')
end

get("/stylists/:id") do
  @stylist = Stylist.find(params.fetch("id").to_i())
  erb(:stylist)
end

post("/clients") do
  @name = params.fetch("client_name")
  stylist_id = params.fetch("stylist_id").to_i()
  client = Client.new({:name => @name, :stylist_id => stylist_id})
  client.save()
  @stylist = Stylist.find(stylist_id)
  erb(:stylist)
end
