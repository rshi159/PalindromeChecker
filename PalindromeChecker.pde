public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  int num = 0;
  String myString = "";
  for(int i = 0; i < word.length();i++)
  {
    if(Character.isLetter(word.charAt(i))==true)
    {
      myString+=word.substring(i,i+1);
    }
  }
    if(myString.toLowerCase().equals(reverse(myString).toLowerCase()))
      return true;
  else
    return false;
}
public String reverse(String str)
{
    String sNew = "";
    for(int i = str.length()-1;i>=0;i--)
    {
      sNew=sNew+str.substring(i,i+1);
    }
    return sNew.toLowerCase();
}