require 'rails_helper'

RSpec.describe "expenses/new", type: :view do
  before(:each) do
    assign(:expense, Expense.new(
      name: "MyString",
      estimated: 1.5,
      spent: 1.5,
      paid: 1.5
    ))
  end

  it "renders new expense form" do
    render

    assert_select "form[action=?][method=?]", expenses_path, "post" do

      assert_select "input[name=?]", "expense[name]"

      assert_select "input[name=?]", "expense[estimated]"

      assert_select "input[name=?]", "expense[spent]"

      assert_select "input[name=?]", "expense[paid]"
    end
  end
end
