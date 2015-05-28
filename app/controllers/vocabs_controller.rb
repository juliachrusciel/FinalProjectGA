class VocabsController < ApplicationController

  def vocab
    @vocab = new_vocab

  end

  def create
    @vocab = Vocab.create(vocab_params)
    redirect_to "/"
  end

  def update
    @vocab = Vocab.find_by(params[:id])
    Vocab.update(vocab_params)
    redirect_to "/"
  end

  def destroy
    @vocab = Vocab.destroy(params[:id])
    redirect_to "/"
  end

  def vocab_params
    params.require(:vocab).permit( :TurkishWP, :EnglishWP, :part_of_speech, :formal, :slang)
  end

end
