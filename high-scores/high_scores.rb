class HighScores

  def initialize(scores)
    @scores = scores
  end

  def scores
    @scores
  end

  def latest
    scores.last
  end

  def personal_best
    scores.max
  end

  def personal_top
    scores.max(3)
  end

  def report
    if new_personal_best
      report_latest + " That's your personal best!"
    else
      report_latest + " That's #{diff_pb_latest} short of your personal best!"
    end
  end

  private

  def new_personal_best
    true if latest == personal_best
  end

  def diff_pb_latest
    personal_best - latest
  end

  def number_of_top_scores
    scores.length >= 3 ? 3 : scores.length
  end

  def report_latest
    "Your latest score was #{latest}."
  end

end
