class RecordTypesController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @record_types = RecordType.all
  end
end
