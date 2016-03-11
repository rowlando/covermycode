module Helpers

  def calculate_area_of_box_sides(width: 0, height: 0, depth: 0)
    return 0 if (width == 0) || (height == 0) || (depth == 0)

    top_and_bottom_area = width * depth * 2
    sides_width_area = width * height * 2
    sides_depth_area = depth * height * 2

    area = top_and_bottom_area + sides_depth_area + sides_width_area
    area.round(2)
  end

end