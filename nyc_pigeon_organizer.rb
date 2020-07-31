def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |attribs, value|
    value.each do |stats, pigeon_names|
      pigeon_names.each do |name|
        if new_hash[name] == nil
          new_hash[name] = {}
        end
        if new_hash[name][attribs] == nil
          new_hash[name][attribs] = []
        end
        new_hash[name][attribs].push(stats.to_s)
      end
    end
  end
  new_hash
end
