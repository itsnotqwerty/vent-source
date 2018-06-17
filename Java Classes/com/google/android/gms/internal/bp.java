package com.google.android.gms.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.database.sqlite.SQLiteException;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.analytics.CampaignTrackingReceiver;
import com.google.android.gms.analytics.k;
import com.google.android.gms.analytics.m;
import com.google.android.gms.analytics.n;
import com.google.android.gms.analytics.n.a;
import com.google.android.gms.analytics.o;
import com.google.android.gms.common.internal.ae;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class bp
  extends bb
{
  private final bm aNc;
  private final cy aNd;
  private final cx aNe;
  private final bh aNf;
  private long aNg;
  private final cg aNh;
  private final cg aNi;
  private final dh aNj;
  long aNk;
  private boolean aNl;
  private boolean uY;
  
  protected bp(bd parambd, bf parambf)
  {
    super(parambd);
    ae.E(parambf);
    this.aNg = Long.MIN_VALUE;
    this.aNe = new cx(parambd);
    this.aNc = new bm(parambd);
    this.aNd = new cy(parambd);
    this.aNf = new bh(parambd);
    this.aNj = new dh(this.aMq.aBm);
    this.aNh = new bq(this, parambd);
    this.aNi = new br(this, parambd);
  }
  
  private final void a(bg parambg, ai paramai)
  {
    ae.E(parambg);
    ae.E(paramai);
    Object localObject = new com.google.android.gms.analytics.e(this.aMq);
    ((com.google.android.gms.analytics.e)localObject).aY(parambg.aMJ);
    ((com.google.android.gms.analytics.e)localObject).aBe = parambg.aMK;
    k localk = ((m)localObject).mI();
    aq localaq = (aq)localk.i(aq.class);
    localaq.aLK = "data";
    localaq.aLQ = true;
    localk.a(paramai);
    al localal = (al)localk.i(al.class);
    ah localah = (ah)localk.i(ah.class);
    Iterator localIterator = parambg.aAV.entrySet().iterator();
    while (localIterator.hasNext())
    {
      localObject = (Map.Entry)localIterator.next();
      String str1 = (String)((Map.Entry)localObject).getKey();
      String str2 = (String)((Map.Entry)localObject).getValue();
      if ("an".equals(str1))
      {
        localah.aLn = str2;
      }
      else if ("av".equals(str1))
      {
        localah.aLo = str2;
      }
      else if ("aid".equals(str1))
      {
        localah.mAppId = str2;
      }
      else if ("aiid".equals(str1))
      {
        localah.aLp = str2;
      }
      else if ("uid".equals(str1))
      {
        localaq.aLM = str2;
      }
      else
      {
        ae.bf(str1);
        localObject = str1;
        if (str1 != null)
        {
          localObject = str1;
          if (str1.startsWith("&")) {
            localObject = str1.substring(1);
          }
        }
        ae.c((String)localObject, "Name can not be empty or \"&\"");
        localal.aAV.put(localObject, str2);
      }
    }
    b("Sending installation campaign to", parambg.aMJ, paramai);
    localk.aBp = pd().qg();
    parambg = localk.aBl.aBw;
    if (localk.aBt) {
      throw new IllegalStateException("Measurement prototype can't be submitted");
    }
    if (localk.aBn) {
      throw new IllegalStateException("Measurement can only be submitted once");
    }
    paramai = localk.mK();
    paramai.aBq = paramai.aBm.elapsedRealtime();
    if (paramai.aBp != 0L) {}
    for (paramai.aBo = paramai.aBp;; paramai.aBo = paramai.aBm.currentTimeMillis())
    {
      paramai.aBn = true;
      parambg.aBC.execute(new o(parambg, paramai));
      return;
    }
  }
  
  private final boolean bE(String paramString)
  {
    return ee.ag(this.aMq.mContext).checkCallingOrSelfPermission(paramString) == 0;
  }
  
  private final void pB()
  {
    cj localcj = pc();
    if (!localcj.aNJ) {}
    long l;
    do
    {
      do
      {
        return;
      } while (localcj.aNK);
      l = ps();
    } while ((l == 0L) || (Math.abs(this.aMq.aBm.currentTimeMillis() - l) > ((Long)cm.aOa.aOE).longValue()));
    d("Dispatch alarm scheduled (ms)", Long.valueOf(ce.pO()));
    localcj.pZ();
  }
  
  private final void pC()
  {
    if (this.aNh.pW()) {
      bw("All hits dispatched or no network/service. Going to power save mode");
    }
    this.aNh.cancel();
    cj localcj = pc();
    if (localcj.aNK) {
      localcj.cancel();
    }
  }
  
  private final long pD()
  {
    long l;
    if (this.aNg != Long.MIN_VALUE) {
      l = this.aNg;
    }
    do
    {
      return l;
      l = ((Long)cm.aNV.aOE).longValue();
      localdj = this.aMq.pk();
      localdj.pf();
    } while (!localdj.aPu);
    dj localdj = this.aMq.pk();
    localdj.pf();
    return localdj.aOI * 1000L;
  }
  
  private final void pE()
  {
    pf();
    n.mN();
    this.aNl = true;
    this.aNf.disconnect();
    pA();
  }
  
  private final long ps()
  {
    n.mN();
    pf();
    try
    {
      long l = this.aNc.ps();
      return l;
    }
    catch (SQLiteException localSQLiteException)
    {
      h("Failed to get min/max hit times from local store", localSQLiteException);
    }
    return 0L;
  }
  
  private final void py()
  {
    if (this.aNl) {}
    do
    {
      long l;
      do
      {
        do
        {
          return;
        } while ((!ce.pL()) || (this.aNf.isConnected()));
        l = ((Long)cm.aOB.aOE).longValue();
      } while (!this.aNj.o(l));
      this.aNj.start();
      bw("Connecting to service");
    } while (!this.aNf.connect());
    bw("Connected to service");
    this.aNj.Ie = 0L;
    onServiceConnected();
  }
  
  private final boolean pz()
  {
    int j = 1;
    n.mN();
    pf();
    bw("Dispatching a batch of local hits");
    int i;
    if (!this.aNf.isConnected())
    {
      i = 1;
      if (this.aNd.qe()) {
        break label60;
      }
    }
    for (;;)
    {
      if ((i == 0) || (j == 0)) {
        break label65;
      }
      bw("No network or service available. Will retry later");
      return false;
      i = 0;
      break;
      label60:
      j = 0;
    }
    label65:
    long l3 = Math.max(ce.pP(), ce.pQ());
    ArrayList localArrayList = new ArrayList();
    long l1 = 0L;
    try
    {
      for (;;)
      {
        this.aNc.beginTransaction();
        localArrayList.clear();
        try
        {
          localList = this.aNc.l(l3);
          if (localList.isEmpty())
          {
            bw("Store is empty, nothing to dispatch");
            pC();
            try
            {
              this.aNc.setTransactionSuccessful();
              this.aNc.endTransaction();
              return false;
            }
            catch (SQLiteException localSQLiteException1)
            {
              h("Failed to commit local dispatch transaction", localSQLiteException1);
              pC();
              return false;
            }
          }
          d("Hits loaded from store. count", Integer.valueOf(localList.size()));
          localObject2 = localList.iterator();
          for (;;)
          {
            if (((Iterator)localObject2).hasNext()) {
              if (((cr)((Iterator)localObject2).next()).aOL == l1)
              {
                d("Database contains successfully uploaded hit", Long.valueOf(l1), Integer.valueOf(localList.size()));
                pC();
                try
                {
                  this.aNc.setTransactionSuccessful();
                  this.aNc.endTransaction();
                  return false;
                }
                catch (SQLiteException localSQLiteException2)
                {
                  h("Failed to commit local dispatch transaction", localSQLiteException2);
                  pC();
                  return false;
                }
              }
            }
          }
        }
        catch (SQLiteException localSQLiteException3)
        {
          List localList;
          Object localObject2;
          g("Failed to read hits from persisted store", localSQLiteException3);
          pC();
          try
          {
            this.aNc.setTransactionSuccessful();
            this.aNc.endTransaction();
            return false;
          }
          catch (SQLiteException localSQLiteException4)
          {
            h("Failed to commit local dispatch transaction", localSQLiteException4);
            pC();
            return false;
          }
          long l2 = l1;
          if (this.aNf.isConnected())
          {
            bw("Service connected, sending hits to the service");
            for (;;)
            {
              l2 = l1;
              if (!localList.isEmpty())
              {
                localObject2 = (cr)localList.get(0);
                l2 = l1;
                if (this.aNf.b((cr)localObject2))
                {
                  l1 = Math.max(l1, ((cr)localObject2).aOL);
                  localList.remove(localObject2);
                  e("Hit sent do device AnalyticsService for delivery", localObject2);
                  try
                  {
                    this.aNc.m(((cr)localObject2).aOL);
                    localSQLiteException4.add(Long.valueOf(((cr)localObject2).aOL));
                  }
                  catch (SQLiteException localSQLiteException5)
                  {
                    h("Failed to remove hit that was send for delivery", localSQLiteException5);
                    pC();
                    try
                    {
                      this.aNc.setTransactionSuccessful();
                      this.aNc.endTransaction();
                      return false;
                    }
                    catch (SQLiteException localSQLiteException6)
                    {
                      h("Failed to commit local dispatch transaction", localSQLiteException6);
                      pC();
                      return false;
                    }
                  }
                }
              }
            }
          }
          l1 = l2;
          if (this.aNd.qe())
          {
            localList = this.aNd.r(localList);
            localObject2 = localList.iterator();
            for (l1 = l2; ((Iterator)localObject2).hasNext(); l1 = Math.max(l1, ((Long)((Iterator)localObject2).next()).longValue())) {}
          }
          try
          {
            this.aNc.p(localList);
            localSQLiteException6.addAll(localList);
            boolean bool = localSQLiteException6.isEmpty();
            if (bool) {
              try
              {
                this.aNc.setTransactionSuccessful();
                this.aNc.endTransaction();
                return false;
              }
              catch (SQLiteException localSQLiteException7)
              {
                h("Failed to commit local dispatch transaction", localSQLiteException7);
                pC();
                return false;
              }
            }
          }
          catch (SQLiteException localSQLiteException8)
          {
            h("Failed to remove successfully uploaded hits", localSQLiteException8);
            pC();
            try
            {
              this.aNc.setTransactionSuccessful();
              this.aNc.endTransaction();
              return false;
            }
            catch (SQLiteException localSQLiteException9)
            {
              h("Failed to commit local dispatch transaction", localSQLiteException9);
              pC();
              return false;
            }
            try
            {
              this.aNc.setTransactionSuccessful();
              this.aNc.endTransaction();
            }
            catch (SQLiteException localSQLiteException10)
            {
              h("Failed to commit local dispatch transaction", localSQLiteException10);
              pC();
              return false;
            }
          }
        }
      }
      return false;
    }
    finally
    {
      try
      {
        this.aNc.setTransactionSuccessful();
        this.aNc.endTransaction();
        throw ((Throwable)localObject1);
      }
      catch (SQLiteException localSQLiteException11)
      {
        h("Failed to commit local dispatch transaction", localSQLiteException11);
        pC();
      }
    }
  }
  
  public final void a(cr paramcr)
  {
    ae.E(paramcr);
    n.mN();
    pf();
    if (this.aNl) {
      bx("Hit delivery not possible. Missing network permissions. See http://goo.gl/8Rd3yj for instructions");
    }
    Object localObject2;
    while (!TextUtils.isEmpty(paramcr.r("_m", "")))
    {
      localObject2 = paramcr;
      py();
      if (!this.aNf.b((cr)localObject2)) {
        break label388;
      }
      bx("Hit sent to the device AnalyticsService for delivery");
      return;
      d("Delivering hit", paramcr);
    }
    Object localObject1 = pd().aPh;
    long l = ((db)localObject1).qm();
    if (l == 0L)
    {
      l = 0L;
      label103:
      if (l >= ((db)localObject1).aPi) {
        break label284;
      }
      localObject1 = null;
    }
    for (;;)
    {
      localObject2 = paramcr;
      if (localObject1 == null) {
        break;
      }
      localObject2 = (Long)((Pair)localObject1).second;
      localObject1 = (String)((Pair)localObject1).first;
      localObject2 = String.valueOf(localObject2);
      localObject1 = String.valueOf(localObject2).length() + 1 + String.valueOf(localObject1).length() + (String)localObject2 + ":" + (String)localObject1;
      localObject2 = new HashMap(paramcr.aAV);
      ((Map)localObject2).put("_m", localObject1);
      localObject2 = new cr(this, (Map)localObject2, paramcr.aOM, paramcr.aOO, paramcr.aOL, paramcr.aON, paramcr.aOK);
      break;
      l = Math.abs(l - ((db)localObject1).aPj.aMq.aBm.currentTimeMillis());
      break label103;
      label284:
      if (l > ((db)localObject1).aPi << 1)
      {
        ((db)localObject1).ql();
        localObject1 = null;
      }
      else
      {
        localObject2 = ((db)localObject1).aPj.aPe.getString(((db)localObject1).qp(), null);
        l = ((db)localObject1).aPj.aPe.getLong(((db)localObject1).qo(), 0L);
        ((db)localObject1).ql();
        if ((localObject2 == null) || (l <= 0L)) {
          localObject1 = null;
        } else {
          localObject1 = new Pair(localObject2, Long.valueOf(l));
        }
      }
    }
    try
    {
      label388:
      this.aNc.c((cr)localObject2);
      pA();
      return;
    }
    catch (SQLiteException paramcr)
    {
      h("Delivery failed to save hit to a database", paramcr);
      this.aMq.pg().a((cr)localObject2, "deliver: failed to insert hit to database");
    }
  }
  
  protected final void b(bg parambg)
  {
    n.mN();
    e("Sending first hit to property", parambg.aMJ);
    if (pd().qh().o(ce.pV())) {}
    do
    {
      return;
      localObject = pd().qk();
    } while (TextUtils.isEmpty((CharSequence)localObject));
    Object localObject = di.a(this.aMq.pg(), (String)localObject);
    e("Found relevant installation campaign", localObject);
    a(parambg, (ai)localObject);
  }
  
  public final void b(ck paramck)
  {
    long l2 = this.aNk;
    n.mN();
    pf();
    long l1 = -1L;
    long l3 = pd().qi();
    if (l3 != 0L) {
      l1 = Math.abs(this.aMq.aBm.currentTimeMillis() - l3);
    }
    e("Dispatching local hits. Elapsed time since last dispatch (ms)", Long.valueOf(l1));
    py();
    try
    {
      pz();
      pd().qj();
      pA();
      if (paramck != null) {
        paramck.pF();
      }
      if (this.aNk != l2)
      {
        Context localContext = this.aNe.aMq.mContext;
        Intent localIntent = new Intent("com.google.analytics.RADIO_POWERED");
        localIntent.addCategory(localContext.getPackageName());
        localIntent.putExtra(cx.aOX, true);
        localContext.sendOrderedBroadcast(localIntent, null);
      }
      return;
    }
    catch (Throwable localThrowable)
    {
      do
      {
        h("Local dispatch failed", localThrowable);
        pd().qj();
        pA();
      } while (paramck == null);
      paramck.pF();
    }
  }
  
  public final void bF(String paramString)
  {
    ae.bf(paramString);
    n.mN();
    ai localai = di.a(this.aMq.pg(), paramString);
    if (localai == null) {
      g("Parsing failed. Ignoring invalid campaign data", paramString);
    }
    for (;;)
    {
      return;
      String str = pd().qk();
      if (paramString.equals(str))
      {
        bz("Ignoring duplicate install campaign");
        return;
      }
      if (!TextUtils.isEmpty(str))
      {
        d("Ignoring multiple install campaigns. original, new", str, paramString);
        return;
      }
      pd().bI(paramString);
      if (pd().qh().o(ce.pV()))
      {
        g("Campaign received too late, ignoring", localai);
        return;
      }
      e("Received installation campaign", localai);
      paramString = this.aNc.pt().iterator();
      while (paramString.hasNext()) {
        a((bg)paramString.next(), localai);
      }
    }
  }
  
  /* Error */
  public final long c(bg parambg)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 34	com/google/android/gms/common/internal/ae:E	(Ljava/lang/Object;)Ljava/lang/Object;
    //   4: pop
    //   5: aload_0
    //   6: invokevirtual 435	com/google/android/gms/internal/bb:pf	()V
    //   9: invokestatic 450	com/google/android/gms/analytics/n:mN	()V
    //   12: aload_0
    //   13: getfield 48	com/google/android/gms/internal/bp:aNc	Lcom/google/android/gms/internal/bm;
    //   16: invokevirtual 516	com/google/android/gms/internal/bm:beginTransaction	()V
    //   19: aload_0
    //   20: getfield 48	com/google/android/gms/internal/bp:aNc	Lcom/google/android/gms/internal/bm;
    //   23: astore 5
    //   25: aload_1
    //   26: getfield 831	com/google/android/gms/internal/bg:aMI	J
    //   29: lstore_3
    //   30: aload_1
    //   31: getfield 834	com/google/android/gms/internal/bg:aLL	Ljava/lang/String;
    //   34: astore 6
    //   36: aload 6
    //   38: invokestatic 209	com/google/android/gms/common/internal/ae:bf	(Ljava/lang/String;)Ljava/lang/String;
    //   41: pop
    //   42: aload 5
    //   44: invokevirtual 435	com/google/android/gms/internal/bb:pf	()V
    //   47: invokestatic 450	com/google/android/gms/analytics/n:mN	()V
    //   50: aload 5
    //   52: invokevirtual 838	com/google/android/gms/internal/bm:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   55: ldc_w 840
    //   58: ldc_w 842
    //   61: iconst_2
    //   62: anewarray 173	java/lang/String
    //   65: dup
    //   66: iconst_0
    //   67: lload_3
    //   68: invokestatic 845	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   71: aastore
    //   72: dup
    //   73: iconst_1
    //   74: aload 6
    //   76: aastore
    //   77: invokevirtual 851	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   80: istore_2
    //   81: iload_2
    //   82: ifle +15 -> 97
    //   85: aload 5
    //   87: ldc_w 853
    //   90: iload_2
    //   91: invokestatic 550	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   94: invokevirtual 408	com/google/android/gms/internal/ba:d	(Ljava/lang/String;Ljava/lang/Object;)V
    //   97: aload_0
    //   98: getfield 48	com/google/android/gms/internal/bp:aNc	Lcom/google/android/gms/internal/bm;
    //   101: aload_1
    //   102: getfield 831	com/google/android/gms/internal/bg:aMI	J
    //   105: aload_1
    //   106: getfield 834	com/google/android/gms/internal/bg:aLL	Ljava/lang/String;
    //   109: aload_1
    //   110: getfield 101	com/google/android/gms/internal/bg:aMJ	Ljava/lang/String;
    //   113: invokevirtual 856	com/google/android/gms/internal/bm:a	(JLjava/lang/String;Ljava/lang/String;)J
    //   116: lstore_3
    //   117: aload_1
    //   118: lconst_1
    //   119: lload_3
    //   120: ladd
    //   121: putfield 859	com/google/android/gms/internal/bg:aML	J
    //   124: aload_0
    //   125: getfield 48	com/google/android/gms/internal/bp:aNc	Lcom/google/android/gms/internal/bm;
    //   128: astore 6
    //   130: aload_1
    //   131: invokestatic 34	com/google/android/gms/common/internal/ae:E	(Ljava/lang/Object;)Ljava/lang/Object;
    //   134: pop
    //   135: aload 6
    //   137: invokevirtual 435	com/google/android/gms/internal/bb:pf	()V
    //   140: invokestatic 450	com/google/android/gms/analytics/n:mN	()V
    //   143: aload 6
    //   145: invokevirtual 838	com/google/android/gms/internal/bm:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   148: astore 7
    //   150: aload_1
    //   151: getfield 144	com/google/android/gms/internal/bg:aAV	Ljava/util/Map;
    //   154: astore 8
    //   156: aload 8
    //   158: invokestatic 34	com/google/android/gms/common/internal/ae:E	(Ljava/lang/Object;)Ljava/lang/Object;
    //   161: pop
    //   162: new 861	android/net/Uri$Builder
    //   165: dup
    //   166: invokespecial 862	android/net/Uri$Builder:<init>	()V
    //   169: astore 5
    //   171: aload 8
    //   173: invokeinterface 150 1 0
    //   178: invokeinterface 156 1 0
    //   183: astore 8
    //   185: aload 8
    //   187: invokeinterface 162 1 0
    //   192: ifeq +64 -> 256
    //   195: aload 8
    //   197: invokeinterface 166 1 0
    //   202: checkcast 168	java/util/Map$Entry
    //   205: astore 9
    //   207: aload 5
    //   209: aload 9
    //   211: invokeinterface 171 1 0
    //   216: checkcast 173	java/lang/String
    //   219: aload 9
    //   221: invokeinterface 176 1 0
    //   226: checkcast 173	java/lang/String
    //   229: invokevirtual 866	android/net/Uri$Builder:appendQueryParameter	(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    //   232: pop
    //   233: goto -48 -> 185
    //   236: astore_1
    //   237: aload_0
    //   238: ldc_w 868
    //   241: aload_1
    //   242: invokevirtual 461	com/google/android/gms/internal/ba:h	(Ljava/lang/String;Ljava/lang/Object;)V
    //   245: aload_0
    //   246: getfield 48	com/google/android/gms/internal/bp:aNc	Lcom/google/android/gms/internal/bm;
    //   249: invokevirtual 538	com/google/android/gms/internal/bm:endTransaction	()V
    //   252: ldc2_w 762
    //   255: lreturn
    //   256: aload 5
    //   258: invokevirtual 872	android/net/Uri$Builder:build	()Landroid/net/Uri;
    //   261: invokevirtual 877	android/net/Uri:getEncodedQuery	()Ljava/lang/String;
    //   264: astore 5
    //   266: aload 5
    //   268: ifnonnull +145 -> 413
    //   271: ldc_w 614
    //   274: astore 5
    //   276: new 879	android/content/ContentValues
    //   279: dup
    //   280: invokespecial 880	android/content/ContentValues:<init>	()V
    //   283: astore 8
    //   285: aload 8
    //   287: ldc_w 882
    //   290: aload_1
    //   291: getfield 831	com/google/android/gms/internal/bg:aMI	J
    //   294: invokestatic 405	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   297: invokevirtual 885	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   300: aload 8
    //   302: ldc_w 887
    //   305: aload_1
    //   306: getfield 834	com/google/android/gms/internal/bg:aLL	Ljava/lang/String;
    //   309: invokevirtual 890	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   312: aload 8
    //   314: ldc_w 892
    //   317: aload_1
    //   318: getfield 101	com/google/android/gms/internal/bg:aMJ	Ljava/lang/String;
    //   321: invokevirtual 890	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   324: aload_1
    //   325: getfield 108	com/google/android/gms/internal/bg:aMK	Z
    //   328: ifeq +88 -> 416
    //   331: iconst_1
    //   332: istore_2
    //   333: aload 8
    //   335: ldc_w 894
    //   338: iload_2
    //   339: invokestatic 550	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   342: invokevirtual 897	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   345: aload 8
    //   347: ldc_w 899
    //   350: aload_1
    //   351: getfield 859	com/google/android/gms/internal/bg:aML	J
    //   354: invokestatic 405	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   357: invokevirtual 885	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   360: aload 8
    //   362: ldc_w 901
    //   365: aload 5
    //   367: invokevirtual 890	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   370: aload 7
    //   372: ldc_w 840
    //   375: aconst_null
    //   376: aload 8
    //   378: iconst_5
    //   379: invokevirtual 905	android/database/sqlite/SQLiteDatabase:insertWithOnConflict	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    //   382: ldc2_w 762
    //   385: lcmp
    //   386: ifne +11 -> 397
    //   389: aload 6
    //   391: ldc_w 907
    //   394: invokevirtual 910	com/google/android/gms/internal/ba:bA	(Ljava/lang/String;)V
    //   397: aload_0
    //   398: getfield 48	com/google/android/gms/internal/bp:aNc	Lcom/google/android/gms/internal/bm;
    //   401: invokevirtual 535	com/google/android/gms/internal/bm:setTransactionSuccessful	()V
    //   404: aload_0
    //   405: getfield 48	com/google/android/gms/internal/bp:aNc	Lcom/google/android/gms/internal/bm;
    //   408: invokevirtual 538	com/google/android/gms/internal/bm:endTransaction	()V
    //   411: lload_3
    //   412: lreturn
    //   413: goto -137 -> 276
    //   416: iconst_0
    //   417: istore_2
    //   418: goto -85 -> 333
    //   421: astore_1
    //   422: aload 6
    //   424: ldc_w 912
    //   427: aload_1
    //   428: invokevirtual 461	com/google/android/gms/internal/ba:h	(Ljava/lang/String;Ljava/lang/Object;)V
    //   431: goto -34 -> 397
    //   434: astore_1
    //   435: aload_0
    //   436: getfield 48	com/google/android/gms/internal/bp:aNc	Lcom/google/android/gms/internal/bm;
    //   439: invokevirtual 538	com/google/android/gms/internal/bm:endTransaction	()V
    //   442: aload_1
    //   443: athrow
    //   444: astore_1
    //   445: aload_0
    //   446: ldc_w 914
    //   449: aload_1
    //   450: invokevirtual 461	com/google/android/gms/internal/ba:h	(Ljava/lang/String;Ljava/lang/Object;)V
    //   453: goto -42 -> 411
    //   456: astore_1
    //   457: aload_0
    //   458: ldc_w 914
    //   461: aload_1
    //   462: invokevirtual 461	com/google/android/gms/internal/ba:h	(Ljava/lang/String;Ljava/lang/Object;)V
    //   465: goto -213 -> 252
    //   468: astore 5
    //   470: aload_0
    //   471: ldc_w 914
    //   474: aload 5
    //   476: invokevirtual 461	com/google/android/gms/internal/ba:h	(Ljava/lang/String;Ljava/lang/Object;)V
    //   479: goto -37 -> 442
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	482	0	this	bp
    //   0	482	1	parambg	bg
    //   80	338	2	i	int
    //   29	383	3	l	long
    //   23	343	5	localObject1	Object
    //   468	7	5	localSQLiteException	SQLiteException
    //   34	389	6	localObject2	Object
    //   148	223	7	localSQLiteDatabase	android.database.sqlite.SQLiteDatabase
    //   154	223	8	localObject3	Object
    //   205	15	9	localEntry	Map.Entry
    // Exception table:
    //   from	to	target	type
    //   12	81	236	android/database/sqlite/SQLiteException
    //   85	97	236	android/database/sqlite/SQLiteException
    //   97	185	236	android/database/sqlite/SQLiteException
    //   185	233	236	android/database/sqlite/SQLiteException
    //   256	266	236	android/database/sqlite/SQLiteException
    //   276	331	236	android/database/sqlite/SQLiteException
    //   333	370	236	android/database/sqlite/SQLiteException
    //   397	404	236	android/database/sqlite/SQLiteException
    //   422	431	236	android/database/sqlite/SQLiteException
    //   370	397	421	android/database/sqlite/SQLiteException
    //   12	81	434	finally
    //   85	97	434	finally
    //   97	185	434	finally
    //   185	233	434	finally
    //   237	245	434	finally
    //   256	266	434	finally
    //   276	331	434	finally
    //   333	370	434	finally
    //   370	397	434	finally
    //   397	404	434	finally
    //   422	431	434	finally
    //   404	411	444	android/database/sqlite/SQLiteException
    //   245	252	456	android/database/sqlite/SQLiteException
    //   435	442	468	android/database/sqlite/SQLiteException
  }
  
  protected final void mG()
  {
    this.aNc.initialize();
    this.aNd.initialize();
    this.aNf.initialize();
  }
  
  protected final void onServiceConnected()
  {
    n.mN();
    n.mN();
    pf();
    if (!ce.pL()) {
      bz("Service client disabled. Can't dispatch local hits to device AnalyticsService");
    }
    if (!this.aNf.isConnected()) {
      bw("Service not connected");
    }
    while (this.aNc.isEmpty()) {
      return;
    }
    bw("Dispatching local hits to device AnalyticsService");
    for (;;)
    {
      try
      {
        List localList = this.aNc.l(ce.pP());
        if (!localList.isEmpty()) {
          break label117;
        }
        pA();
        return;
      }
      catch (SQLiteException localSQLiteException1)
      {
        h("Failed to read hits from store", localSQLiteException1);
        pC();
        return;
      }
      label98:
      Object localObject;
      localSQLiteException1.remove(localObject);
      try
      {
        this.aNc.m(((cr)localObject).aOL);
        label117:
        if (!localSQLiteException1.isEmpty())
        {
          localObject = (cr)localSQLiteException1.get(0);
          if (this.aNf.b((cr)localObject)) {
            break label98;
          }
          pA();
          return;
        }
      }
      catch (SQLiteException localSQLiteException2)
      {
        h("Failed to remove hit that was send for delivery", localSQLiteException2);
        pC();
      }
    }
  }
  
  public final void pA()
  {
    long l3 = 0L;
    n.mN();
    pf();
    if ((!this.aNl) && (pD() > 0L)) {}
    for (int i = 1; i == 0; i = 0)
    {
      this.aNe.unregister();
      pC();
      return;
    }
    if (this.aNc.isEmpty())
    {
      this.aNe.unregister();
      pC();
      return;
    }
    Object localObject;
    boolean bool;
    label238:
    long l1;
    if (!((Boolean)cm.aOw.aOE).booleanValue())
    {
      localObject = this.aNe;
      ((cx)localObject).qd();
      if (!((cx)localObject).CA)
      {
        Context localContext = ((cx)localObject).aMq.mContext;
        localContext.registerReceiver((BroadcastReceiver)localObject, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        IntentFilter localIntentFilter = new IntentFilter("com.google.analytics.RADIO_POWERED");
        localIntentFilter.addCategory(localContext.getPackageName());
        localContext.registerReceiver((BroadcastReceiver)localObject, localIntentFilter);
        ((cx)localObject).aOY = ((cx)localObject).qe();
        ((cx)localObject).aMq.pg().d("Registering connectivity change receiver. Network connected", Boolean.valueOf(((cx)localObject).aOY));
        ((cx)localObject).CA = true;
      }
      localObject = this.aNe;
      if (!((cx)localObject).CA) {
        ((cx)localObject).aMq.pg().bz("Connectivity unknown. Receiver not registered");
      }
      bool = ((cx)localObject).aOY;
      if (!bool) {
        break label518;
      }
      pB();
      l2 = pD();
      l1 = pd().qi();
      if (l1 == 0L) {
        break label387;
      }
      l1 = l2 - Math.abs(this.aMq.aBm.currentTimeMillis() - l1);
      if (l1 <= 0L) {
        break label375;
      }
      label294:
      d("Dispatch scheduled (ms)", Long.valueOf(l1));
      if (!this.aNh.pW()) {
        break label509;
      }
      localObject = this.aNh;
      if (((cg)localObject).aNH != 0L) {
        break label399;
      }
    }
    label375:
    label387:
    label399:
    for (long l2 = 0L;; l2 = Math.abs(((cg)localObject).aMq.aBm.currentTimeMillis() - ((cg)localObject).aNH))
    {
      l1 = Math.max(1L, l1 + l2);
      localObject = this.aNh;
      if (!((cg)localObject).pW()) {
        break;
      }
      if (l1 >= 0L) {
        break label426;
      }
      ((cg)localObject).cancel();
      return;
      bool = true;
      break label238;
      l1 = Math.min(ce.pN(), l2);
      break label294;
      l1 = Math.min(ce.pN(), l2);
      break label294;
    }
    label426:
    l1 -= Math.abs(((cg)localObject).aMq.aBm.currentTimeMillis() - ((cg)localObject).aNH);
    if (l1 < 0L) {
      l1 = l3;
    }
    for (;;)
    {
      ((cg)localObject).getHandler().removeCallbacks(((cg)localObject).aNG);
      if (((cg)localObject).getHandler().postDelayed(((cg)localObject).aNG, l1)) {
        break;
      }
      ((cg)localObject).aMq.pg().h("Failed to adjust delayed post. time", Long.valueOf(l1));
      return;
      label509:
      this.aNh.n(l1);
      return;
      label518:
      pC();
      pB();
      return;
    }
  }
  
  protected final void px()
  {
    pf();
    n.mN();
    Context localContext = this.aMq.mContext;
    if (!dc.s(localContext))
    {
      bz("AnalyticsReceiver is not registered or is disabled. Register the receiver for reliable dispatching on non-Google Play devices. See http://goo.gl/8Rd3yj for instructions.");
      if (!CampaignTrackingReceiver.s(localContext)) {
        bz("CampaignTrackingReceiver is not registered, not exported or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions.");
      }
      pd().qg();
      if (!bE("android.permission.ACCESS_NETWORK_STATE"))
      {
        bA("Missing required android.permission.ACCESS_NETWORK_STATE. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions");
        pE();
      }
      if (!bE("android.permission.INTERNET"))
      {
        bA("Missing required android.permission.INTERNET. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions");
        pE();
      }
      if (!dd.ad(this.aMq.mContext)) {
        break label156;
      }
      bw("AnalyticsService registered in the app manifest and enabled");
    }
    for (;;)
    {
      if ((!this.aNl) && (!this.aNc.isEmpty())) {
        py();
      }
      pA();
      return;
      if (dd.ad(localContext)) {
        break;
      }
      bA("AnalyticsService is not registered or is disabled. Analytics service at risk of not starting. See http://goo.gl/8Rd3yj for instructions.");
      break;
      label156:
      bz("AnalyticsService not registered in the app manifest. Hits might not be delivered reliably. See http://goo.gl/8Rd3yj for instructions.");
    }
  }
  
  final void start()
  {
    pf();
    if (!this.uY) {}
    for (boolean bool = true;; bool = false)
    {
      ae.a(bool, "Analytics backend already started");
      this.uY = true;
      this.aMq.ph().h(new bs(this));
      return;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/bp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */