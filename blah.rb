class ListNode
  @right
  @left


  def initialize(aWord)
    @aWord = aWord
  end

  def setNextListNode(nextListNode)
    @nextListNode.push(nextListNode)
  end


  def setRight(aWord)
    @right = ListNode.new(aWord)
  end

  def getRight
    @right
  end

  def setLeft(aWord)
    @left = ListNode.new(aWord)
  end

  def getLeft
    @left
  end

  def setName(objName)
    @objName = objName
  end

  def printName
    puts(@objName)
  end

  def printWord
    puts "#{@aWord}"
  end
end

def branchOut(curNode,myWordsAry)
  aWord = myWordsAry.pop
  if aWord != nil
    if /^[A-Ma-m]/ =~ aWord
      puts "RIGHT: #{aWord}"
      curNode.setRight(aWord)
      branchOut(curNode.getRight,myWordsAry)
    elsif /^[N-Zn-z]/ =~ aWord
      puts "LEFT: #{aWord}"
      curNode.setLeft(aWord)
      branchOut(curNode.getLeft,myWordsAry)
    else
      puts "ERROR"
      exit
    end
  end
end


###############################################################

someText = String.new(str="The quick brown fox jumped over the lazy dog.")
puts(someText);

txtAry = someText.split
rootNode = ListNode.new(txtAry.pop)
branchOut(rootNode,txtAry)
puts "ENDING WITH #{txtAry.size}"
