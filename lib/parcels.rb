class Parcel
  define_method(:initialize) do |length, width, height, weight|
    @details = {
      "length" => length.to_f,
      "width" => width.to_f,
      "height" => height.to_f,
      "weight" => weight.to_f
    }
  end
end
