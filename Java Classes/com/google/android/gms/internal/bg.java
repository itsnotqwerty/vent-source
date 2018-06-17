package com.google.android.gms.internal;

import com.google.android.gms.common.internal.ae;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class bg
{
  final Map<String, String> aAV;
  final String aLL;
  final long aMI;
  final String aMJ;
  final boolean aMK;
  long aML;
  
  public bg(String paramString1, String paramString2, boolean paramBoolean, long paramLong, Map<String, String> paramMap)
  {
    ae.bf(paramString1);
    ae.bf(paramString2);
    this.aMI = 0L;
    this.aLL = paramString1;
    this.aMJ = paramString2;
    this.aMK = paramBoolean;
    this.aML = paramLong;
    if (paramMap != null)
    {
      this.aAV = new HashMap(paramMap);
      return;
    }
    this.aAV = Collections.emptyMap();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/bg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */