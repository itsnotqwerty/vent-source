package com.google.android.gms.internal;

import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.util.e;
import com.google.android.gms.measurement.AppMeasurement;

public final class hb
  extends iy
{
  long aQI = -1L;
  char aSY = '\000';
  private String aSZ;
  public final hd aTa = new hd(this, 6, false, false);
  final hd aTb = new hd(this, 6, true, false);
  private final hd aTc = new hd(this, 6, false, true);
  public final hd aTd = new hd(this, 5, false, false);
  private final hd aTe = new hd(this, 5, true, false);
  public final hd aTf = new hd(this, 5, false, true);
  final hd aTg = new hd(this, 4, false, false);
  final hd aTh = new hd(this, 3, false, false);
  public final hd aTi = new hd(this, 2, false, false);
  
  hb(hz paramhz)
  {
    super(paramhz);
  }
  
  static String a(boolean paramBoolean, String paramString, Object paramObject1, Object paramObject2, Object paramObject3)
  {
    String str1 = paramString;
    if (paramString == null) {
      str1 = "";
    }
    String str2 = c(paramBoolean, paramObject1);
    paramObject2 = c(paramBoolean, paramObject2);
    paramObject3 = c(paramBoolean, paramObject3);
    StringBuilder localStringBuilder = new StringBuilder();
    paramString = "";
    if (!TextUtils.isEmpty(str1))
    {
      localStringBuilder.append(str1);
      paramString = ": ";
    }
    paramObject1 = paramString;
    if (!TextUtils.isEmpty(str2))
    {
      localStringBuilder.append(paramString);
      localStringBuilder.append(str2);
      paramObject1 = ", ";
    }
    paramString = (String)paramObject1;
    if (!TextUtils.isEmpty((CharSequence)paramObject2))
    {
      localStringBuilder.append((String)paramObject1);
      localStringBuilder.append((String)paramObject2);
      paramString = ", ";
    }
    if (!TextUtils.isEmpty((CharSequence)paramObject3))
    {
      localStringBuilder.append(paramString);
      localStringBuilder.append((String)paramObject3);
    }
    return localStringBuilder.toString();
  }
  
  private static String c(boolean paramBoolean, Object paramObject)
  {
    if (paramObject == null) {
      return "";
    }
    if ((paramObject instanceof Integer)) {
      paramObject = Long.valueOf(((Integer)paramObject).intValue());
    }
    for (;;)
    {
      String str1;
      if ((paramObject instanceof Long))
      {
        if (!paramBoolean) {
          return String.valueOf(paramObject);
        }
        if (Math.abs(((Long)paramObject).longValue()) < 100L) {
          return String.valueOf(paramObject);
        }
        if (String.valueOf(paramObject).charAt(0) == '-') {}
        for (str1 = "-";; str1 = "")
        {
          paramObject = String.valueOf(Math.abs(((Long)paramObject).longValue()));
          long l1 = Math.round(Math.pow(10.0D, ((String)paramObject).length() - 1));
          long l2 = Math.round(Math.pow(10.0D, ((String)paramObject).length()) - 1.0D);
          return String.valueOf(str1).length() + 43 + String.valueOf(str1).length() + str1 + l1 + "..." + str1 + l2;
        }
      }
      if ((paramObject instanceof Boolean)) {
        return String.valueOf(paramObject);
      }
      if ((paramObject instanceof Throwable))
      {
        Object localObject1 = (Throwable)paramObject;
        String str2;
        int j;
        int i;
        if (paramBoolean)
        {
          paramObject = localObject1.getClass().getName();
          paramObject = new StringBuilder((String)paramObject);
          str1 = cl(AppMeasurement.class.getCanonicalName());
          str2 = cl(hz.class.getCanonicalName());
          localObject1 = ((Throwable)localObject1).getStackTrace();
          j = localObject1.length;
          i = 0;
        }
        for (;;)
        {
          if (i < j)
          {
            Object localObject2 = localObject1[i];
            if (!((StackTraceElement)localObject2).isNativeMethod())
            {
              String str3 = ((StackTraceElement)localObject2).getClassName();
              if (str3 != null)
              {
                str3 = cl(str3);
                if ((str3.equals(str1)) || (str3.equals(str2)))
                {
                  ((StringBuilder)paramObject).append(": ");
                  ((StringBuilder)paramObject).append(localObject2);
                }
              }
            }
          }
          else
          {
            return ((StringBuilder)paramObject).toString();
            paramObject = ((Throwable)localObject1).toString();
            break;
          }
          i += 1;
        }
      }
      if ((paramObject instanceof he)) {
        return ((he)paramObject).aTr;
      }
      if (paramBoolean) {
        return "-";
      }
      return String.valueOf(paramObject);
    }
  }
  
  protected static Object ck(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return new he(paramString);
  }
  
  private static String cl(String paramString)
  {
    String str;
    if (TextUtils.isEmpty(paramString)) {
      str = "";
    }
    int i;
    do
    {
      return str;
      i = paramString.lastIndexOf('.');
      str = paramString;
    } while (i == -1);
    return paramString.substring(0, i);
  }
  
  private final String rI()
  {
    try
    {
      if (this.aSZ == null) {
        this.aSZ = ((String)gr.aSe.aSN);
      }
      String str = this.aSZ;
      return str;
    }
    finally {}
  }
  
  protected final void a(int paramInt, boolean paramBoolean1, boolean paramBoolean2, String paramString, Object paramObject1, Object paramObject2, Object paramObject3)
  {
    int i = 0;
    if ((!paramBoolean1) && (cQ(paramInt))) {
      c(paramInt, a(false, paramString, paramObject1, paramObject2, paramObject3));
    }
    hu localhu;
    if ((!paramBoolean2) && (paramInt >= 5))
    {
      ae.E(paramString);
      localhu = this.zzjev.aUQ;
      if (localhu == null) {
        c(6, "Scheduler not set. Not logging error/warn");
      }
    }
    else
    {
      return;
    }
    if (!localhu.isInitialized())
    {
      c(6, "Scheduler not initialized. Not logging error/warn");
      return;
    }
    if (paramInt < 0) {
      paramInt = i;
    }
    for (;;)
    {
      i = paramInt;
      if (paramInt >= 9) {
        i = 8;
      }
      localhu.i(new hc(this, i, paramString, paramObject1, paramObject2, paramObject3));
      return;
    }
  }
  
  protected final void c(int paramInt, String paramString)
  {
    Log.println(paramInt, rI(), paramString);
  }
  
  protected final boolean cQ(int paramInt)
  {
    return Log.isLoggable(rI(), paramInt);
  }
  
  public final String rJ()
  {
    Object localObject = qQ().aTG;
    ((ho)localObject).aUc.mN();
    ((ho)localObject).aUc.mN();
    long l = ((ho)localObject).qm();
    if (l == 0L)
    {
      ((ho)localObject).ql();
      l = 0L;
      if (l >= ((ho)localObject).aUh) {
        break label84;
      }
      localObject = null;
    }
    for (;;)
    {
      if ((localObject != null) && (localObject != hl.aTE)) {
        break label180;
      }
      return null;
      l = Math.abs(l - ((ho)localObject).aUc.qH().currentTimeMillis());
      break;
      label84:
      if (l > ((ho)localObject).aUh << 1)
      {
        ((ho)localObject).ql();
        localObject = null;
      }
      else
      {
        str = hl.a(((ho)localObject).aUc).getString(((ho)localObject).aUg, null);
        l = hl.a(((ho)localObject).aUc).getLong(((ho)localObject).aUf, 0L);
        ((ho)localObject).ql();
        if ((str == null) || (l <= 0L)) {
          localObject = hl.aTE;
        } else {
          localObject = new Pair(str, Long.valueOf(l));
        }
      }
    }
    label180:
    String str = String.valueOf(((Pair)localObject).second);
    localObject = (String)((Pair)localObject).first;
    return String.valueOf(str).length() + 1 + String.valueOf(localObject).length() + str + ":" + (String)localObject;
  }
  
  protected final boolean ri()
  {
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/hb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */