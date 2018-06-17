package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.ae;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class cr
{
  final Map<String, String> aAV;
  final List<by> aOK;
  final long aOL;
  final long aOM;
  final int aON;
  final boolean aOO;
  private final String aOP;
  
  public cr(ba paramba, Map<String, String> paramMap, long paramLong, boolean paramBoolean)
  {
    this(paramba, paramMap, paramLong, paramBoolean, 0L, 0, null);
  }
  
  public cr(ba paramba, Map<String, String> paramMap, long paramLong1, boolean paramBoolean, long paramLong2, int paramInt)
  {
    this(paramba, paramMap, paramLong1, paramBoolean, paramLong2, paramInt, null);
  }
  
  public cr(ba paramba, Map<String, String> paramMap, long paramLong1, boolean paramBoolean, long paramLong2, int paramInt, List<by> paramList)
  {
    ae.E(paramba);
    ae.E(paramMap);
    this.aOM = paramLong1;
    this.aOO = paramBoolean;
    this.aOL = paramLong2;
    this.aON = paramInt;
    if (paramList != null) {}
    Object localObject2;
    for (Object localObject1 = paramList;; localObject1 = Collections.emptyList())
    {
      this.aOK = ((List)localObject1);
      this.aOP = q(paramList);
      paramList = new HashMap();
      localObject1 = paramMap.entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        if (S(((Map.Entry)localObject2).getKey()))
        {
          String str = a(paramba, ((Map.Entry)localObject2).getKey());
          if (str != null) {
            paramList.put(str, b(paramba, ((Map.Entry)localObject2).getValue()));
          }
        }
      }
    }
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      localObject1 = (Map.Entry)paramMap.next();
      if (!S(((Map.Entry)localObject1).getKey()))
      {
        localObject2 = a(paramba, ((Map.Entry)localObject1).getKey());
        if (localObject2 != null) {
          paramList.put(localObject2, b(paramba, ((Map.Entry)localObject1).getValue()));
        }
      }
    }
    if (!TextUtils.isEmpty(this.aOP))
    {
      di.c(paramList, "_v", this.aOP);
      if ((this.aOP.equals("ma4.0.0")) || (this.aOP.equals("ma4.0.1"))) {
        paramList.remove("adid");
      }
    }
    this.aAV = Collections.unmodifiableMap(paramList);
  }
  
  private static boolean S(Object paramObject)
  {
    if (paramObject == null) {
      return false;
    }
    return paramObject.toString().startsWith("&");
  }
  
  private static String a(ba paramba, Object paramObject)
  {
    if (paramObject == null) {
      paramba = null;
    }
    Object localObject;
    do
    {
      return paramba;
      localObject = paramObject.toString();
      paramObject = localObject;
      if (((String)localObject).startsWith("&")) {
        paramObject = ((String)localObject).substring(1);
      }
      int i = ((String)paramObject).length();
      localObject = paramObject;
      if (i > 256)
      {
        localObject = ((String)paramObject).substring(0, 256);
        paramba.c("Hit param name is too long and will be trimmed", Integer.valueOf(i), localObject);
      }
      paramba = (ba)localObject;
    } while (!TextUtils.isEmpty((CharSequence)localObject));
    return null;
  }
  
  private static String b(ba paramba, Object paramObject)
  {
    if (paramObject == null) {}
    for (paramObject = "";; paramObject = paramObject.toString())
    {
      int i = ((String)paramObject).length();
      Object localObject = paramObject;
      if (i > 8192)
      {
        localObject = ((String)paramObject).substring(0, 8192);
        paramba.c("Hit param value is too long and will be trimmed", Integer.valueOf(i), localObject);
      }
      return (String)localObject;
    }
  }
  
  private static String q(List<by> paramList)
  {
    by localby;
    if (paramList != null)
    {
      paramList = paramList.iterator();
      do
      {
        if (!paramList.hasNext()) {
          break;
        }
        localby = (by)paramList.next();
      } while (!"appendVersion".equals(localby.aBR));
    }
    for (paramList = localby.mValue;; paramList = null)
    {
      if (TextUtils.isEmpty(paramList)) {
        return null;
      }
      return paramList;
    }
  }
  
  final String r(String paramString1, String paramString2)
  {
    ae.bf(paramString1);
    if (!paramString1.startsWith("&")) {}
    for (boolean bool = true;; bool = false)
    {
      ae.b(bool, "Short param name required");
      paramString1 = (String)this.aAV.get(paramString1);
      if (paramString1 == null) {
        break;
      }
      return paramString1;
    }
    return paramString2;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("ht=").append(this.aOM);
    if (this.aOL != 0L) {
      localStringBuilder.append(", dbId=").append(this.aOL);
    }
    if (this.aON != 0) {
      localStringBuilder.append(", appUID=").append(this.aON);
    }
    ArrayList localArrayList = new ArrayList(this.aAV.keySet());
    Collections.sort(localArrayList);
    localArrayList = (ArrayList)localArrayList;
    int j = localArrayList.size();
    int i = 0;
    while (i < j)
    {
      Object localObject = localArrayList.get(i);
      i += 1;
      localObject = (String)localObject;
      localStringBuilder.append(", ");
      localStringBuilder.append((String)localObject);
      localStringBuilder.append("=");
      localStringBuilder.append((String)this.aAV.get(localObject));
    }
    return localStringBuilder.toString();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/cr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */