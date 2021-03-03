require 'rails_helper'

describe ApplicationController, 'exception_handling', type: :controller do
  it { should rescue_from(ActionController::RoutingError).with(:render_404) }
end
