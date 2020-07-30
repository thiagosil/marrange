require 'rails_helper'

RSpec.describe "expenses/show", type: :view do
  before(:each) do
    @expense = assign(:expense, Expense.create!(
      name: "Name",
      estimated: 2.5,
      spent: 3.5,
      paid: 4.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/4.5/)
  end
end
