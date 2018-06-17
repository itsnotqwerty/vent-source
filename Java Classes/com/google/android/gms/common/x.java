package com.google.android.gms.common;

import com.google.android.gms.common.util.a;
import com.google.android.gms.common.util.i;
import java.security.MessageDigest;

final class x
  extends w
{
  private final o aKa;
  private final boolean aKb;
  private final boolean aKc;
  private final String packageName;
  
  private x(String paramString, o paramo, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(false, null, null);
    this.packageName = paramString;
    this.aKa = paramo;
    this.aKb = paramBoolean1;
    this.aKc = paramBoolean2;
  }
  
  final String oQ()
  {
    if (this.aKc) {}
    for (String str1 = "debug cert rejected";; str1 = "not whitelisted")
    {
      String str2 = this.packageName;
      Object localObject = this.aKa;
      localObject = i.m(a.bi("SHA-1").digest(((o)localObject).getBytes()));
      boolean bool = this.aKb;
      return String.valueOf(str1).length() + 44 + String.valueOf(str2).length() + String.valueOf(localObject).length() + str1 + ": pkg=" + str2 + ", sha1=" + (String)localObject + ", atk=" + bool + ", ver=12211278.false";
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */