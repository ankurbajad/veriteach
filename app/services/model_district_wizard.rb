class ModelDistrictWizard
  attr_reader :object

  def initialize(object_or_class, session, params = nil, object_params = nil)
    @object_or_class, @session = object_or_class, session
    @params, @object_params = params, object_params
    @param_key = ActiveModel::Naming.param_key(object_or_class)
    @session_params = "#{@param_key}_params".to_sym
  end

  def start
    @session[@session_params] = {} if @session[@session_params].blank? 
    @object = load_object
    self
  end

  def continue
    @session[@session_params].deep_merge!(@object_params) if @object_params
    @object = load_object
    @object.assign_attributes(@session[@session_params]) unless class?
    self
  end

private

  def load_object
    class? ? @object_or_class.new(@session[@session_params]): @object_or_class
  end

  def class?
    @object_or_class.is_a?(Class)
  end
end