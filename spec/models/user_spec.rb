# frozen_string_literal: true

require 'rails_helper'

describe User, 'column_specification', type: :model do
  it { should have_db_column(:first_name) }
  it { should have_db_column(:last_name) }
  it { should have_db_column(:email) }
  it { should have_db_column(:phone) }
  it { should have_db_column(:message) }
end
