public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++)
  {
    if (palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    } else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String strA = new String ("");
  String strB = new String ("");
  for (int i = word.length()-1; i>=0; i--) {
    if (Character.isLetter(word.charAt(i))) {
      strB += word.charAt(i);
      strA += word.charAt(i);
    }
  }
 return (strB.equalsIgnoreCase(reverse(strA)));
}
public String reverse(String str)
{

  String reverseWord = "";
  for (int i = str.length() -1; i>= 0; i--) {
    reverseWord = reverseWord + str.charAt(i);
  }
  return reverseWord;
}

