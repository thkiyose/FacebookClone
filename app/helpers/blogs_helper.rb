module BlogsHelper
  def confirm_or_not
    if action_name == "new" || action_name == "create" || action_name == "confirm"
      confirm_blogs_path
    end
  end
end
