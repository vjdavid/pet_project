class SetupFactories
  def initialize
    Rails.application.eager_load!
  end

  def get_models
    models = ActiveRecord::Base.descendants.map { |models| models.name.downcase.to_sym }
    models.shift(3)
    return models
  end

  def generate_seed(factories_names, times)
    factories_names.each { |name| FactoryGirl.create_list(name, times) }
  end
end

setup = SetupFactories.new
setup.generate_seed(setup.get_models, 5)
