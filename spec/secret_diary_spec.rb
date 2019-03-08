require 'secret_diary'

describe SecretDiary do

  describe '#initialize' do

    it 'should be locked when initialized' do
      my_diary = SecretDiary.new
      expect(my_diary.status).to eq "Locked"
    end

  end

  describe '#lock' do

    it { is_expected.to respond_to :lock }

    it 'should lock the diary' do
      my_diary = SecretDiary.new
      expect(my_diary.lock).to eq "Locked"
    end

  end

  describe '#unlock' do

    it { is_expected.to respond_to :unlock }

    it 'should unlock the diary' do
      my_diary = SecretDiary.new
      expect(my_diary.unlock).to eq "Unlocked"
    end

  end

  describe '#add_entry' do

    it { is_expected.to respond_to :add_entry}

    it 'should raise an error if locked' do
      my_diary = SecretDiary.new
      expect { my_diary.add_entry }.to raise_error("Diary locked - cannot add entry")
    end

  end

  describe '#get_entries' do

    it { is_expected.to respond_to :get_entries }

  end
end
