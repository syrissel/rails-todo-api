require 'rails_helper'

RSpec.describe Todo, type: :model do
  # Ensure that todo has a one to many relationship with items.
  it { should have_many(:items).dependent(:destroy) }

  # It should validate the presence of title and created_by before saving to db.
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:created_by) }
end
