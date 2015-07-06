
someText = String.new(str="The quick brown fox jumped over the lazy dog.")
puts(someText);
puts(someText.split[3])
myWords = someText.split;
puts(myWords[4])
puts myWords.size
myShuffle = myWords.shuffle
puts(myShuffle[4])



class ListNode
  def nextListNode(nextListNode)
    @nextListNode = nextListNode
  end

  def prevListNode(prevListNode)
    @prevListNode = prevListNode
  end

  def setName(objName)
    @objName = objName
  end

  def printName()
    puts(@objName)
  end
end

class LinkedList
  def initialize(wordAry)
    first = 1
    puts(wordAry.size)
    wordAry.each do |tempNode|
#      puts(tempNode)
      myTmp = ListNode.new
      myTmp.setName(tempNode)
      myTmp.printName
      if first == 1
        first = 0
        rootNode = myTmp
        prevNode = rootNode
      else
        myTmp = ListNode.new
        myTmp.setName(tempNode)
        prevNode.nextListNode(myTmp)
      end
    end
  end
end



class BinaryTree

  def initialize(wordAry)
  end

  def addNode
end




myList = LinkedList.new(myShuffle)
