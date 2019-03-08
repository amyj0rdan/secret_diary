class SecretDiary

  attr_reader :status

  def initialize
    @status = "Locked"
  end

  def lock
    @status = "Locked"
  end

  def unlock
    @status = "Unlocked"
  end

end
