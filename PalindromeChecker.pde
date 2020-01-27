public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  String ab= new String();
  ab= noSpaces(word);
  ab= noCapitals(ab);
  if(reverse(ab).equals(ab))
  {
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    //your code here
    for(int i=str.length()-1; i>=0; i--){
      sNew=sNew + str.substring(i, i+1);
    }
    return sNew;
}
public String noSpaces(String wordOne)
{
  String yi="";
  for(int i=0; i<wordOne.length(); i++)
  {
    if(wordOne.charAt(i) !=' ')
    {
      yi=yi+wordOne.charAt(i);
    }
  }
  return yi;
}
public String noCapitals(String wordTwo)
{
  return wordTwo.toLowerCase();
}
  



