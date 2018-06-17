package com.google.android.gms.common.stats;

import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.internal.dr;

public abstract class StatsEvent
  extends dr
  implements ReflectedParcelable
{
  public abstract int getEventType();
  
  public abstract long getTimeMillis();
  
  public abstract long ox();
  
  public abstract String oy();
  
  public String toString()
  {
    long l1 = getTimeMillis();
    int i = getEventType();
    long l2 = ox();
    String str = oy();
    return String.valueOf(str).length() + 53 + l1 + "\t" + i + "\t" + l2 + str;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/stats/StatsEvent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */