module ProjectsHelper
  def show_status_change(object)
    return nil if object.nil?
    object_lines = object.split("\n")
    status = object_lines.find { |line| line.start_with?("status:") }

    status if status.present?
  end
end
