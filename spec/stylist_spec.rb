require('spec_helper')

describe(Stylist) do

  describe(".all") do
    it("returns a list of all stylists") do
      expect(Stylist.all()).to(eq([]))
    end
  end

  describe(".find") do
    it("returns a stylist by its ID number") do
      test_stylist = Stylist.new({:name => "Gam-Gam", :id => nil})
      test_stylist.save()
      test_stylist2 = Stylist.new({:name => "Grammy", :id => nil})
      test_stylist2.save()
      expect(Stylist.find(test_stylist2.id())).to(eq(test_stylist2))
    end
  end

  describe("#save") do
    it("saves stylists to the database") do
      stylist = Stylist.new({:name => "Gam-Gam", :id => nil})
      stylist.save()
      expect(Stylist.all()).to(eq([stylist]))
    end
  end

  describe("#clients") do
    it("returns a list of clients for that stylist") do
      stylist = Stylist.new({:name => "Gam-Gam", :id => nil})
      stylist.save()
      client = Client.new({:name => "Bubby", :stylist_id => stylist.id()})
      client.save()
      client2 = Client.new({:name => "Bubby Jr.", :stylist_id => stylist.id()})
      client2.save()
      expect(stylist.clients()).to(eq([client, client2]))
    end
  end

  describe("#==") do
    it("is the same stylist if it has the same name") do
      stylist1 = Stylist.new({:name => "Gam-Gam", :id => nil})
      stylist2 = Stylist.new({:name => "Gam-Gam", :id => nil})
      expect(stylist1).to(eq(stylist2))
    end
  end

end
