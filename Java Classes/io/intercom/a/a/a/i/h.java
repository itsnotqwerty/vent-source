package io.intercom.a.a.a.i;

import android.text.TextUtils;
import java.util.Collection;

public final class h
{
  public static void b(boolean paramBoolean, String paramString)
  {
    if (!paramBoolean) {
      throw new IllegalArgumentException(paramString);
    }
  }
  
  public static <T> T checkNotNull(T paramT, String paramString)
  {
    if (paramT == null) {
      throw new NullPointerException(paramString);
    }
    return paramT;
  }
  
  public static String fc(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("Must not be null or empty");
    }
    return paramString;
  }
  
  public static <T extends Collection<Y>, Y> T h(T paramT)
  {
    if (paramT.isEmpty()) {
      throw new IllegalArgumentException("Must not be empty.");
    }
    return paramT;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/i/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */