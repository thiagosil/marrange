require 'rails_helper'

RSpec.describe "expenses/edit", type: :view do
  before(:each) do
    @expense = assign(:expense, Expense.create!(
      name: "MyString",
      estimated: 1.5,
      spent: 1.5,
      paid: 1.5
    ))
  end

  it "renders the edit expense form" do
    render

    assert_select "form[action=?][method=?]", expense_path(@expense), "post" do

      assert_select "input[name=?]", "expense[name]"

      assert_select "input[name=?]", "expense[estimated]"

      assert_select "input[name=?]", "expense[spent]"

      assert_select "input[name=?]", "expense[paid]"
    end
  end
end
