package android.support.v4.g;

import android.os.Build.VERSION;
import java.util.Objects;

public final class i
{
  public static boolean equals(Object paramObject1, Object paramObject2)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      return Objects.equals(paramObject1, paramObject2);
    }
    return (paramObject1 == paramObject2) || ((paramObject1 != null) && (paramObject1.equals(paramObject2)));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/g/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */