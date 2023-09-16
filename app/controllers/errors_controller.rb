class ErrorsController < ApplicationController
  def not_found
    # You can render a custom error page here or handle the error as needed.
    # For example, you can render a 404 page:
    render 'errors/not_found', status: :not_found
  end
end
