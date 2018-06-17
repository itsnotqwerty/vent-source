package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.ads.c.a;
import com.google.android.gms.ads.c.a.a;
import com.google.android.gms.common.util.e;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Locale;

final class hl
  extends iy
{
  static final Pair<String, Long> aTE = new Pair("", Long.valueOf(0L));
  private SharedPreferences aTF;
  public ho aTG;
  public final hn aTH = new hn(this, "last_upload", 0L);
  public final hn aTI = new hn(this, "last_upload_attempt", 0L);
  public final hn aTJ = new hn(this, "backoff", 0L);
  public final hn aTK = new hn(this, "last_delete_stale", 0L);
  public final hn aTL = new hn(this, "midnight_offset", 0L);
  public final hn aTM = new hn(this, "first_open_time", 0L);
  public final hp aTN = new hp(this, "app_instance_id");
  private String aTO;
  private boolean aTP;
  private long aTQ;
  String aTR;
  long aTS;
  final Object aTT = new Object();
  public final hn aTU = new hn(this, "time_before_start", 10000L);
  public final hn aTV = new hn(this, "session_timeout", 1800000L);
  public final hm aTW = new hm(this, "start_new_session");
  public final hn aTX = new hn(this, "last_pause_time", 0L);
  public final hn aTY = new hn(this, "time_active", 0L);
  public boolean aTZ;
  
  hl(hz paramhz)
  {
    super(paramhz);
  }
  
  private final SharedPreferences rK()
  {
    mN();
    pf();
    return this.aTF;
  }
  
  final void aw(boolean paramBoolean)
  {
    mN();
    qP().aTi.j("Setting useService", Boolean.valueOf(paramBoolean));
    SharedPreferences.Editor localEditor = rK().edit();
    localEditor.putBoolean("use_service", paramBoolean);
    localEditor.apply();
  }
  
  final boolean ax(boolean paramBoolean)
  {
    mN();
    return rK().getBoolean("measurement_enabled", paramBoolean);
  }
  
  final Pair<String, Boolean> cm(String paramString)
  {
    mN();
    long l = qH().elapsedRealtime();
    if ((this.aTO != null) && (l < this.aTQ)) {
      return new Pair(this.aTO, Boolean.valueOf(this.aTP));
    }
    this.aTQ = (l + qR().a(paramString, gr.aSf));
    try
    {
      paramString = a.r(getContext());
      if (paramString != null)
      {
        this.aTO = paramString.azP;
        this.aTP = paramString.azQ;
      }
      if (this.aTO == null) {
        this.aTO = "";
      }
    }
    catch (Throwable paramString)
    {
      for (;;)
      {
        qP().aTh.j("Unable to get advertising id", paramString);
        this.aTO = "";
      }
    }
    return new Pair(this.aTO, Boolean.valueOf(this.aTP));
  }
  
  final String cn(String paramString)
  {
    mN();
    paramString = (String)cm(paramString).first;
    MessageDigest localMessageDigest = le.bi("MD5");
    if (localMessageDigest == null) {
      return null;
    }
    return String.format(Locale.US, "%032X", new Object[] { new BigInteger(1, localMessageDigest.digest(paramString.getBytes())) });
  }
  
  final void co(String paramString)
  {
    mN();
    SharedPreferences.Editor localEditor = rK().edit();
    localEditor.putString("gmp_app_id", paramString);
    localEditor.apply();
  }
  
  protected final void rC()
  {
    this.aTF = getContext().getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
    this.aTZ = this.aTF.getBoolean("has_been_opened", false);
    if (!this.aTZ)
    {
      SharedPreferences.Editor localEditor = this.aTF.edit();
      localEditor.putBoolean("has_been_opened", true);
      localEditor.apply();
    }
    this.aTG = new ho(this, "health_monitor", Math.max(0L, ((Long)gr.aSg.aSN).longValue()), (byte)0);
  }
  
  final String rL()
  {
    mN();
    return rK().getString("gmp_app_id", null);
  }
  
  final String rM()
  {
    synchronized (this.aTT)
    {
      if (Math.abs(qH().elapsedRealtime() - this.aTS) < 1000L)
      {
        String str = this.aTR;
        return str;
      }
      return null;
    }
  }
  
  final Boolean rN()
  {
    mN();
    if (!rK().contains("use_service")) {
      return null;
    }
    return Boolean.valueOf(rK().getBoolean("use_service", false));
  }
  
  final void rO()
  {
    boolean bool1 = true;
    mN();
    qP().aTi.bq("Clearing collection preferences.");
    boolean bool2 = rK().contains("measurement_enabled");
    if (bool2) {
      bool1 = ax(true);
    }
    SharedPreferences.Editor localEditor = rK().edit();
    localEditor.clear();
    localEditor.apply();
    if (bool2) {
      setMeasurementEnabled(bool1);
    }
  }
  
  protected final String rP()
  {
    mN();
    String str1 = rK().getString("previous_os_version", null);
    qE().pf();
    String str2 = Build.VERSION.RELEASE;
    if ((!TextUtils.isEmpty(str2)) && (!str2.equals(str1)))
    {
      SharedPreferences.Editor localEditor = rK().edit();
      localEditor.putString("previous_os_version", str2);
      localEditor.apply();
    }
    return str1;
  }
  
  protected final boolean ri()
  {
    return true;
  }
  
  final void setMeasurementEnabled(boolean paramBoolean)
  {
    mN();
    qP().aTi.j("Setting measurementEnabled", Boolean.valueOf(paramBoolean));
    SharedPreferences.Editor localEditor = rK().edit();
    localEditor.putBoolean("measurement_enabled", paramBoolean);
    localEditor.apply();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/hl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */