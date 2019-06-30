class Student < ActiveRecord::Base

  def to_s
    self.first_name + " " + self.last_name
  end

  def activity_status
    if self.active != true
      "This student is currently inactive."
    else
      "This student is currently active."
    end
  end

  def change_activity_status
    if self.active != true
      self.update(active: true)
    else
      self.update(active: false)
    end
  end

end