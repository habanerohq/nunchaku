class Nunchaku::ResourceFormBuilder < SimpleForm::FormBuilder
  def association(*args)
  	options = args.extract_options!

		super(args.first,
      {
        :as => :enhanced_select,
        :placeholder => "Select a #{object.class.model_name.human}",
        :label_method => :to_s,
        :required => true,
        :include_blank => false
      }.merge(options)
	  )
  end

  def actions
    template.render :partial => 'form_actions',
                    :locals => { :f => self }
  end

  def deletable?
    object.persisted?
  end

  def method_missing(method, *args, &block)
    if object.respond_to?(method)
      input method
    else
      super
    end
  end
end
