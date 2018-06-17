package com.google.android.gms.common.internal;

import java.util.ArrayList;
import java.util.List;

public final class ad
{
  private final List<String> aHM;
  private final Object aHN;
  
  private ad(Object paramObject)
  {
    this.aHN = ae.E(paramObject);
    this.aHM = new ArrayList();
  }
  
  public final ad b(String paramString, Object paramObject)
  {
    List localList = this.aHM;
    paramString = (String)ae.E(paramString);
    paramObject = String.valueOf(paramObject);
    localList.add(String.valueOf(paramString).length() + 1 + String.valueOf(paramObject).length() + paramString + "=" + (String)paramObject);
    return this;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(100).append(this.aHN.getClass().getSimpleName()).append('{');
    int j = this.aHM.size();
    int i = 0;
    while (i < j)
    {
      localStringBuilder.append((String)this.aHM.get(i));
      if (i < j - 1) {
        localStringBuilder.append(", ");
      }
      i += 1;
    }
    return '}';
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/internal/ad.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */