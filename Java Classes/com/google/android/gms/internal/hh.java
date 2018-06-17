package com.google.android.gms.internal;

import com.google.android.gms.common.internal.ae;
import java.util.List;
import java.util.Map;

final class hh
  implements Runnable
{
  private final hg aTs;
  private final Throwable aTt;
  private final byte[] aTu;
  private final Map<String, List<String>> aTv;
  private final String packageName;
  private final int status;
  
  private hh(String paramString, hg paramhg, int paramInt, Throwable paramThrowable, byte[] paramArrayOfByte, Map<String, List<String>> paramMap)
  {
    ae.E(paramhg);
    this.aTs = paramhg;
    this.status = paramInt;
    this.aTt = paramThrowable;
    this.aTu = paramArrayOfByte;
    this.packageName = paramString;
    this.aTv = paramMap;
  }
  
  public final void run()
  {
    this.aTs.a(this.packageName, this.status, this.aTt, this.aTu, this.aTv);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/hh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */