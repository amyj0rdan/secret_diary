require 'secret_diary'

describe SecretDiary do
  describe '#lock' do

    it { is_expected.to respond_to :lock }

    it 'should be lock the diary' do
      my_diary = SecretDiary.new
      expect(my_diary.lock).to eq "Locked"
    end

  end
end
