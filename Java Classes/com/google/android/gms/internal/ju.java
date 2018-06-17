package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.internal.al;
import com.google.android.gms.common.internal.an;
import com.google.android.gms.common.internal.ao;
import com.google.android.gms.common.m;
import com.google.android.gms.common.stats.a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

public final class ju
  extends iy
{
  gt aWA;
  volatile Boolean aWB;
  private final gh aWC;
  private final ky aWD;
  private final List<Runnable> aWE = new ArrayList();
  private final gh aWF;
  final ki aWz;
  
  protected ju(hz paramhz)
  {
    super(paramhz);
    this.aWD = new ky(paramhz.aLd);
    this.aWz = new ki(this);
    this.aWC = new jv(this, paramhz);
    this.aWF = new ka(this, paramhz);
  }
  
  private final fx az(boolean paramBoolean)
  {
    gw localgw = qD();
    if (paramBoolean) {}
    for (String str = qP().rJ();; str = null) {
      return localgw.cg(str);
    }
  }
  
  private final void k(Runnable paramRunnable)
    throws IllegalStateException
  {
    mN();
    if (isConnected())
    {
      paramRunnable.run();
      return;
    }
    if (this.aWE.size() >= 1000L)
    {
      qP().aTa.bq("Discarding data. Max runnable queue size reached");
      return;
    }
    this.aWE.add(paramRunnable);
    this.aWF.n(60000L);
    py();
  }
  
  protected final void a(gt paramgt)
  {
    mN();
    ae.E(paramgt);
    this.aWA = paramgt;
    po();
    sn();
  }
  
  final void a(gt paramgt, dr paramdr, fx paramfx)
  {
    mN();
    pf();
    int j = 0;
    int i = 100;
    ArrayList localArrayList;
    Object localObject;
    if ((j < 1001) && (i == 100))
    {
      localArrayList = new ArrayList();
      localObject = qI().rG();
      if (localObject == null) {
        break label289;
      }
      localArrayList.addAll((Collection)localObject);
    }
    label289:
    for (i = ((List)localObject).size();; i = 0)
    {
      if ((paramdr != null) && (i < 100)) {
        localArrayList.add(paramdr);
      }
      localArrayList = (ArrayList)localArrayList;
      int m = localArrayList.size();
      int k = 0;
      while (k < m)
      {
        localObject = localArrayList.get(k);
        k += 1;
        localObject = (dr)localObject;
        if ((localObject instanceof gp)) {
          try
          {
            paramgt.a((gp)localObject, paramfx);
          }
          catch (RemoteException localRemoteException1)
          {
            qP().aTa.j("Failed to send event to the service", localRemoteException1);
          }
        } else if ((localRemoteException1 instanceof lb)) {
          try
          {
            paramgt.a((lb)localRemoteException1, paramfx);
          }
          catch (RemoteException localRemoteException2)
          {
            qP().aTa.j("Failed to send attribute to the service", localRemoteException2);
          }
        } else if ((localRemoteException2 instanceof ga)) {
          try
          {
            paramgt.a((ga)localRemoteException2, paramfx);
          }
          catch (RemoteException localRemoteException3)
          {
            qP().aTa.j("Failed to send conditional property to the service", localRemoteException3);
          }
        } else {
          qP().aTa.bq("Discarding data. Unrecognized parcel type.");
        }
      }
      j += 1;
      break;
      return;
    }
  }
  
  protected final void a(jp paramjp)
  {
    mN();
    pf();
    k(new jz(this, paramjp));
  }
  
  protected final void a(lb paramlb)
  {
    boolean bool2 = false;
    mN();
    pf();
    gx localgx = qI();
    Parcel localParcel = Parcel.obtain();
    paramlb.writeToParcel(localParcel, 0);
    byte[] arrayOfByte = localParcel.marshall();
    localParcel.recycle();
    if (arrayOfByte.length > 131072) {
      localgx.qP().aTd.bq("User property too long for local database. Sending directly to service");
    }
    for (boolean bool1 = false;; bool1 = localgx.a(1, arrayOfByte))
    {
      if (bool1) {
        bool2 = true;
      }
      k(new kg(this, bool2, paramlb, az(true)));
      return;
    }
  }
  
  protected final void a(AtomicReference<List<ga>> paramAtomicReference, String paramString1, String paramString2, String paramString3)
  {
    mN();
    pf();
    k(new ke(this, paramAtomicReference, paramString1, paramString2, paramString3, az(false)));
  }
  
  protected final void a(AtomicReference<List<lb>> paramAtomicReference, String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    mN();
    pf();
    k(new kf(this, paramAtomicReference, paramString1, paramString2, paramString3, paramBoolean, az(false)));
  }
  
  protected final void a(AtomicReference<List<lb>> paramAtomicReference, boolean paramBoolean)
  {
    mN();
    pf();
    k(new kh(this, paramAtomicReference, az(false), paramBoolean));
  }
  
  public final void b(AtomicReference<String> paramAtomicReference)
  {
    mN();
    pf();
    k(new jx(this, paramAtomicReference, az(false)));
  }
  
  protected final void c(gp paramgp, String paramString)
  {
    boolean bool2 = false;
    ae.E(paramgp);
    mN();
    pf();
    gx localgx = qI();
    Parcel localParcel = Parcel.obtain();
    paramgp.writeToParcel(localParcel, 0);
    byte[] arrayOfByte = localParcel.marshall();
    localParcel.recycle();
    if (arrayOfByte.length > 131072) {
      localgx.qP().aTd.bq("Event is too long for local database. Sending event directly to service");
    }
    for (boolean bool1 = false;; bool1 = localgx.a(0, arrayOfByte))
    {
      if (bool1) {
        bool2 = true;
      }
      k(new kc(this, bool2, paramgp, az(true), paramString));
      return;
    }
  }
  
  public final void disconnect()
  {
    mN();
    pf();
    try
    {
      a.oz();
      getContext().unbindService(this.aWz);
      this.aWA = null;
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      for (;;) {}
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      for (;;) {}
    }
  }
  
  protected final void e(ga paramga)
  {
    boolean bool2 = false;
    ae.E(paramga);
    mN();
    pf();
    gx localgx = qI();
    localgx.qL();
    byte[] arrayOfByte = le.a(paramga);
    if (arrayOfByte.length > 131072) {
      localgx.qP().aTd.bq("Conditional user property too long for local database. Sending directly to service");
    }
    for (boolean bool1 = false;; bool1 = localgx.a(2, arrayOfByte))
    {
      if (bool1) {
        bool2 = true;
      }
      k(new kd(this, bool2, new ga(paramga), az(true), paramga));
      return;
    }
  }
  
  public final boolean isConnected()
  {
    mN();
    pf();
    return this.aWA != null;
  }
  
  final void po()
  {
    mN();
    this.aWD.start();
    this.aWC.n(((Long)gr.aSK.aSN).longValue());
  }
  
  final void py()
  {
    int j = 1;
    mN();
    pf();
    if (isConnected()) {
      return;
    }
    boolean bool2;
    if (this.aWB == null)
    {
      mN();
      pf();
      localObject = qQ().rN();
      if ((localObject != null) && (((Boolean)localObject).booleanValue()))
      {
        bool2 = true;
        this.aWB = Boolean.valueOf(bool2);
      }
    }
    else
    {
      if (!this.aWB.booleanValue()) {
        break label541;
      }
      localObject = this.aWz;
      ((ki)localObject).aWG.mN();
      Context localContext1 = ((ki)localObject).aWG.getContext();
      try
      {
        if (!((ki)localObject).aWN) {
          break label456;
        }
        ((ki)localObject).aWG.qP().aTi.bq("Connection attempt already in progress");
        return;
      }
      finally {}
    }
    boolean bool1;
    int i;
    if (qD().rF() == 1)
    {
      bool1 = true;
      i = 1;
    }
    for (;;)
    {
      bool2 = bool1;
      if (i == 0) {
        break;
      }
      qQ().aw(bool1);
      bool2 = bool1;
      break;
      qP().aTi.bq("Checking service availability");
      localObject = qL();
      i = m.oN().w(((ix)localObject).getContext());
      switch (i)
      {
      default: 
        qP().aTd.j("Unexpected service status", Integer.valueOf(i));
        bool1 = false;
        i = 0;
        break;
      case 0: 
        qP().aTi.bq("Service available");
        bool1 = true;
        i = 1;
        break;
      case 1: 
        qP().aTi.bq("Service missing");
        bool1 = false;
        i = 1;
        break;
      case 18: 
        qP().aTd.bq("Service updating");
        bool1 = true;
        i = 1;
        break;
      case 2: 
        qP().aTh.bq("Service container out of date");
        if (12211L < 11800L)
        {
          bool1 = false;
          i = 1;
        }
        else
        {
          localObject = qQ().rN();
          if ((localObject == null) || (((Boolean)localObject).booleanValue())) {}
          for (bool1 = true;; bool1 = false)
          {
            i = 0;
            break;
          }
        }
        break;
      case 3: 
        qP().aTd.bq("Service disabled");
        bool1 = false;
        i = 0;
        break;
      case 9: 
        qP().aTd.bq("Service invalid");
        bool1 = false;
        i = 0;
      }
    }
    label456:
    if (((ki)localObject).aWO != null)
    {
      ((ki)localObject).aWG.qP().aTi.bq("Already awaiting connection attempt");
      return;
    }
    ((ki)localObject).aWO = new ha(localContext2, Looper.getMainLooper(), (an)localObject, (ao)localObject);
    ((ki)localObject).aWG.qP().aTi.bq("Connecting to remote service");
    ((ki)localObject).aWN = true;
    ((ki)localObject).aWO.on();
    return;
    label541:
    Object localObject = getContext().getPackageManager().queryIntentServices(new Intent().setClassName(getContext(), "com.google.android.gms.measurement.AppMeasurementService"), 65536);
    if ((localObject != null) && (((List)localObject).size() > 0)) {
      i = j;
    }
    while (i != 0)
    {
      Intent localIntent1 = new Intent("com.google.android.gms.measurement.START");
      localIntent1.setComponent(new ComponentName(getContext(), "com.google.android.gms.measurement.AppMeasurementService"));
      localObject = this.aWz;
      ((ki)localObject).aWG.mN();
      Context localContext3 = ((ki)localObject).aWG.getContext();
      a.oz();
      try
      {
        if (!((ki)localObject).aWN) {
          break label699;
        }
        ((ki)localObject).aWG.qP().aTi.bq("Connection attempt already in progress");
        return;
      }
      finally {}
      i = 0;
      continue;
      label699:
      ((ki)localObject).aWG.qP().aTi.bq("Using local app measurement service");
      ((ki)localObject).aWN = true;
      a.b(localContext3, localIntent2, ((ki)localObject).aWG.aWz, 129);
      return;
    }
    qP().aTa.bq("Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest");
  }
  
  protected final void resetAnalyticsData()
  {
    mN();
    pf();
    fx localfx = az(false);
    localgx = qI();
    localgx.mN();
    try
    {
      int i = localgx.getWritableDatabase().delete("messages", null, null) + 0;
      if (i > 0) {
        localgx.qP().aTi.j("Reset local analytics data. records", Integer.valueOf(i));
      }
    }
    catch (SQLiteException localSQLiteException)
    {
      for (;;)
      {
        localgx.qP().aTa.j("Error resetting local analytics data. error", localSQLiteException);
      }
    }
    k(new jw(this, localfx));
  }
  
  protected final boolean ri()
  {
    return false;
  }
  
  protected final void sl()
  {
    mN();
    pf();
    k(new kb(this, az(true)));
  }
  
  protected final void sm()
  {
    mN();
    pf();
    k(new jy(this, az(true)));
  }
  
  final void sn()
  {
    mN();
    qP().aTi.j("Processing queued up service tasks", Integer.valueOf(this.aWE.size()));
    Iterator localIterator = this.aWE.iterator();
    while (localIterator.hasNext())
    {
      Runnable localRunnable = (Runnable)localIterator.next();
      try
      {
        localRunnable.run();
      }
      catch (Throwable localThrowable)
      {
        qP().aTa.j("Task exception while flushing queue", localThrowable);
      }
    }
    this.aWE.clear();
    this.aWF.cancel();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ju.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */