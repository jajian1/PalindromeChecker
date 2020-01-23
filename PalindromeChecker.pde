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
  
  String heh = onlyLetters(word);
  String bruh = reverse(heh);
  if(heh.equalsIgnoreCase(bruh))
  {
    return true;
  }
  //your code here
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length()-1; i>=0; i--)
    {
      sNew = sNew + str.substring(i,i+1);
    }
    //your code here
    return sNew;
}
public String onlyLetters(String sString){
  String bruh = "";
  for(int i=0; i<sString.length(); i++)
  {
    if(Character.isLetter(sString.charAt(i))==true)
    {
      bruh=bruh + sString.substring(i,i+1);
    }
  }
  return bruh;
}





