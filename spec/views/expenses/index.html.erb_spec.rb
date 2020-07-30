require 'rails_helper'

RSpec.describe "expenses/index", type: :view do
  before(:each) do
    assign(:expenses, [
      Expense.create!(
        name: "Name",
        estimated: 2.5,
        spent: 3.5,
        paid: 4.5
      ),
      Expense.create!(
        name: "Name",
        estimated: 2.5,
        spent: 3.5,
        paid: 4.5
      )
    ])
  end

  it "renders a list of expenses" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: 3.5.to_s, count: 2
    assert_select "tr>td", text: 4.5.to_s, count: 2
  end
end
