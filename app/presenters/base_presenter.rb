class BasePresenter < SimpleDelegator
  attr_reader :model, :view
  def initialize(model:, view:)
    @view = view
    @model = model
    super(@model)
  end

  def h
    view
  end
end
