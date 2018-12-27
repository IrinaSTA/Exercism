class HighScores

  def initialize(scores)
    @scores = scores
  end

  def scores
    @scores
  end

  def latest
    scores[-1]
  end

  def personal_best
    scores.max
  end

  def personal_top
    sorted_scores = scores.sort
    personal_top = []
    n = -1
    number_of_top_scores.times do
      personal_top << sorted_scores[n]
      n -= 1
    end
    return personal_top
  end

  def report
    if new_personal_best
      return "Your latest score was #{latest}. That's your personal best!"
    else
      return "Your latest score was #{latest}. That's #{diff_pb_latest} short of your personal best!"
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

end
