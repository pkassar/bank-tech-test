class Statement

  def header
    print "date || credit || debit || balance \n"
  end

  def display(entries,x)
    entries[0..x-1].each { |n| print n[:date].to_s + " || "  + n[:credit].to_s + " || "  + n[:debit].to_s + " || "  + n[:balance].to_s + "\n" }
  end
end
