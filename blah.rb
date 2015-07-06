#class LinkedList
#  def initialize(wordAry)
#    first = 1
#    puts(wordAry.size)
#    wordAry.each do |tempNode|
##      puts(tempNode)
#      myTmp = ListNode.new
#      myTmp.setName(tempNode)
#      myTmp.printName
#      if first == 1
#        first = 0
#        rootNode = myTmp
#        prevNode = rootNode
#      else
#        myTmp = ListNode.new
#        myTmp.setName(tempNode)
#        prevNode.nextListNode(myTmp)
#      end
#    end
#  end
#end



class ListNode
  def initialize(aWord)
    @aWord = aWord
    @nextListNode = Array.new
  end

  def setNextListNode(nextListNode)
    @nextListNode.push(nextListNode)
  end

#  def prevListNode(prevListNode)
#    @prevListNode = prevListNode
#  end
#
#  def getNextListNode
#    return @nextListNode
#  end

  def setName(objName)
    @objName = objName
  end

  def printName()
    puts(@objName)
  end
end


#def branchOut(curNode,myWords)
#  @first = myWords.pop
#if(@first == "jumped")
#  exit
#puts @first
#  @a=ListNode.new(@first)
#  @second = myWords.pop
#puts @second
#  @b=ListNode.new(@second)
#  curNode.setNextListNode(@a)
#  curNode.setNextListNode(@b)
#  branchOut(@a,myWords)
#exit
#  branchOut(@b,myWords)
#end




###############################################################

someText = String.new(str="The quick brown fox jumped over the lazy dog.")
puts(someText);
puts(someText.split[3])
myWords = someText.split;
puts(myWords[4])
puts myWords.size
myShuffle = myWords.shuffle
puts(myShuffle[4])



myWords = myShuffle.dup

rootNode = ListNode.new(myWords.pop)

branchOut(rootNode,myWords)
