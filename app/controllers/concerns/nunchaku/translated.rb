module Nunchaku::Translated

  extend ActiveSupport::Concern

  protected

  def sort_params
    {}
  end

  def distinct_params
    { :distinct => false }
  end

  # Process sort params from sorted gem
  def sort_column sort_params
    term = sort_params.to_s.downcase.split('!').first
    bits = term.to_s.split('_')
    term = bits[0..-2].join('_') if bits.last.in? ['asc','desc']
    term
  end

  def order_term sort_params
    term = sort_params.to_s.downcase.split('!').first
    term = term.to_s.split('_').last
    term if term.in? ['asc','desc']
  end

  def search_terms
    params[:term].blank? ? [] : params[:term].split(' ').map{ |t| t.hanize }.reject{ |t| t.size < 3 }
  end

end