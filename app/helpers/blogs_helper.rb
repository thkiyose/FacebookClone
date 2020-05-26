module BlogsHelper
  def confirm_or_not
    if action_name == "new"
      confirm_blogs_path
    end
  end
end
