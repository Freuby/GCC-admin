module GestionHelper

  def paie_elefe(p)
    result = @eleves.where(user_id: p.user_id).first
    return result
  end

end
