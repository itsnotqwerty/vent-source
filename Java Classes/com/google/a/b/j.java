package com.google.a.b;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;

public final class j
{
  public static DateFormat az(int paramInt1, int paramInt2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    switch (paramInt1)
    {
    default: 
      throw new IllegalArgumentException("Unknown DateFormat style: " + paramInt1);
    case 3: 
      str = "M/d/yy";
    }
    for (;;)
    {
      localStringBuilder = localStringBuilder.append(str).append(" ");
      switch (paramInt2)
      {
      default: 
        throw new IllegalArgumentException("Unknown DateFormat style: " + paramInt2);
        str = "MMM d, yyyy";
        continue;
        str = "MMMM d, yyyy";
        continue;
        str = "EEEE, MMMM d, yyyy";
      }
    }
    String str = "h:mm a";
    for (;;)
    {
      return new SimpleDateFormat(str, Locale.US);
      str = "h:mm:ss a";
      continue;
      str = "h:mm:ss a z";
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/a/b/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */