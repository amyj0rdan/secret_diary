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

  def add_entry
    raise "Diary locked - cannot add entry" if @status = "Locked"
  end

  def get_entries
    raise "Diary locked - cannot get entries" if @status = "Locked"
  end

end
