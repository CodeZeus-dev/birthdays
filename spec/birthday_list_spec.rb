require 'birthday_list'

describe BirthdayList do

  it "responds to birthdays" do
    expect(subject).to respond_to :birthdays
  end

  describe "store_birthday" do
    it "responds to store_birthday" do
      expect(subject).to respond_to :store_birthday
    end

    it "accepts two arguments from the user" do
      expect(subject).to respond_to(:store_birthday).with(2).arguments
    end

    it "stores name and birthday in birthday list" do
      subject.store_birthday("Constantine", "29/01/95")
      expect(["Constantine", "29/01/95"]).to eq subject.birthdays[-1]
    end
  end

  describe "see" do
    it "responds to see" do
      expect(subject).to respond_to :see
    end

    it "prints out the name - birthday pairs on separate lines" do
      subject.store_birthday("Constantine", "29/01/95")
      expect(subject.see).to eq(["Constantine - 29/01/95"])
    end
  end

  describe "check_birthday" do
    it "responds to check_birthday" do
      expect(subject).to respond_to(:check_birthday)
    end

    it "accepts an argument" do
      expect(subject).to respond_to(:check_birthday).with(1).argument
    end

    it "matches a birthday on the birthday list" do
      subject.store_birthday("Constantine", "29/01/95")
      expect(subject.check_birthday("29/01/95")).to eq "Constantine"
    end
  end
end
