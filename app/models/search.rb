class Search < ActiveRecord::Base

  def self.search_shipments(term)
    where = []
    if term.try(:to_i) != 0
      term = term.to_i
    end

    if term.is_a? Integer
      where << PrepareSearch.number("o_zip", term)
      where << PrepareSearch.number("d_zip", term)
      where << PrepareSearch.number("o_phone", term)
      where << PrepareSearch.number("d_phone", term)
      where << PrepareSearch.number("o_cell", term)
      where << PrepareSearch.number("d_cell", term)
    else
      where << PrepareSearch.terms("reg_no", term)
      where << PrepareSearch.terms("gbl_no", term)
      where << PrepareSearch.terms("atlas_no", term)
      where << PrepareSearch.terms("o_name", term)
      where << PrepareSearch.terms("d_name", term)
      where << PrepareSearch.terms("o_city", term)
      where << PrepareSearch.terms("d_city", term)
      where << PrepareSearch.terms("o_state", term)
      where << PrepareSearch.terms("d_state", term)
    end


    where = where.join(" OR ")
    Shipment.where(where)
  end


end

class PrepareSearch
  def PrepareSearch.terms(col, term)
    "lower(#{col}) LIKE '%#{term.to_s.try(:downcase)}%'"
  end
  def PrepareSearch.number(col, term)
    "CAST(#{col} AS TEXT) LIKE '%#{term}%'"
  end
end