package com.google.android.gms.analytics;

import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import android.util.LogPrinter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;

public final class i
  implements q
{
  private static final Uri aBj;
  private final LogPrinter aBk = new LogPrinter(4, "GA/LogCatTransport");
  
  static
  {
    Uri.Builder localBuilder = new Uri.Builder();
    localBuilder.scheme("uri");
    localBuilder.authority("local");
    aBj = localBuilder.build();
  }
  
  public final void b(k paramk)
  {
    ArrayList localArrayList = new ArrayList(paramk.aBu.values());
    Collections.sort(localArrayList, new j());
    paramk = new StringBuilder();
    localArrayList = (ArrayList)localArrayList;
    int k = localArrayList.size();
    int i = 0;
    while (i < k)
    {
      Object localObject = localArrayList.get(i);
      int j = i + 1;
      localObject = ((l)localObject).toString();
      i = j;
      if (!TextUtils.isEmpty((CharSequence)localObject))
      {
        if (paramk.length() != 0) {
          paramk.append(", ");
        }
        paramk.append((String)localObject);
        i = j;
      }
    }
    this.aBk.println(paramk.toString());
  }
  
  public final Uri mJ()
  {
    return aBj;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/analytics/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */