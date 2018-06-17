package com.google.android.gms.internal;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.google.android.gms.common.internal.ae;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.UUID;

public class cw
  extends bb
{
  private static cw aOW;
  
  public cw(bd parambd)
  {
    super(parambd);
  }
  
  private static String T(Object paramObject)
  {
    if (paramObject == null) {
      return null;
    }
    if ((paramObject instanceof Integer)) {
      paramObject = Long.valueOf(((Integer)paramObject).intValue());
    }
    for (;;)
    {
      if ((paramObject instanceof Long))
      {
        if (Math.abs(((Long)paramObject).longValue()) < 100L) {
          return String.valueOf(paramObject);
        }
        if (String.valueOf(paramObject).charAt(0) == '-') {}
        for (String str = "-";; str = "")
        {
          paramObject = String.valueOf(Math.abs(((Long)paramObject).longValue()));
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append(str);
          localStringBuilder.append(Math.round(Math.pow(10.0D, ((String)paramObject).length() - 1)));
          localStringBuilder.append("...");
          localStringBuilder.append(str);
          localStringBuilder.append(Math.round(Math.pow(10.0D, ((String)paramObject).length()) - 1.0D));
          return localStringBuilder.toString();
        }
      }
      if ((paramObject instanceof Boolean)) {
        return String.valueOf(paramObject);
      }
      if ((paramObject instanceof Throwable)) {
        return paramObject.getClass().getCanonicalName();
      }
      return "-";
    }
  }
  
  public static cw qc()
  {
    return aOW;
  }
  
  public final void a(cr paramcr, String paramString)
  {
    if (paramcr != null)
    {
      paramcr = paramcr.toString();
      paramString = String.valueOf(paramString);
      if (paramString.length() == 0) {
        break label41;
      }
    }
    label41:
    for (paramString = "Discarding hit. ".concat(paramString);; paramString = new String("Discarding hit. "))
    {
      g(paramString, paramcr);
      return;
      paramcr = "no hit data";
      break;
    }
  }
  
  public final void a(Map<String, String> paramMap, String paramString)
  {
    if (paramMap != null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap.next();
        if (localStringBuilder.length() > 0) {
          localStringBuilder.append(',');
        }
        localStringBuilder.append((String)localEntry.getKey());
        localStringBuilder.append('=');
        localStringBuilder.append((String)localEntry.getValue());
      }
      paramMap = localStringBuilder.toString();
      paramString = String.valueOf(paramString);
      if (paramString.length() == 0) {
        break label135;
      }
    }
    label135:
    for (paramString = "Discarding hit. ".concat(paramString);; paramString = new String("Discarding hit. "))
    {
      g(paramString, paramMap);
      return;
      paramMap = "no hit data";
      break;
    }
  }
  
  public final void b(int paramInt, String paramString, Object paramObject1, Object paramObject2, Object paramObject3)
  {
    char c1;
    label169:
    label194:
    label281:
    try
    {
      ae.E(paramString);
      if (paramInt >= 0) {
        break label393;
      }
      paramInt = 0;
    }
    finally {}
    if (this.aMq.aMu.pK())
    {
      c1 = 'C';
      char c2 = "01VDIWEA?".charAt(paramInt);
      String str = bc.VERSION;
      paramString = c(paramString, T(paramObject1), T(paramObject2), T(paramObject3));
      paramObject1 = String.valueOf(str).length() + 4 + String.valueOf(paramString).length() + "3" + c2 + c1 + str + ":" + paramString;
      paramString = (String)paramObject1;
      if (((String)paramObject1).length() > 1024) {
        paramString = ((String)paramObject1).substring(0, 1024);
      }
      paramObject1 = this.aMq;
      if (((bd)paramObject1).aMA == null) {
        break label405;
      }
      if (((bd)paramObject1).aMA.isInitialized()) {
        break label281;
      }
      break label405;
      if (paramObject1 != null)
      {
        paramObject1 = ((da)paramObject1).aPh;
        if (((db)paramObject1).qm() != 0L) {
          break label410;
        }
        ((db)paramObject1).ql();
        break label410;
      }
    }
    for (;;)
    {
      for (;;)
      {
        try
        {
          long l = ((db)paramObject1).aPj.aPe.getLong(((db)paramObject1).qo(), 0L);
          if (l <= 0L)
          {
            paramObject2 = ((db)paramObject1).aPj.aPe.edit();
            ((SharedPreferences.Editor)paramObject2).putString(((db)paramObject1).qp(), paramString);
            ((SharedPreferences.Editor)paramObject2).putLong(((db)paramObject1).qo(), 1L);
            ((SharedPreferences.Editor)paramObject2).apply();
            return;
            c1 = 'c';
            break;
            paramObject1 = ((bd)paramObject1).aMA;
            break label169;
          }
          if ((UUID.randomUUID().getLeastSignificantBits() & 0x7FFFFFFFFFFFFFFF) < Long.MAX_VALUE / (1L + l))
          {
            paramInt = 1;
            paramObject2 = ((db)paramObject1).aPj.aPe.edit();
            if (paramInt != 0) {
              ((SharedPreferences.Editor)paramObject2).putString(((db)paramObject1).qp(), paramString);
            }
            ((SharedPreferences.Editor)paramObject2).putLong(((db)paramObject1).qo(), l + 1L);
            ((SharedPreferences.Editor)paramObject2).apply();
            continue;
            paramString = finally;
          }
        }
        finally {}
        paramInt = 0;
      }
      label393:
      label405:
      label410:
      do
      {
        break label194;
        do
        {
          break;
        } while (paramInt < 9);
        paramInt = 8;
        break;
        paramObject1 = null;
        break label169;
      } while (paramString != null);
      paramString = "";
    }
  }
  
  protected final void mG()
  {
    try
    {
      aOW = this;
      return;
    }
    finally {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/cw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */