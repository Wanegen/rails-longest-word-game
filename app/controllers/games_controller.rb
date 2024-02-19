class GamesController < ApplicationController
  def new
    @letters = (0..10).map { ('A'..'Z').to_a.sample }
  end

  def score
    myword = params[:new].upcase.chars
    letters = params[:letters].split

    if compare?(myword, letters)
      @result = "Well done !"
    else
      @result = "Sorry but this .... "
    end
  end

  def compare?(word, letters)
    word.all? { |letter| word.count(letter) <= letters.count(letter) }
    # Check si les lettres existent
    # Les lettres doivent être en nb suffisantes
  end
end
