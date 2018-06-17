package com.google.firebase;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.api.internal.ce;
import com.google.android.gms.common.internal.ac;
import com.google.android.gms.common.internal.ad;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.internal.ak;
import com.google.android.gms.common.util.m;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public class a
{
  private static final Object AT = new Object();
  private static final List<String> ben = Arrays.asList(new String[] { "com.google.firebase.auth.FirebaseAuth", "com.google.firebase.iid.FirebaseInstanceId" });
  private static final List<String> beo = Collections.singletonList("com.google.firebase.crash.FirebaseCrash");
  private static final List<String> bep = Arrays.asList(new String[] { "com.google.android.gms.measurement.AppMeasurement" });
  private static final List<String> beq = Arrays.asList(new String[0]);
  private static final Set<String> ber = Collections.emptySet();
  static final Map<String, a> bes = new android.support.v4.g.a();
  private final Context aCq;
  private final b bet;
  private final AtomicBoolean beu = new AtomicBoolean(false);
  private final AtomicBoolean bev = new AtomicBoolean();
  private final List<Object> bew = new CopyOnWriteArrayList();
  private final List<Object> bex = new CopyOnWriteArrayList();
  private final List<Object> bey = new CopyOnWriteArrayList();
  private a bez;
  private final String mName;
  
  private a(Context paramContext, String paramString, b paramb)
  {
    this.aCq = ((Context)ae.E(paramContext));
    this.mName = ae.bf(paramString);
    this.bet = ((b)ae.E(paramb));
    this.bez = new com.google.firebase.a.a();
  }
  
  private static a a(Context arg0, b paramb, String paramString)
  {
    com.google.firebase.a.b.uX();
    if ((???.getApplicationContext() instanceof Application))
    {
      ce.b((Application)???.getApplicationContext());
      ce.nR().a(new c());
    }
    String str = paramString.trim();
    paramString = ???;
    if (???.getApplicationContext() != null) {
      paramString = ???.getApplicationContext();
    }
    synchronized (AT)
    {
      if (!bes.containsKey(str))
      {
        bool = true;
        ae.a(bool, String.valueOf(str).length() + 33 + "FirebaseApp name " + str + " already exists!");
        ae.g(paramString, "Application context cannot be null.");
        paramb = new a(paramString, str, paramb);
        bes.put(str, paramb);
        com.google.firebase.a.b.uY();
        paramb.a(a.class, paramb, ben);
        if (paramb.up())
        {
          paramb.a(a.class, paramb, beo);
          paramb.a(Context.class, paramb.getApplicationContext(), bep);
        }
        return paramb;
      }
      boolean bool = false;
    }
  }
  
  private final <T> void a(Class<T> paramClass, T paramT, Iterable<String> paramIterable)
  {
    boolean bool = android.support.v4.content.a.h(this.aCq);
    if (bool) {
      b.an(this.aCq);
    }
    Iterator localIterator = paramIterable.iterator();
    for (;;)
    {
      if (localIterator.hasNext())
      {
        paramIterable = (String)localIterator.next();
        if (bool) {}
        try
        {
          if (beq.contains(paramIterable))
          {
            Method localMethod = Class.forName(paramIterable).getMethod("getInstance", new Class[] { paramClass });
            int i = localMethod.getModifiers();
            if ((Modifier.isPublic(i)) && (Modifier.isStatic(i))) {
              localMethod.invoke(null, new Object[] { paramT });
            }
          }
        }
        catch (ClassNotFoundException localClassNotFoundException)
        {
          if (ber.contains(paramIterable)) {
            throw new IllegalStateException(String.valueOf(paramIterable).concat(" is missing, but is required. Check if it has been removed by Proguard."));
          }
          Log.d("FirebaseApp", String.valueOf(paramIterable).concat(" is not linked. Skipping initialization."));
        }
        catch (NoSuchMethodException paramClass)
        {
          throw new IllegalStateException(String.valueOf(paramIterable).concat("#getInstance has been removed by Proguard. Add keep rule to prevent it."));
        }
        catch (InvocationTargetException paramIterable)
        {
          Log.wtf("FirebaseApp", "Firebase API initialization failure.", paramIterable);
        }
        catch (IllegalAccessException localIllegalAccessException)
        {
          paramIterable = String.valueOf(paramIterable);
          if (paramIterable.length() != 0) {}
          for (paramIterable = "Failed to initialize ".concat(paramIterable);; paramIterable = new String("Failed to initialize "))
          {
            Log.wtf("FirebaseApp", paramIterable, localIllegalAccessException);
            break;
          }
        }
      }
    }
  }
  
  public static a am(Context paramContext)
  {
    Object localObject1;
    synchronized (AT)
    {
      if (bes.containsKey("[DEFAULT]"))
      {
        paramContext = um();
        return paramContext;
      }
      localObject1 = new ak(paramContext);
      String str = ((ak)localObject1).getString("google_app_id");
      if (TextUtils.isEmpty(str))
      {
        localObject1 = null;
        if (localObject1 == null) {
          return null;
        }
      }
      else
      {
        localObject1 = new b(str, ((ak)localObject1).getString("google_api_key"), ((ak)localObject1).getString("firebase_database_url"), ((ak)localObject1).getString("ga_trackingId"), ((ak)localObject1).getString("gcm_defaultSenderId"), ((ak)localObject1).getString("google_storage_bucket"), ((ak)localObject1).getString("project_id"));
      }
    }
    paramContext = a(paramContext, (b)localObject1, "[DEFAULT]");
    return paramContext;
  }
  
  private String getName()
  {
    uo();
    return this.mName;
  }
  
  public static a um()
  {
    synchronized (AT)
    {
      Object localObject2 = (a)bes.get("[DEFAULT]");
      if (localObject2 == null)
      {
        localObject2 = m.oL();
        throw new IllegalStateException(String.valueOf(localObject2).length() + 116 + "Default FirebaseApp is not initialized in this process " + (String)localObject2 + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
      }
    }
    return locala;
  }
  
  public static void un()
  {
    synchronized (AT)
    {
      ArrayList localArrayList = (ArrayList)new ArrayList(bes.values());
      int k = localArrayList.size();
      int i = 0;
      while (i < k)
      {
        Object localObject3 = localArrayList.get(i);
        int j = i + 1;
        localObject3 = (a)localObject3;
        i = j;
        if (((a)localObject3).beu.get())
        {
          ((a)localObject3).uq();
          i = j;
        }
      }
    }
  }
  
  private final void uo()
  {
    if (!this.bev.get()) {}
    for (boolean bool = true;; bool = false)
    {
      ae.a(bool, "FirebaseApp was deleted");
      return;
    }
  }
  
  private boolean up()
  {
    return "[DEFAULT]".equals(getName());
  }
  
  private final void uq()
  {
    Log.d("FirebaseApp", "Notifying background state change listeners.");
    Iterator localIterator = this.bex.iterator();
    while (localIterator.hasNext()) {
      localIterator.next();
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof a)) {
      return false;
    }
    return this.mName.equals(((a)paramObject).getName());
  }
  
  public final Context getApplicationContext()
  {
    uo();
    return this.aCq;
  }
  
  public int hashCode()
  {
    return this.mName.hashCode();
  }
  
  public String toString()
  {
    return ac.O(this).b("name", this.mName).b("options", this.bet).toString();
  }
  
  public final b ul()
  {
    uo();
    return this.bet;
  }
  
  public static abstract interface a {}
  
  @TargetApi(24)
  static final class b
    extends BroadcastReceiver
  {
    private static AtomicReference<b> beA = new AtomicReference();
    private final Context aCq;
    
    private b(Context paramContext)
    {
      this.aCq = paramContext;
    }
    
    public final void onReceive(Context arg1, Intent paramIntent)
    {
      synchronized ()
      {
        paramIntent = a.bes.values().iterator();
        if (paramIntent.hasNext()) {
          a.a((a)paramIntent.next());
        }
      }
      this.aCq.unregisterReceiver(this);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/firebase/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */