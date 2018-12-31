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
    "Your latest score was #{latest}. #{offer_encouragement}"
  end

  private

  def offer_encouragement
    if new_personal_best?
      "That's your personal best!"
    else
      "That's #{pers_best_vs_latest} short of your personal best!"
    end
  end

  def new_personal_best?
    latest == personal_best
  end

  def pers_best_vs_latest
    personal_best - latest
  end

end
