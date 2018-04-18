module ApplicationHelper

  def log(*arg)
    if Rails.env.development?
      print('>>> ', *arg, "\n")
    #   需要添加类似 debug 可以直接显示在前端的方法
    end
  end

  # 根据所在的页面返回完整的标题
  def full_title(page_title = '')
    base_title = "Cryptape"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end


end
