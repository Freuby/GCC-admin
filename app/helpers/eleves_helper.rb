module ElevesHelper

  def calendrier(jour)
    result = Array []
      case jour
        when "lundi"
          (@sept_courant..@aout_courant).select{|d| d.monday?}.each do |d|
            result << Date.new(d.year, d.month, d.day).strftime("%d/%m/%Y")
          end
        when "mardi"
          (@sept_courant..@aout_courant).select{|d| d.tuesday?}.each do |d|
            result << Date.new(d.year, d.month, d.day).strftime("%d/%m/%Y")
          end
        when "mercredi"
          (@sept_courant..@aout_courant).select{|d| d.wednesday?}.each do |d|
            result << Date.new(d.year, d.month, d.day).strftime("%d/%m/%Y")
          end
        when "jeudi"
          (@sept_courant..@aout_courant).select{|d| d.thursday?}.each do |d|
            result << Date.new(d.year, d.month, d.day).strftime("%d/%m/%Y")
          end
        when "vendredi"
          (@sept_courant..@aout_courant).select{|d| d.friday?}.each do |d|
            result << Date.new(d.year, d.month, d.day).strftime("%d/%m/%Y")
          end
        when "samedi"
          (@sept_courant..@aout_courant).select{|d| d.saturday?}.each do |d|
            result << Date.new(d.year, d.month, d.day).strftime("%d/%m/%Y")
          end
        when "dimanche"
          (@sept_courant..@aout_courant).select{|d| d.sunday?}.each do |d|
            result << Date.new(d.year, d.month, d.day).strftime("%d/%m/%Y")
          end
      end
    return result
  end

end
