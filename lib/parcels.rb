class Parcel
  define_method(:initialize) do |length, width, height, weight|
    @details = {
      "length" => length.to_f,
      "width" => width.to_f,
      "height" => height.to_f,
      "weight" => weight.to_f
    }
  end

  define_method(:volume) do
    @details["length"] * @details["width"] * @details["height"]
  end

  define_method(:cost_to_ship) do |speed, distance|
    (11 - speed) + (distance*0.1) + (@details["weight"] * 0.1)
  end
end
