class VocabsController < ApplicationController

  def vocab
    @vocab = new_vocab

  end

  def create
    vocab = Vocab.create(vocab_params)
    redirect_to "/vocab"
  end

  def show

  end

  def update

  end

  def destroy

  end

  def vocab_params
    params.require(vocab).permit( :TurkishWP, :EnglishWP, :part_of_speech, :formal, :slang)
  end

end
