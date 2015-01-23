require("spec_helper")

describe(Client) do

  describe(".all") do
    it("returns a list of all clients") do
      expect(Client.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves a client to the database") do
      client = Client.new({:name => "Bubby", :stylist_id => 1})
      client.save()
      expect(Client.all()).to(eq([client]))
    end
  end

  describe("#==") do
    it("is the same client if it has the same name") do
      client1 = Client.new({:name => "Bubby", :stylist_id => 1})
      client2 = Client.new({:name => "Bubby", :stylist_id => 1})
      expect(client1).to(eq(client2))
    end
  end

end
