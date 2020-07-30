class BudgetsController < ApplicationController
  def show
    @categories = Category.all
  end
end