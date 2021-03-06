module Nunchaku::IconsHelper

  def icon(icon_type)
    content_tag(:i, nil, :class => "fa fa-#{icon_type.to_s.dasherize}")
  end

  def new_icon(klass=resource_class, *args)
    begin
      send "#{klass.underscore}_icon", *args
    rescue NameError
      plus_sign *args
    end
  end

  def activity_icon(resource, *args)
    resource_icon(resource.subject, *args)

    rescue NameError
      icon :flag, *args
  end

  def resource_icon(resource, *args)
    send "#{resource.class.name.underscore}_icon", *args
  end

  def search_icon(*args)
    icon :search, *args
  end

  def update_icon(*args)
    icon :save, *args
  end

  def comment_icon(*args)
    icon :comment_o, *args
  end

  def comments_icon(*args)
    icon :comments_o, *args
  end

  def user_icon(*args)
    icon :user, *args
  end

  def organization_icon(*args)
    icon :group, *args
  end

  def trash_icon(*args)
    icon :trash, *args
  end

  def plus_sign(*args)
    icon :plus, *args
  end

  def details_icon(*args)
    icon :th, *args
  end

  def edit_icon(*args)
    icon :edit, *args
  end

  def import_icon(*args)
    icon :download, *args
  end

  def export_icon(*args)
    icon :upload, *args
  end

  def print_icon(*args)
    icon :print, *args
  end

  def true_icon(*args)
    icon :check, *args
  end

  def false_icon(*args)
    icon :times, *args
  end

  def _icon(*args)
    icon :minus, *args
  end

  def back_icon(*args)
    icon :arrow_left, *args
  end

  def first_icon(*args)
    icon :fast_backward, *args
  end

  def previous_icon(*args)
    icon :step_backward, *args
  end

  def next_icon(*args)
    icon :step_forward, *args
  end

  def last_icon(*args)
    icon :fast_forward, *args
  end

  def select_icon(*args)
    icon :move, *args
  end

  def text_icon(*args)
    icon :font, *args
  end

  def erase_icon(*args)
    icon :undo, *args
  end

  def facebook_icon(*args)
    icon :facebook_square, *args
  end

  def twitter_icon(*args)
    icon :twitter, *args
  end

  def signin_icon(*args)
    icon :sign_in, *args
  end

  def chevron_right_icon(*args)
    icon :chevron_right, *args
  end
end