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
   String halp= new String ("");
   for (int i=0; i<word.length(); i++)
   {
    if (Character.isLetter(word.charAt(i)))
    {
      halp= halp + word.substring(i,i+1);

    }
   }
   //halp.toLowerCase();
  if (halp.toLowerCase().equals(reverse(halp.toLowerCase())))
    return true;
 else
    return false;


}
public String reverse(String noSpaces)
{
    String sNew = new String("");
   
    for (int i=noSpaces.length()-1; i>=0; i--)
    {
      sNew=sNew + noSpaces.substring(i,i+1);
  }
 return sNew;
  }





