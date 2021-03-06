class CompileToCHeader
  
  attr_accessor :gettable
  attr_accessor :settable
  
  def self.rewrite(*args)
    self.new.rewrite(*args)
  end
  
  def rewrite(formulae, c_name_for_worksheet_name, output)
    self.gettable ||= lambda { |ref| true }
    self.settable ||= lambda { |ref| false }
    formulae.each do |ref, ast|
      begin
        static_or_not = (gettable.call(ref) || settable.call(ref)) ? "" : "static "
        worksheet = c_name_for_worksheet_name[ref.first.to_s] || ref.first.to_s
        ref = ref.last.downcase
        name =  worksheet.length > 0 ? "#{worksheet}_#{ref}" : ref
        output.puts "#{static_or_not}ExcelValue #{name}();"
      rescue Exception => e
        puts "Exception at  #{ref} #{ast}"
        raise
      end      
    end
  end  
end
