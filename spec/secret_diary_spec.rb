require 'secret_diary'

describe SecretDiary do
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
end
