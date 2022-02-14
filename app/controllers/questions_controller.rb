class QuestionsController < ApplicationController
  def ask
    # raise
  end

  def answer
    @question = params[:question]
    @question[-1] == '?' ? @answer = 'Silly question, get dressed and go to work!' : @answer = "I don't care, get dressed and go to work!"
    @answer = 'Great!' if @question == 'I am going to work'
  end
end

# If you don’t remember about the coach (poor) logic, here it is:

# If the message is I am going to work, the coach will answer Great!
# If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
# Otherwise the coach will answer I don't care, get dressed and go to work!
