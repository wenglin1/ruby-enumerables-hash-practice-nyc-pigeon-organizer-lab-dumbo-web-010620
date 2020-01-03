def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |key,value|
    value.each do |category, name|
      name.each do |pigeon|
        if !pigeon_list[pigeon]
          pigeon_list[pigeon] = {}
        end
        if !pigeon_list[pigeon].has_key?(key)
          pigeon_list[pigeon][key] = []
          if value[category].include?(pigeon)
            pigeon_list[pigeon][key].push(category.to_s)
          end
        elsif pigeon_list[pigeon].has_key?(key) &&
          !pigeon_list[pigeon][key].include?(category.to_s)
          pigeon_list[pigeon][key].push(category.to_s)
        end
      end
    end
  end
pigeon_list
end
