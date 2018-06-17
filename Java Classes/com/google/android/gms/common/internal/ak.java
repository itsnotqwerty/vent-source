package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.a.b;

public final class ak
{
  private final Resources aHS;
  private final String aHT;
  
  public ak(Context paramContext)
  {
    ae.E(paramContext);
    this.aHS = paramContext.getResources();
    this.aHT = this.aHS.getResourcePackageName(a.b.common_google_play_services_unknown_issue);
  }
  
  public final String getString(String paramString)
  {
    int i = this.aHS.getIdentifier(paramString, "string", this.aHT);
    if (i == 0) {
      return null;
    }
    return this.aHS.getString(i);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/internal/ak.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */