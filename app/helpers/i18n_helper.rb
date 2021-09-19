# frozen_string_literal: true

module I18nHelper
  # Returns an array of the possible key/i18n values for the enum
  # Example usage:
  # enum_options_for_select(User, :approval_state)
  def enum_options_for_select(class_name, enum)
    class_name.send(enum.to_s.pluralize).map do |key, _|
      [enum_i18n(class_name, enum, key), key]
    end
  end

  # Returns the i18n version the models current enum key
  # Example usage:
  # enum_l(user, :approval_state)
  def enum_l(model, enum)
    enum_i18n(model.class, enum, model.send(enum))
  end

  # Returns the i18n string for the enum key
  # Example usage:
  # enum_i18n(User, :approval_state, :unprocessed)
  def enum_i18n(class_name, enum, key)
    I18n.t("activerecord.enums.#{class_name.model_name.i18n_key}.#{enum.to_s.pluralize}.#{key}")
  end

  # Returns the i18n string for model attribute name
  # Example usage:
  # translate_attribute(User, :approval_state)
  def translate_attribute(class_name, attribute_name)
    I18n.t("activerecord.attributes.#{class_name.model_name.i18n_key}.#{attribute_name}")
  end

  # Returns the i18n string for model name
  # Example usage:
  # translate_model(User)
  def translate_model(class_name)
    I18n.t("activerecord.models.#{class_name.model_name.i18n_key}")
  end

  # Returns the i18n string for model message
  # Example usage:
  # translate_message(User, :approval_state)
  def translate_message(class_name, message_name)
    I18n.t("activerecord.messages.#{class_name.model_name.i18n_key}.#{message_name}")
  end
end
