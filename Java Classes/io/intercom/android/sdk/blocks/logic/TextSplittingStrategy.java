package io.intercom.android.sdk.blocks.logic;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class TextSplittingStrategy
{
  private static final String NEW_LINE = "\n";
  private static final String NEW_LINE_REPLACEMENT = "<br>";
  private static final String NEW_PARAGRAPH_DELIMETER = "\n\n";
  
  public List<String> apply(String paramString)
  {
    paramString = paramString.split("\n\n");
    int i = 0;
    while (i < paramString.length)
    {
      paramString[i] = paramString[i].replace("\n", "<br>");
      i += 1;
    }
    paramString = new ArrayList(Arrays.asList(paramString));
    paramString.removeAll(Collections.singleton(""));
    return paramString;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/logic/TextSplittingStrategy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */