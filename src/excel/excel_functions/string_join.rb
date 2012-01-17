module ExcelFunctions
  
  def string_join(a,b)
    return a if a.is_a?(Symbol)
    return b if b.is_a?(Symbol)
    a ||= 0
    b ||= 0
    
    a.to_s + b.to_s
  end
  
end
