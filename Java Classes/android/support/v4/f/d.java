package android.support.v4.f;

import android.os.Build.VERSION;
import android.text.TextUtils;
import java.util.Locale;

public final class d
{
  private static final Locale ROOT = new Locale("", "");
  
  public static int getLayoutDirectionFromLocale(Locale paramLocale)
  {
    int j = 1;
    int i;
    if (Build.VERSION.SDK_INT >= 17) {
      i = TextUtils.getLayoutDirectionFromLocale(paramLocale);
    }
    String str;
    do
    {
      do
      {
        return i;
        if ((paramLocale == null) || (paramLocale.equals(ROOT))) {
          break;
        }
        str = a.a(paramLocale);
        if (str == null)
        {
          i = j;
          switch (Character.getDirectionality(paramLocale.getDisplayName(paramLocale).charAt(0)))
          {
          }
          return 0;
        }
        i = j;
      } while (str.equalsIgnoreCase("Arab"));
      i = j;
    } while (str.equalsIgnoreCase("Hebr"));
    return 0;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/f/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */