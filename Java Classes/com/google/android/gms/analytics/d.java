package com.google.android.gms.analytics;

import android.text.TextUtils;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.util.e;
import com.google.android.gms.internal.ba;
import com.google.android.gms.internal.bb;
import com.google.android.gms.internal.bd;
import com.google.android.gms.internal.cu;
import com.google.android.gms.internal.cw;
import com.google.android.gms.internal.di;
import com.google.android.gms.internal.dj;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;
import java.util.Set;

public final class d
  extends bb
{
  public boolean aAU;
  private final Map<String, String> aAV = new HashMap();
  private final Map<String, String> aAW = new HashMap();
  final cu aAX;
  final a aAY;
  
  d(bd parambd, String paramString)
  {
    super(parambd);
    if (paramString != null) {
      this.aAV.put("&tid", paramString);
    }
    this.aAV.put("useSecure", "1");
    this.aAV.put("&a", Integer.toString(new Random().nextInt(Integer.MAX_VALUE) + 1));
    this.aAX = new cu("tracking", this.aMq.aBm, (byte)0);
    this.aAY = new a(parambd);
  }
  
  private static String a(Map.Entry<String, String> paramEntry)
  {
    String str = (String)paramEntry.getKey();
    if ((!str.startsWith("&")) || (str.length() < 2)) {}
    for (int i = 0; i == 0; i = 1) {
      return null;
    }
    return ((String)paramEntry.getKey()).substring(1);
  }
  
  private static void a(Map<String, String> paramMap1, Map<String, String> paramMap2)
  {
    ae.E(paramMap2);
    if (paramMap1 == null) {}
    for (;;)
    {
      return;
      paramMap1 = paramMap1.entrySet().iterator();
      while (paramMap1.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap1.next();
        String str = a(localEntry);
        if (str != null) {
          paramMap2.put(str, (String)localEntry.getValue());
        }
      }
    }
  }
  
  private static void b(Map<String, String> paramMap1, Map<String, String> paramMap2)
  {
    ae.E(paramMap2);
    if (paramMap1 == null) {}
    for (;;)
    {
      return;
      paramMap1 = paramMap1.entrySet().iterator();
      while (paramMap1.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap1.next();
        String str = a(localEntry);
        if ((str != null) && (!paramMap2.containsKey(str))) {
          paramMap2.put(str, (String)localEntry.getValue());
        }
      }
    }
  }
  
  public final void h(Map<String, String> paramMap)
  {
    long l = this.aMq.aBm.currentTimeMillis();
    if (this.aMq.pj().aAO)
    {
      bx("AppOptOut is set to true. Not sending Google Analytics hit");
      return;
    }
    boolean bool1 = this.aMq.pj().aAN;
    HashMap localHashMap = new HashMap();
    a(this.aAV, localHashMap);
    a(paramMap, localHashMap);
    boolean bool2 = di.bL((String)this.aAV.get("useSecure"));
    b(this.aAW, localHashMap);
    this.aAW.clear();
    paramMap = (String)localHashMap.get("t");
    if (TextUtils.isEmpty(paramMap))
    {
      this.aMq.pg().a(localHashMap, "Missing hit type parameter");
      return;
    }
    String str = (String)localHashMap.get("tid");
    if (TextUtils.isEmpty(str))
    {
      this.aMq.pg().a(localHashMap, "Missing tracking id parameter");
      return;
    }
    boolean bool3 = this.aAU;
    try
    {
      if (("screenview".equalsIgnoreCase(paramMap)) || ("pageview".equalsIgnoreCase(paramMap)) || ("appview".equalsIgnoreCase(paramMap)) || (TextUtils.isEmpty(paramMap)))
      {
        int j = Integer.parseInt((String)this.aAV.get("&a")) + 1;
        int i = j;
        if (j >= Integer.MAX_VALUE) {
          i = 1;
        }
        this.aAV.put("&a", Integer.toString(i));
      }
      this.aMq.ph().h(new r(this, localHashMap, bool3, paramMap, l, bool1, bool2, str));
      return;
    }
    finally {}
  }
  
  protected final void mG()
  {
    this.aAY.initialize();
    String str = this.aMq.pk().qr();
    if (str != null) {
      set("&an", str);
    }
    str = this.aMq.pk().qq();
    if (str != null) {
      set("&av", str);
    }
  }
  
  public final void set(String paramString1, String paramString2)
  {
    ae.g(paramString1, "Key should be non-null");
    if (TextUtils.isEmpty(paramString1)) {
      return;
    }
    this.aAV.put(paramString1, paramString2);
  }
  
  final class a
    extends bb
  {
    private long aAZ = -1L;
    private boolean aBa;
    
    protected a(bd parambd)
    {
      super();
    }
    
    protected final void mG() {}
    
    public final boolean mH()
    {
      try
      {
        boolean bool = this.aBa;
        this.aBa = false;
        return bool;
      }
      finally
      {
        localObject = finally;
        throw ((Throwable)localObject);
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/analytics/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */