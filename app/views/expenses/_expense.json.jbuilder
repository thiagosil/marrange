json.extract! expense, :id, :name, :estimated, :spent, :paid, :created_at, :updated_at
json.url expense_url(expense, format: :json)
