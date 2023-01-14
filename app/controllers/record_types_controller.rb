class RecordTypesController < ApplicationController
  def index
    @record_types = RecordType.all
  end
end
