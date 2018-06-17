package android.support.v4.d;

import android.os.Build.VERSION;
import android.os.Trace;

public final class d
{
  public static void beginSection(String paramString)
  {
    if (Build.VERSION.SDK_INT >= 18) {
      Trace.beginSection(paramString);
    }
  }
  
  public static void endSection()
  {
    if (Build.VERSION.SDK_INT >= 18) {
      Trace.endSection();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/d/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */