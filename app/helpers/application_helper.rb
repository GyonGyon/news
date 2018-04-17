module ApplicationHelper
  def log(*arg)
    if Rails.env.development?
      print('>>>', *arg, "\n")
    #   需要添加类似 debug 可以直接显示在前端的方法
    end
  end
end
