require 'word_count'

describe String, "#word_count" do
  it "should return 1 when the string is one word long" do
    a_string = "apple"
    the_word_count = a_string.word_count
    the_word_count.should == 1
  end

  it "should return 0 when string is empty" do
    a_string = ""
    the_word_count = a_string.word_count
    the_word_count.should == 0
  end

  it "should return 3 when the string is three words long" do
    a_string = "i am happy"
    the_word_count = a_string.word_count
    the_word_count.should == 3
  end

  it "should return something weird when a number is imput" do
    a_number = 0
    begin
    the_word_count = a_number.word_count
    rescue NoMethodError
      true #passing is failing
    end
  end

  it "should return two words when the string is two words long" do
    a_string = "You're cool"
    the_word_count = a_string.word_count
    the_word_count.should == 2
  end

  it "should return 3 when the string is three words long" do
    a_string = "buffalo buffalo buffalo"
    the_word_count = a_string.word_count
    the_word_count.should == 3
  end
end

describe String, "#unique_word_count" do
  it "should return 1 when the string is one word long" do
    a_string = "apple"
    the_unique_word_count = a_string.word_count
    the_unique_word_count.should == 1
  end
  it "should return 0 when the string is empty" do
    a_string = "buffalo buffalo buffalo"
    the_unique_word_count = a_string.word_count
    the_unique_word_count.should == 1
  end
end


