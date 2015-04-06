require_relative '../pokemon'

describe Squirtle do
  let(:squirtle) { described_class.new }

  describe "#initialize" do
    it "sets the initial HP" do
      expect(squirtle.hp).to eq(100)
    end
  end

  describe "#attack" do
    context "against a water type" do
      let(:other_squirtle) { described_class.new }

      before do
        squirtle.attack(other_squirtle)
      end

      it "does not reduce my health" do
        expect(squirtle.hp).to eq(100)
      end

      it "reduces the health of the attacked" do
        expect(other_squirtle.hp).to eq(90)
      end
    end

    context "against a plant type" do
      let(:bulbasaur) { Bulbasaur.new }

      before do
        squirtle.attack(bulbasaur)
      end

      it "does not reduce my health" do
        expect(squirtle.hp).to eq(100)
      end

      it "reduces the health of the attacked" do
        expect(bulbasaur.hp).to eq(90)
      end
    end

    context "against a fire type" do
      let(:charmander) { Charmander.new }

      before do
        squirtle.attack(charmander)
      end

      it "does not reduce my health" do
        expect(squirtle.hp).to eq(100)
      end

      it "reduces the health of the attacked" do
        expect(charmander.hp).to eq(80)
      end
    end

    it "does not overkill the other opponent" do
      other_squirtle = described_class.new

      11.times { squirtle.attack(other_squirtle) }

      expect(other_squirtle.hp).to eq(0)
    end
  end
end

describe Bulbasaur do
  let(:bulbasaur) { described_class.new }

  describe "#initialize" do
    it "sets the initial HP" do
      expect(bulbasaur.hp).to eq(100)
    end
  end

  describe "#attack" do
    context "against a water type" do
      let(:squirtle) { Squirtle.new }

      before do
        bulbasaur.attack(squirtle)
      end

      it "does not reduce my health" do
        expect(bulbasaur.hp).to eq(100)
      end

      it "reduces the health of the attacked" do
        expect(squirtle.hp).to eq(80)
      end
    end

    context "against a plant type" do
      let(:other_bulbasaur) { Bulbasaur.new }

      before do
        bulbasaur.attack(other_bulbasaur)
      end

      it "does not reduce my health" do
        expect(bulbasaur.hp).to eq(100)
      end

      it "reduces the health of the attacked" do
        expect(other_bulbasaur.hp).to eq(90)
      end
    end

    context "against a fire type" do
      let(:charmander) { Charmander.new }

      before do
        bulbasaur.attack(charmander)
      end

      it "does not reduce my health" do
        expect(bulbasaur.hp).to eq(100)
      end

      it "reduces the health of the attacked" do
        expect(charmander.hp).to eq(90)
      end
    end

    it "does not overkill the other opponent" do
      other_bulbasaur = described_class.new

      11.times { bulbasaur.attack(other_bulbasaur) }

      expect(other_bulbasaur.hp).to eq(0)
    end
  end
end

describe Charmander do
  let(:charmander) { described_class.new }

  describe "#initialize" do
    it "sets the initial HP" do
      expect(charmander.hp).to eq(100)
    end
  end

  describe "#attack" do
    context "against a water type" do
      let(:squirtle) { Squirtle.new }

      before do
        charmander.attack(squirtle)
      end

      it "does not reduce my health" do
        expect(charmander.hp).to eq(100)
      end

      it "reduces the health of the attacked" do
        expect(squirtle.hp).to eq(90)
      end
    end

    context "against a plant type" do
      let(:bulbasaur) { Bulbasaur.new }

      before do
        charmander.attack(bulbasaur)
      end

      it "does not reduce my health" do
        expect(charmander.hp).to eq(100)
      end

      it "reduces the health of the attacked" do
        expect(bulbasaur.hp).to eq(80)
      end
    end

    context "against a fire type" do
      let(:other_charmander) { Charmander.new }

      before do
        charmander.attack(other_charmander)
      end

      it "does not reduce my health" do
        expect(charmander.hp).to eq(100)
      end

      it "reduces the health of the attacked" do
        expect(other_charmander.hp).to eq(90)
      end
    end

    it "does not overkill the other opponent" do
      other_charmander = described_class.new

      11.times { charmander.attack(other_charmander) }

      expect(other_charmander.hp).to eq(0)
    end
  end
end

describe Gyrados do
  let(:gyrados) {described_class.new}

  describe "#initialize" do
    it "should be water and flying" do
      expect(gyrados.type.sort).to eq(["water","flying"].sort)
    end
  end

end

describe Zaptos do
  let(:zaptos) {described_class.new}

  describe "#initialize" do
    it "sets the initial hp" do
      expect(zaptos.hp).to eq(100)
    end
  end

  describe "#attack" do
    context "against water and air type" do
      let(:gyrados) {Gyrados.new}
      before do
        zaptos.attack(gyrados)
      end
      it "should reduce the health of opponent by 4 times" do
        expect(gyrados.hp).to eq(60)
      end
    end
  end
describe Type do
  let(:type) {described_class.new}
  
end
end
