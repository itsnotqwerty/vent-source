package com.layer.sdk.internal;

import android.app.Activity;
import android.app.Application;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Handler;
import android.text.TextUtils;
import com.layer.b.d.k.d;
import com.layer.sdk.LayerClient;
import com.layer.sdk.LayerClient.ContentAvailableCallback;
import com.layer.sdk.LayerClient.ContentAvailableCallback.BackgroundThread;
import com.layer.sdk.LayerClient.DeauthenticationAction;
import com.layer.sdk.LayerClient.Options;
import com.layer.sdk.LayerClient.Options.HistoricSyncPolicy;
import com.layer.sdk.changes.LayerChange;
import com.layer.sdk.changes.LayerChangeEvent;
import com.layer.sdk.exceptions.LayerConversationException;
import com.layer.sdk.exceptions.LayerException;
import com.layer.sdk.exceptions.LayerException.Type;
import com.layer.sdk.exceptions.LayerObjectException;
import com.layer.sdk.internal.lsdkd.f.b;
import com.layer.sdk.internal.lsdkh.g.a;
import com.layer.sdk.internal.lsdkk.b.b;
import com.layer.sdk.internal.lsdkk.f.a;
import com.layer.sdk.internal.lsdkk.f.c;
import com.layer.sdk.internal.lsdkk.j.b;
import com.layer.sdk.internal.lsdkk.j.e;
import com.layer.sdk.internal.lsdkk.p;
import com.layer.sdk.internal.lsdkk.q;
import com.layer.sdk.internal.lsdkk.q.a;
import com.layer.sdk.internal.lsdkk.q.b;
import com.layer.sdk.internal.lsdkk.q.c;
import com.layer.sdk.internal.telemetry.TelemetryManager;
import com.layer.sdk.listeners.LayerAuthenticationListener;
import com.layer.sdk.listeners.LayerChangeEventListener;
import com.layer.sdk.listeners.LayerChangeEventListener.BackgroundThread;
import com.layer.sdk.listeners.LayerConnectionListener;
import com.layer.sdk.listeners.LayerObjectExceptionListener;
import com.layer.sdk.listeners.LayerPolicyListener;
import com.layer.sdk.listeners.LayerProgressListener;
import com.layer.sdk.listeners.LayerSyncListener;
import com.layer.sdk.listeners.LayerSyncListener.SyncType;
import com.layer.sdk.listeners.LayerTypingIndicatorListener;
import com.layer.sdk.listeners.LayerTypingIndicatorListener.TypingIndicator;
import com.layer.sdk.messaging.Announcement;
import com.layer.sdk.messaging.Conversation;
import com.layer.sdk.messaging.ConversationOptions;
import com.layer.sdk.messaging.Identity;
import com.layer.sdk.messaging.Message;
import com.layer.sdk.messaging.MessageOptions;
import com.layer.sdk.messaging.MessagePart;
import com.layer.sdk.messaging.Presence.PresenceStatus;
import com.layer.sdk.policy.Policy;
import com.layer.sdk.policy.Policy.PolicyType;
import com.layer.sdk.query.ListViewController;
import com.layer.sdk.query.ListViewController.Callback;
import com.layer.sdk.query.Query;
import com.layer.sdk.query.Query.ResultType;
import com.layer.sdk.query.Queryable;
import com.layer.sdk.query.RecyclerViewController;
import com.layer.sdk.query.RecyclerViewController.Callback;
import com.layer.sdk.services.LayerReceiver;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;

public class a
  extends LayerClient
  implements com.layer.b.d.e, com.layer.sdk.internal.lsdka.b, com.layer.sdk.internal.lsdka.c, com.layer.sdk.internal.lsdkc.a.a, f.b, com.layer.sdk.internal.lsdkd.i, com.layer.sdk.internal.lsdkf.c.a, com.layer.sdk.internal.lsdkk.b.a, j.e, com.layer.sdk.internal.lsdkk.lsdka.a.b, com.layer.sdk.internal.lsdkk.lsdkc.a.a, com.layer.sdk.internal.lsdkk.o
{
  private static final Pattern W = Pattern.compile("^[a-zA-Z0-9!#$%^&*_\\-+{}|'.`~]+/[a-zA-Z0-9!#$%^&*_\\-+{}|'.`~]+$");
  public static final String[] a;
  protected static volatile boolean b;
  protected static final AtomicReference<com.layer.sdk.internal.lsdkk.b> c;
  protected static final Object d;
  public static final AtomicReference<a> e;
  private static final com.layer.sdk.internal.lsdkk.k.a j = com.layer.sdk.internal.lsdkk.k.a(a.class);
  private static final long k;
  private final AtomicReference<LayerClient.Options.HistoricSyncPolicy> A = new AtomicReference(LayerClient.Options.HistoricSyncPolicy.FROM_EARLIEST_UNREAD_MESSAGE);
  private volatile boolean B;
  private volatile boolean C;
  private volatile String D;
  private volatile boolean E;
  private com.layer.sdk.internal.lsdkg.a F;
  private volatile com.layer.sdk.internal.lsdkk.lsdkb.a G;
  private volatile com.layer.sdk.internal.lsdkg.b H;
  private final com.layer.sdk.internal.lsdkk.j<LayerConnectionListener> I = new com.layer.sdk.internal.lsdkk.j();
  private final com.layer.sdk.internal.lsdkk.j<LayerAuthenticationListener> J = new com.layer.sdk.internal.lsdkk.j();
  private final com.layer.sdk.internal.lsdkk.j<LayerSyncListener> K = new com.layer.sdk.internal.lsdkk.j();
  private final com.layer.sdk.internal.lsdkk.j<LayerChangeEventListener> L = new com.layer.sdk.internal.lsdkk.j();
  private final com.layer.sdk.internal.lsdkk.j<LayerTypingIndicatorListener> M = new com.layer.sdk.internal.lsdkk.j();
  private final com.layer.sdk.internal.lsdkk.j<LayerPolicyListener> N = new com.layer.sdk.internal.lsdkk.j();
  private final com.layer.sdk.internal.lsdkk.j<LayerObjectExceptionListener> O = new com.layer.sdk.internal.lsdkk.j();
  private volatile Handler P;
  private volatile ScheduledThreadPoolExecutor Q;
  private volatile com.layer.a.b.a R;
  private volatile com.layer.a.b.a S;
  private volatile com.layer.a.b.a T;
  private volatile com.layer.a.b.a U;
  private volatile com.layer.sdk.internal.lsdkk.f V;
  protected int f = 0;
  protected volatile e g = e.a;
  protected volatile c h;
  protected final p<String> i = new p(com.layer.a.a.c.a, 5000L, null);
  private volatile d l;
  private volatile Context m;
  private volatile com.layer.b.b.b n;
  private volatile com.layer.sdk.internal.lsdka.a o;
  private com.layer.sdk.internal.lsdkk.n p;
  private volatile com.layer.b.a.a q;
  private volatile com.layer.sdk.internal.lsdkk.lsdka.a r;
  private volatile com.layer.sdk.internal.lsdkk.d s;
  private volatile com.layer.b.d.k t;
  private volatile com.layer.sdk.internal.lsdkk.lsdkc.a u;
  private AtomicReference<LayerClient.DeauthenticationAction> v = new AtomicReference(LayerClient.DeauthenticationAction.INVALID);
  private volatile com.layer.sdk.internal.lsdkc.d w;
  private volatile com.layer.sdk.internal.lsdkc.c x;
  private final AtomicReference<b> y = new AtomicReference(null);
  private final AtomicReference<Boolean> z = new AtomicReference(Boolean.valueOf(true));
  
  static
  {
    a = new String[] { "text/plain" };
    b = true;
    c = new AtomicReference(null);
    d = new Object();
    e = new AtomicReference();
    k = TimeUnit.SECONDS.toMillis(30L);
  }
  
  private void G()
  {
    this.Q = new q.c(1, 10);
    this.R = new q.b("ParallelTask", 100, 5L, TimeUnit.SECONDS, 10);
    this.S = new q.a("SerialTask", 5L, TimeUnit.SECONDS, 10);
    this.T = new q.a("SerialWriter", 15000L, TimeUnit.MILLISECONDS, 10);
    this.U = new q.b("TransportTask", 101, 10000L, TimeUnit.MILLISECONDS, 10);
    this.V = new com.layer.sdk.internal.lsdkk.f(this.T);
  }
  
  private void H()
  {
    synchronized (d)
    {
      if (this.g == e.c) {
        throw new IllegalStateException("Cannot init when disposed");
      }
    }
    this.f += 1;
  }
  
  private void I()
  {
    if (this.F == null) {
      this.F = new com.layer.sdk.internal.lsdkg.a(this, this.D);
    }
  }
  
  private void J()
  {
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Deauthenticated, informing " + this.J.c() + " listeners. " + this);
    }
    if (isClosed())
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(j, "Suppressing deauthenticated callback to a closed client");
      }
      return;
    }
    this.J.a(this, new j.b() {});
  }
  
  private boolean K()
  {
    return (this.s != null) && (this.s.d());
  }
  
  private void L()
  {
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Connected, informing " + this.I.c() + " listeners. " + this);
    }
    if (isClosed()) {
      return;
    }
    this.I.a(this, new j.b() {});
  }
  
  private void M()
  {
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Disconnected, informing " + this.I.c() + " listeners. " + this);
    }
    if (isClosed()) {
      return;
    }
    this.I.a(this, new j.b() {});
  }
  
  private boolean N()
  {
    com.layer.sdk.internal.lsdkk.b localb = (com.layer.sdk.internal.lsdkk.b)c.get();
    if (localb == null) {
      return false;
    }
    return localb.a() == b.b.a;
  }
  
  private boolean O()
  {
    if (this.G == null) {
      return false;
    }
    this.G.a(15L);
    return true;
  }
  
  private void P()
  {
    if (this.G == null) {
      return;
    }
    this.G.a();
  }
  
  private boolean Q()
  {
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Fetching config");
    }
    com.layer.sdk.internal.lsdkj.h localh = new com.layer.sdk.internal.lsdkj.h(new com.layer.a.c.b.a()new com.layer.sdk.internal.lsdkj.h.a
    {
      public final void c(Throwable paramAnonymousThrowable)
      {
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.d(a.wr(), "Failed to fetch config", paramAnonymousThrowable);
        }
      }
      
      public final void wp()
      {
        if (com.layer.sdk.internal.lsdkk.k.a(2)) {
          com.layer.sdk.internal.lsdkk.k.a(a.wr(), "Config fetched successfully");
        }
      }
    }, new com.layer.sdk.internal.lsdkj.h.a(this.n, this.o, this));
    this.R.execute(localh);
    return true;
  }
  
  private boolean R()
  {
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Setting up transport push");
    }
    com.layer.sdk.internal.lsdkj.c localc = new com.layer.sdk.internal.lsdkj.c(new com.layer.a.c.b.a()new com.layer.sdk.internal.lsdkj.c.a
    {
      public final void c(Throwable paramAnonymousThrowable) {}
      
      public final void wp() {}
    }, new com.layer.sdk.internal.lsdkj.c.a(B()));
    this.R.execute(localc);
    return true;
  }
  
  private boolean S()
  {
    com.layer.sdk.internal.lsdkj.d locald = new com.layer.sdk.internal.lsdkj.d(new com.layer.a.c.b.a()new com.layer.sdk.internal.lsdkj.d.a
    {
      public final void c(Throwable paramAnonymousThrowable) {}
      
      public final void wp() {}
    }, new com.layer.sdk.internal.lsdkj.d.a(B()));
    this.R.execute(locald);
    return true;
  }
  
  private g.a T()
  {
    final b localb = r();
    if (localb == null) {
      return null;
    }
    new g.a()
    {
      public final com.layer.sdk.internal.lsdke.g a()
      {
        return localb.k();
      }
      
      public final com.layer.sdk.internal.lsdkd.f b()
      {
        return localb.m();
      }
      
      public final String c()
      {
        return localb.i();
      }
    };
  }
  
  private static StringBuilder U()
  {
    return new StringBuilder("\n************                                            **********\n*                 LayerSDK configuration issues                  *\n* (skip with `LayerClient.Options.skipConfigurationCheck(true)`) *\n************                                            **********");
  }
  
  private static int a(Context paramContext, String paramString, Integer paramInteger, StringBuilder paramStringBuilder, int paramInt)
  {
    if ((paramInteger != null) && (Build.VERSION.SDK_INT > paramInteger.intValue())) {}
    while (paramContext.checkCallingOrSelfPermission(paramString) == 0) {
      return paramInt;
    }
    paramStringBuilder.append("\n").append(paramInt).append(":  Required permission `").append(paramString).append("` is not granted.  Please ensure it is declared within AndroidManifest.xml:\n <uses-permission android:name=\"").append(paramString).append("\"");
    if (paramInteger != null) {
      paramStringBuilder.append(" android:maxSdkVersion=\"").append(paramInteger).append("\"");
    }
    paramStringBuilder.append("/>");
    return paramInt + 1;
  }
  
  private static int a(Context paramContext, String paramString, StringBuilder paramStringBuilder, int paramInt, a parama)
  {
    paramContext = paramContext.getPackageManager().queryBroadcastReceivers(new Intent(paramString).setPackage(paramContext.getPackageName()), 64);
    int i1 = 0;
    paramContext = paramContext.iterator();
    if (paramContext.hasNext())
    {
      paramContext.next();
      i1 = 1;
    }
    if (i1 != 0) {
      return paramInt;
    }
    parama.a(paramInt, paramStringBuilder);
    return paramInt + 1;
  }
  
  private static int a(Context paramContext, StringBuilder paramStringBuilder, int paramInt)
  {
    a(paramContext, "com.layer.sdk.PUSH", paramStringBuilder, paramInt, new a()
    {
      public final void a(int paramAnonymousInt, StringBuilder paramAnonymousStringBuilder)
      {
        paramAnonymousStringBuilder.append("\n").append(paramAnonymousInt).append(": ");
        paramAnonymousStringBuilder.append(" Could not find receiver for the `com.layer.sdk.PUSH` action.  Please ensure it is declared in the <application> </application> section of AndroidManifest.xml:\n    <application>\n        <receiver android:name=YOUR_PUSH_RECEIVER_CLASSNAME>\n            <intent-filter>\n                <action android:name=\"com.layer.sdk.PUSH\" />\n                <category android:name=\"${applicationId}\" />\n            </intent-filter>\n        </receiver>\n    </application>\n");
      }
    });
  }
  
  private static int a(Context paramContext, boolean paramBoolean, StringBuilder paramStringBuilder)
  {
    int i2 = a(paramContext, "android.permission.INTERNET", null, paramStringBuilder, a(paramContext, "android.permission.ACCESS_NETWORK_STATE", null, paramStringBuilder, 0));
    int i1 = i2;
    if (paramBoolean) {
      i1 = a(paramContext, paramStringBuilder, i2);
    }
    if ((i1 > 0) && (com.layer.sdk.internal.lsdkk.k.a(6))) {
      com.layer.sdk.internal.lsdkk.k.e(j, paramStringBuilder.toString());
    }
    return i1;
  }
  
  public static LayerClient a(Context paramContext, Uri paramUri, LayerClient.Options paramOptions)
  {
    Object localObject = null;
    if (!paramOptions.isConfigurationCheckSkipped()) {
      a(paramContext, paramOptions.isUsingFirebaseCloudMessaging(), U());
    }
    b localb = new b();
    c localc = a(paramContext, paramUri);
    com.layer.b.b.a locala = q.a(paramOptions.getCustomEndpointCert(), paramOptions.getCustomEndpointAuth(), paramOptions.getCustomEndpointSync(), paramOptions.getCustomEndpointTelemetry());
    if (paramOptions.getCustomEndpointConf() == null) {}
    for (paramUri = (Uri)localObject;; paramUri = com.layer.b.e.c.a(paramOptions.getCustomEndpointConf()))
    {
      paramUri = new com.layer.sdk.internal.lsdkb.a(paramContext, locala, localc, paramUri);
      if (paramOptions.isCustomEndpointSet()) {
        paramUri.a(locala);
      }
      try
      {
        paramContext = new a().a(paramContext, localc, paramUri, null, new com.layer.sdk.internal.lsdke.h(paramContext), localb, paramOptions);
        return paramContext;
      }
      catch (c paramContext) {}
    }
    return paramContext.a();
  }
  
  public static c a(Context paramContext, Uri paramUri)
  {
    return new c(paramUri, com.layer.sdk.internal.lsdkk.e.b(paramContext), com.layer.sdk.internal.lsdkk.e.a(), com.layer.sdk.internal.lsdkk.e.a(paramContext));
  }
  
  private com.layer.sdk.internal.lsdkh.g a(g.a parama, Class<? extends Queryable> paramClass)
  {
    if (paramClass == Conversation.class) {
      return new com.layer.sdk.internal.lsdkh.b(parama);
    }
    if (paramClass == Announcement.class) {
      return new com.layer.sdk.internal.lsdkh.f(parama);
    }
    if (paramClass == Message.class) {
      return new com.layer.sdk.internal.lsdkh.f(parama);
    }
    if (paramClass == MessagePart.class) {
      return new com.layer.sdk.internal.lsdkh.e(parama);
    }
    if (paramClass == Identity.class) {
      return new com.layer.sdk.internal.lsdkh.c(parama);
    }
    throw new IllegalArgumentException("Unknown repository type: " + paramClass);
  }
  
  public static void a(Application paramApplication)
  {
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "LayerClientImpl::applicationCreated:Enter");
    }
    if (paramApplication == null) {
      throw new IllegalArgumentException("Application cannot be null");
    }
    synchronized (c)
    {
      if (c.get() == null) {
        c.set(new com.layer.sdk.internal.lsdkk.b(paramApplication, b.b.b));
      }
      while (!com.layer.sdk.internal.lsdkk.k.a(5)) {
        return;
      }
      com.layer.sdk.internal.lsdkk.k.d(j, "Ignoring `LayerClient.applicationCreated()`. Call `LayerClient.applicationCreated()` before instantiating LayerClient");
    }
  }
  
  private void a(LayerClient.DeauthenticationAction paramDeauthenticationAction)
  {
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Deauthenticating with action: " + paramDeauthenticationAction);
    }
    if (paramDeauthenticationAction == LayerClient.DeauthenticationAction.INVALID)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(6)) {
        com.layer.sdk.internal.lsdkk.k.e(j, "Use a valid DeauthenticationAction. Action: " + paramDeauthenticationAction);
      }
      throw new IllegalArgumentException("Cannot use Invalid deauthentication action");
    }
    this.v = new AtomicReference(paramDeauthenticationAction);
    try
    {
      if ((r() != null) && (this.C))
      {
        if (this.F == null) {
          break label139;
        }
        this.F.b();
      }
      for (;;)
      {
        this.r.d();
        this.p.a("user_was_authenticated");
        return;
        label139:
        if (com.layer.sdk.internal.lsdkk.k.a(2)) {
          com.layer.sdk.internal.lsdkk.k.a(j, "Could not delete FCM token as registration manager could not be obtained");
        }
      }
    }
    catch (Exception paramDeauthenticationAction)
    {
      for (;;)
      {
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.d(j, "Error when unregistering FCM", paramDeauthenticationAction);
        }
      }
    }
  }
  
  private void a(final LayerException paramLayerException)
  {
    if (!com.layer.sdk.internal.lsdkk.k.a(paramLayerException)) {}
    do
    {
      return;
      if (!isClosed()) {
        break;
      }
    } while (!com.layer.sdk.internal.lsdkk.k.a(2));
    com.layer.sdk.internal.lsdkk.k.a(j, "Suppressing authentication error callback to a closed client");
    return;
    if (com.layer.sdk.internal.lsdkk.k.a(6)) {
      com.layer.sdk.internal.lsdkk.k.d(j, "Authentication Error, informing " + this.J.c() + " listeners. " + this, paramLayerException);
    }
    this.J.a(this, new j.b() {});
  }
  
  private static void a(a parama, LayerClient.Options paramOptions, final Context paramContext)
  {
    parama.d(new Runnable()
    {
      public final void run()
      {
        this.bqg.persist(paramContext);
      }
    });
  }
  
  private static void a(a parama, LayerClient.Options paramOptions, Context paramContext, com.layer.sdk.internal.lsdkc.c paramc)
  {
    if (paramOptions != null)
    {
      a(parama, paramOptions, paramContext);
      parama.C = paramOptions.isUsingFirebaseCloudMessaging();
      parama.D = paramOptions.getAlternateFcmSenderId();
      parama.B = paramOptions.isBroadcastPushInForeground();
      parama.E = paramOptions.isConfigurationCheckSkipped();
      parama.A.set(paramOptions.getHistoricSyncPolicy());
      paramc.a(paramOptions.getAutoDownloadMimeTypes());
      paramc.a(paramOptions.getAutoDownloadSizeThreshold());
      paramc.b(paramOptions.getDiskCapacity());
    }
  }
  
  private void a(UUID paramUUID1, UUID paramUUID2, String paramString)
  {
    try
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(j, "LayerClientImpl::initSession:Enter");
      }
      if (paramUUID1 == null) {
        throw new IllegalStateException("Null app ID");
      }
    }
    finally {}
    if (paramUUID2 == null) {
      throw new IllegalStateException("Null Layer user ID");
    }
    if (paramString == null) {
      throw new IllegalStateException("Null user ID");
    }
    b localb = r();
    if (localb != null)
    {
      if (!localb.a(paramUUID1, paramUUID2))
      {
        f();
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.e(j, "Trying to authenticate a new user when a different user ( " + localb.i() + " / Layer User ID: " + localb.d() + " ) is already authenticated. Provided user: " + paramString + " / Layer User ID: " + paramUUID2);
        }
        throw new IllegalStateException("Session with different IDs already active. Currently active user: " + localb.i() + " . Provided user: " + paramString);
      }
    }
    else
    {
      paramUUID1 = a(this.m, this, this, this, this, this, this.l.a(), this.l.b(), paramUUID1, paramUUID2, paramString, B(), this.w, this.x);
      this.y.set(paramUUID1);
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(j, "LayerClientImpl::initSession:Exit");
      }
    }
  }
  
  public static a b()
  {
    synchronized (d)
    {
      a locala = (a)e.get();
      if (locala == null) {
        return null;
      }
      locala.H();
      return locala;
    }
  }
  
  private void b(final LayerException paramLayerException)
  {
    if (!com.layer.sdk.internal.lsdkk.k.a(paramLayerException)) {}
    do
    {
      return;
      if (com.layer.sdk.internal.lsdkk.k.a(6)) {
        com.layer.sdk.internal.lsdkk.k.d(j, "Connection Error, informing " + this.I.c() + " listeners. " + this, paramLayerException);
      }
    } while (isClosed());
    this.I.a(this, new j.b() {});
  }
  
  private void c(final String paramString)
  {
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Authenticated, userId: " + paramString + ", informing " + this.J.c() + " listeners. " + this);
    }
    if (isClosed())
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(j, "Suppressing authenticated callback to a closed client");
      }
      return;
    }
    this.p.a("user_was_authenticated", Boolean.valueOf(true));
    this.J.a(this, new j.b() {});
  }
  
  private void d(final String paramString)
  {
    Object localObject2;
    if (!this.i.a(paramString))
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2))
      {
        localObject1 = j;
        localObject2 = new StringBuilder("Ignoring duplicate authentication challenge, nonce length: ");
        if (paramString != null) {
          break label64;
        }
      }
      label64:
      for (paramString = "(null)";; paramString = Integer.valueOf(paramString.length()))
      {
        com.layer.sdk.internal.lsdkk.k.a(localObject1, paramString + ". " + this);
        return;
      }
    }
    StringBuilder localStringBuilder;
    if (com.layer.sdk.internal.lsdkk.k.a(2))
    {
      localObject2 = j;
      localStringBuilder = new StringBuilder("Authentication challenge, nonce length: ");
      if (paramString != null) {
        break label153;
      }
    }
    label153:
    for (Object localObject1 = "(null)";; localObject1 = Integer.valueOf(paramString.length()))
    {
      com.layer.sdk.internal.lsdkk.k.a(localObject2, localObject1 + ". " + this);
      if (!isClosed()) {
        break label164;
      }
      if (!com.layer.sdk.internal.lsdkk.k.a(2)) {
        break;
      }
      com.layer.sdk.internal.lsdkk.k.a(j, "Suppressing authentication challenge callback to a closed client");
      return;
    }
    label164:
    if ((this.J.b()) && (com.layer.sdk.internal.lsdkk.k.a(5))) {
      com.layer.sdk.internal.lsdkk.k.d(j, "Authentication challenge, but no LayerAuthenticationListeners are registered to handle it. " + this);
    }
    this.J.a(this, new j.b() {});
  }
  
  public com.layer.sdk.internal.lsdkg.b A()
  {
    return this.H;
  }
  
  public com.layer.b.d.k B()
  {
    return this.t;
  }
  
  public com.layer.sdk.internal.lsdkd.f C()
  {
    b localb = r();
    if (localb == null) {
      return null;
    }
    return localb.m();
  }
  
  public int D()
  {
    return 10;
  }
  
  public boolean E()
  {
    if (this.B) {}
    while (!N()) {
      return true;
    }
    return false;
  }
  
  protected com.layer.b.a.a a(c paramc, com.layer.b.b.a parama, com.layer.b.a.b paramb, com.layer.b.a.f paramf)
  {
    return new com.layer.b.a.a(paramc, parama, paramb, paramf);
  }
  
  public a a(final Context paramContext, c paramc, com.layer.b.b.b paramb, com.layer.sdk.internal.lsdka.a parama, com.layer.b.a.b paramb1, d paramd, final LayerClient.Options paramOptions)
    throws a.c
  {
    Object localObject1 = d;
    try
    {
      com.layer.sdk.internal.lsdkk.k.a(paramContext.getApplicationContext());
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(j, "Initializing LayerClient");
      }
      if (paramc == null) {
        throw new IllegalArgumentException("Null transport context.");
      }
    }
    finally {}
    try
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(j, "LayerClientImpl::init:Exit");
      }
      throw paramContext;
    }
    finally
    {
      throw paramContext;
      if (paramb == null) {
        throw new IllegalArgumentException("Null config resolver.");
      }
      if (paramd == null) {
        throw new IllegalArgumentException("Null properties.");
      }
      if (paramc.b() == null) {
        throw new IllegalArgumentException("Null App ID provided.");
      }
      if (paramc.c() == null) {
        throw new IllegalArgumentException("Null Device ID provided.");
      }
      ??? = a(this);
      if ((??? != null) && (??? != this))
      {
        if (com.layer.sdk.internal.lsdkk.k.a(2)) {
          com.layer.sdk.internal.lsdkk.k.a(j, "another client is active, throwing exception to reuse existing active client: " + ???);
        }
        a((a)???, paramOptions, ((a)???).m, ((a)???).x);
        ((a)???).H();
        throw new c((a)???);
      }
      G();
      this.m = paramContext.getApplicationContext();
      if (this.x == null) {
        this.x = new com.layer.sdk.internal.lsdkc.c();
      }
      a(this, paramOptions, this.m, this.x);
      if (this.g != e.a)
      {
        if (com.layer.sdk.internal.lsdkk.k.a(2)) {
          com.layer.sdk.internal.lsdkk.k.a(j, "client already initialized, returning existing client...");
        }
        H();
        b(this);
        if (com.layer.sdk.internal.lsdkk.k.a(2)) {
          com.layer.sdk.internal.lsdkk.k.a(j, "LayerClientImpl::init:Exit");
        }
        return this;
      }
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(j, "client not active, continuing to initialize new client...");
      }
      if ((paramb1 != null) && ((paramb1 instanceof com.layer.sdk.internal.lsdke.h)))
      {
        paramContext = (com.layer.sdk.internal.lsdke.h)paramb1;
        if (paramContext.c() == null) {
          paramContext.a(paramc.a());
        }
      }
      if ((this.m instanceof Application))
      {
        paramContext = (Application)this.m;
        if (paramContext != null) {
          LayerReceiver.createAndRegister(paramContext);
        }
      }
      do
      {
        synchronized (c)
        {
          if (c.get() == null) {
            c.set(new com.layer.sdk.internal.lsdkk.b(paramContext));
          }
          ((com.layer.sdk.internal.lsdkk.b)c.get()).a(this);
          this.l = paramd;
          this.h = paramc;
          this.p = new com.layer.sdk.internal.lsdkk.n(this.m);
          if (this.P == null) {
            this.P = new Handler(this.m.getMainLooper());
          }
          if (this.n == null) {
            this.n = paramb;
          }
          paramContext = paramb.b();
          if (this.q == null) {
            this.q = a(paramc, paramContext, paramb1, new com.layer.sdk.internal.lsdkk.a());
          }
          if (this.t == null)
          {
            this.t = new com.layer.b.d.k(paramc, paramContext, this.q, k.d.bxv, this.U, this);
            this.t.a(new HostnameVerifier()
            {
              public final boolean verify(String paramAnonymousString, SSLSession paramAnonymousSSLSession)
              {
                return true;
              }
            });
          }
          if (this.w == null) {
            this.w = new com.layer.sdk.internal.lsdkc.d(paramc.d());
          }
          if (this.r == null)
          {
            this.r = new com.layer.sdk.internal.lsdkk.lsdka.a(this.t, this.q);
            this.r.a(this);
          }
          if (this.u == null) {
            this.u = new com.layer.sdk.internal.lsdkk.lsdkc.a(this.Q, this);
          }
          if (paramOptions != null) {
            this.R.execute(new Runnable()
            {
              public final void run()
              {
                TelemetryManager.init(jdField_this, paramOptions.isTelemetryEnabled(), paramContext.wF().toString(), paramOptions.getUiSdkVersion(), paramOptions.getLayerMessengerVersion());
              }
            });
          }
          if (t())
          {
            if (com.layer.sdk.internal.lsdkk.k.a(2)) {
              com.layer.sdk.internal.lsdkk.k.a(j, "resuming session...");
            }
            a(this.h.b(), this.r.g(), this.r.h());
            if (this.s == null) {
              this.s = new com.layer.sdk.internal.lsdkk.d(this.t, new com.layer.sdk.internal.lsdkk.d.a()
              {
                public final void a(LayerException paramAnonymousLayerException)
                {
                  if (a.e(a.this) != null) {
                    a.e(a.this).f();
                  }
                  a.a(a.this, paramAnonymousLayerException);
                }
                
                public final void a(boolean paramAnonymousBoolean)
                {
                  if (com.layer.sdk.internal.lsdkk.k.d()) {
                    com.layer.sdk.internal.lsdkk.k.c("LayerClient: Connection reported");
                  }
                  a.e(a.this).e();
                  Object localObject;
                  if ((a.this.t()) && (a.e(a.this).i()))
                  {
                    localObject = a.this.r();
                    if (localObject != null)
                    {
                      ((b)localObject).e().b();
                      a.this.w();
                    }
                  }
                  for (;;)
                  {
                    a.g(a.this);
                    return;
                    if (com.layer.sdk.internal.lsdkk.k.a(2))
                    {
                      com.layer.sdk.internal.lsdkk.k.a(a.wr(), "onReportConnected: session is null. Skipping sync");
                      continue;
                      localObject = a.f(a.this).e("user_was_authenticated");
                      if ((localObject != null) && (((Boolean)localObject).booleanValue() == true))
                      {
                        if (com.layer.sdk.internal.lsdkk.k.a(4)) {
                          com.layer.sdk.internal.lsdkk.k.c(a.wr(), "onReportConnected: authManagerHasPreviouslyAuthenticatedSession is false, but user was authenticated. Kicking off authentication");
                        }
                        a.e(a.this).c();
                      }
                      else if (com.layer.sdk.internal.lsdkk.k.a(4))
                      {
                        com.layer.sdk.internal.lsdkk.k.c(a.wr(), "onReportConnected: authManagerHasPreviouslyAuthenticatedSession is false, and user was not authenticated. Skipping sync");
                      }
                    }
                  }
                }
                
                public final boolean a()
                {
                  return LayerReceiver.isNetworkConnected(a.d(a.this));
                }
                
                public final void b(boolean paramAnonymousBoolean)
                {
                  b localb = a.this.r();
                  if (localb != null) {
                    localb.e().a();
                  }
                  a.h(a.this);
                }
              });
            }
            if ((this.l.c()) && (this.G == null)) {
              this.G = new com.layer.sdk.internal.lsdkk.lsdkb.a(this.Q)
              {
                public final void run()
                {
                  a.this.x();
                }
              };
            }
            if (this.o == null) {
              this.o = parama;
            }
            Q();
            this.g = e.b;
            H();
            b(this);
            if (com.layer.sdk.internal.lsdkk.k.a(2)) {
              com.layer.sdk.internal.lsdkk.k.a(j, "LayerClientImpl::init:Exit");
            }
            return this;
            if ((this.m instanceof Activity))
            {
              paramContext = ((Activity)this.m).getApplication();
              break;
            }
            if ((this.m instanceof Service))
            {
              paramContext = ((Service)this.m).getApplication();
              break;
            }
            paramContext = null;
          }
        }
      } while (!com.layer.sdk.internal.lsdkk.k.a(2));
    }
  }
  
  protected a a(a arg1)
  {
    synchronized (d)
    {
      a locala = (a)e.get();
      return locala;
    }
  }
  
  protected b a(Context paramContext, f.b paramb, com.layer.sdk.internal.lsdkf.c.a parama, com.layer.sdk.internal.lsdkd.i parami, com.layer.sdk.internal.lsdkc.a.a parama1, com.layer.sdk.internal.lsdkk.o paramo, boolean paramBoolean1, boolean paramBoolean2, UUID paramUUID1, UUID paramUUID2, String paramString, com.layer.b.d.k paramk, com.layer.sdk.internal.lsdkc.d paramd, com.layer.sdk.internal.lsdkc.c paramc)
  {
    return new b(paramContext, paramb, parama, parami, parama1, paramo, paramBoolean1, paramBoolean2, paramUUID1, paramUUID2, paramString, paramk, paramd, paramc);
  }
  
  public b a(LayerException.Type paramType, String paramString)
  {
    b localb = r();
    if (localb == null) {
      throw new LayerException(paramType, paramString);
    }
    return localb;
  }
  
  public File a(File paramFile, String paramString)
    throws IOException
  {
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "LayerClientImpl::getCompressedDbFile:Enter");
    }
    if (paramFile == null) {
      throw new IllegalArgumentException("Cannot compress database to `null` destination");
    }
    if (paramString == null) {
      throw new IllegalArgumentException("Cannot compress database with `null` prefix");
    }
    b localb = r();
    if (localb == null) {
      return null;
    }
    this.m.getDatabasePath("layer.pathtest.db");
    return localb.k().a(paramFile, paramString, this.m);
  }
  
  protected void a(final com.layer.b.f.a.g paramg)
  {
    if (isClosed()) {
      return;
    }
    this.V.a(new f.a()
    {
      public final void a(Object paramAnonymousObject)
      {
        paramAnonymousObject = a.this.r();
        if (paramAnonymousObject == null) {
          return;
        }
        com.layer.sdk.internal.lsdke.g localg = ((b)paramAnonymousObject).k();
        final boolean bool = true;
        paramAnonymousObject = null;
        try
        {
          SQLiteDatabase localSQLiteDatabase = localg.e();
          paramAnonymousObject = localSQLiteDatabase;
          int i = localg.a(com.layer.sdk.internal.lsdke.f.a).intValue();
          paramAnonymousObject = localSQLiteDatabase;
          if (paramg.a == i + 1)
          {
            paramAnonymousObject = localSQLiteDatabase;
            localg.a(paramg.a, paramg.b);
            bool = false;
          }
          paramAnonymousObject = localSQLiteDatabase;
          localSQLiteDatabase.setTransactionSuccessful();
          localg.i(localSQLiteDatabase);
          a.this.b(new Runnable()
          {
            public final void run()
            {
              a.this.a(com.layer.sdk.internal.lsdki.a.e.c, true, true, false, new HashSet(), null, bool, false);
            }
          });
          return;
        }
        finally
        {
          localg.i((SQLiteDatabase)paramAnonymousObject);
        }
      }
      
      public final void a(Object paramAnonymousObject, Throwable paramAnonymousThrowable)
      {
        a.this.a(Collections.singletonList(new LayerException(LayerException.Type.UNDEFINED_SYNC_FAILURE, paramAnonymousThrowable.getMessage(), paramAnonymousThrowable)));
      }
    });
  }
  
  public void a(LayerException paramLayerException, boolean paramBoolean)
  {
    if (com.layer.sdk.internal.lsdkk.k.a(6)) {
      com.layer.sdk.internal.lsdkk.k.d(j, "onAuthManagerReportError. isUnrecoverable: " + paramBoolean, paramLayerException);
    }
    if (paramBoolean) {}
    try
    {
      disconnect();
    }
    catch (Exception localException1)
    {
      try
      {
        for (;;)
        {
          f();
          a(paramLayerException);
          return;
          localException1 = localException1;
          if (com.layer.sdk.internal.lsdkk.k.a(6)) {
            com.layer.sdk.internal.lsdkk.k.d(j, "Error when disconnecting", localException1);
          }
        }
      }
      catch (Exception localException2)
      {
        for (;;)
        {
          if (com.layer.sdk.internal.lsdkk.k.a(6)) {
            com.layer.sdk.internal.lsdkk.k.d(j, "Error when closing session", localException2);
          }
        }
      }
    }
  }
  
  public void a(final LayerObjectException paramLayerObjectException)
  {
    if (this.O.b())
    {
      if (!isClosed()) {
        throw paramLayerObjectException;
      }
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(j, paramLayerObjectException.getMessage(), paramLayerObjectException);
      }
      return;
    }
    this.O.a(this, new j.b() {});
  }
  
  public void a(com.layer.sdk.internal.lsdkd.c paramc)
  {
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Processing ChangeEvent. " + this);
    }
    if (this.L.b()) {
      if ((b) && (com.layer.sdk.internal.lsdkk.k.a(5))) {
        com.layer.sdk.internal.lsdkk.k.d(j, "No registered LayerChangeEventListeners. Discarding LayerChange events.");
      }
    }
    do
    {
      return;
      final ArrayList localArrayList = new ArrayList(paramc.a().size());
      com.layer.sdk.internal.lsdkd.f localf = C();
      paramc = paramc.a().iterator();
      while (paramc.hasNext())
      {
        LayerChange localLayerChange = ((com.layer.sdk.internal.lsdkd.b)paramc.next()).a(localf);
        if (localLayerChange != null) {
          localArrayList.add(localLayerChange);
        }
      }
      if (!localArrayList.isEmpty())
      {
        if (com.layer.sdk.internal.lsdkk.k.a(2)) {
          com.layer.sdk.internal.lsdkk.k.a(j, "Posting LayerChange list with size " + localArrayList.size());
        }
        this.L.a(this, new j.b() {});
        return;
      }
    } while (!com.layer.sdk.internal.lsdkk.k.a(2));
    com.layer.sdk.internal.lsdkk.k.a(j, "No changes to post");
  }
  
  public void a(com.layer.sdk.internal.lsdkd.k paramk, Conversation paramConversation)
  {
    if (paramConversation == null) {}
    for (;;)
    {
      return;
      b localb = r();
      if (localb == null) {
        continue;
      }
      com.layer.sdk.internal.lsdke.g localg = localb.k();
      Object localObject = null;
      try
      {
        SQLiteDatabase localSQLiteDatabase = localg.e();
        localObject = localSQLiteDatabase;
        com.layer.sdk.internal.lsdki.lsdkb.a.a(localSQLiteDatabase, Arrays.asList(new Long[] { ((com.layer.sdk.internal.lsdkd.lsdka.c)paramConversation).g() }), localg, localb.m(), paramk);
        localObject = localSQLiteDatabase;
        localSQLiteDatabase.setTransactionSuccessful();
        if (localSQLiteDatabase == null) {
          continue;
        }
        localg.i(localSQLiteDatabase);
        return;
      }
      finally
      {
        if (localObject != null) {
          localg.i((SQLiteDatabase)localObject);
        }
      }
    }
  }
  
  public void a(com.layer.sdk.internal.lsdkd.lsdka.c paramc)
  {
    b localb = r();
    if (localb == null) {}
    for (;;)
    {
      return;
      com.layer.sdk.internal.lsdke.g localg = localb.k();
      Object localObject = null;
      try
      {
        SQLiteDatabase localSQLiteDatabase = localg.e();
        localObject = localSQLiteDatabase;
        com.layer.sdk.internal.lsdki.lsdkb.b.a(localSQLiteDatabase, localb.i(), localg, paramc);
        localObject = localSQLiteDatabase;
        localSQLiteDatabase.setTransactionSuccessful();
        if (localSQLiteDatabase == null) {
          continue;
        }
        localg.i(localSQLiteDatabase);
        return;
      }
      finally
      {
        if (localObject != null) {
          localg.i((SQLiteDatabase)localObject);
        }
      }
    }
  }
  
  public void a(final com.layer.sdk.internal.lsdki.a.b paramb, com.layer.sdk.internal.lsdki.a.e parame, boolean paramBoolean)
  {
    String str;
    if (com.layer.sdk.internal.lsdkk.k.a(2))
    {
      com.layer.sdk.internal.lsdkk.k.a locala = j;
      if (paramBoolean)
      {
        str = "Synchronization complete";
        com.layer.sdk.internal.lsdkk.k.a(locala, str);
      }
    }
    else
    {
      if (!isClosed()) {
        break label44;
      }
    }
    label44:
    do
    {
      return;
      str = "Synchronization iteration complete";
      break;
      if ((paramb.f()) && (this.l.f()))
      {
        paramb = r();
        if (paramb != null) {
          paramb.g().c();
        }
      }
    } while ((!paramBoolean) && (parame != com.layer.sdk.internal.lsdki.a.e.d));
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Synchronization complete, informing " + this.K.c() + " listeners");
    }
    if (parame == com.layer.sdk.internal.lsdki.a.e.b) {}
    for (paramb = LayerSyncListener.SyncType.HISTORIC;; paramb = LayerSyncListener.SyncType.NORMAL)
    {
      this.K.a(this, new j.b() {});
      return;
    }
  }
  
  public void a(final com.layer.sdk.internal.lsdki.a.e parame, final int paramInt)
  {
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Synchronization progress: " + paramInt);
    }
    if (parame == com.layer.sdk.internal.lsdki.a.e.b) {}
    for (parame = LayerSyncListener.SyncType.HISTORIC;; parame = LayerSyncListener.SyncType.NORMAL)
    {
      this.K.a(this, new j.b() {});
      return;
    }
  }
  
  public void a(final com.layer.sdk.internal.lsdki.a.e parame, boolean paramBoolean)
  {
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Synchronization starting. " + this);
    }
    if (((!paramBoolean) && (parame != com.layer.sdk.internal.lsdki.a.e.d) && (parame != com.layer.sdk.internal.lsdki.a.e.e)) || (isClosed())) {
      return;
    }
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Synchronization starting, informing " + this.K.c() + " listeners.");
    }
    if (parame == com.layer.sdk.internal.lsdki.a.e.b) {}
    for (parame = LayerSyncListener.SyncType.HISTORIC;; parame = LayerSyncListener.SyncType.NORMAL)
    {
      this.K.a(this, new j.b() {});
      return;
    }
  }
  
  public void a(com.layer.sdk.internal.lsdki.a.e parame, boolean paramBoolean1, boolean paramBoolean2, HashSet<UUID> paramHashSet, boolean paramBoolean3)
  {
    a(parame, paramBoolean1, true, paramBoolean2, paramHashSet, null, paramBoolean3);
  }
  
  public void a(com.layer.sdk.internal.lsdki.a.e parame, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, HashSet<UUID> paramHashSet, com.layer.sdk.internal.lsdki.a.c paramc, boolean paramBoolean4)
  {
    a(parame, paramBoolean1, paramBoolean2, paramBoolean3, paramHashSet, paramc, false, paramBoolean4);
  }
  
  public void a(com.layer.sdk.internal.lsdki.a.e parame, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, HashSet<UUID> paramHashSet, com.layer.sdk.internal.lsdki.a.c paramc, boolean paramBoolean4, boolean paramBoolean5)
  {
    Object localObject = paramHashSet.iterator();
    while (((Iterator)localObject).hasNext()) {
      if ((UUID)((Iterator)localObject).next() == null) {
        throw new IllegalStateException("Null stream ID in: " + paramHashSet);
      }
    }
    if (isClosed()) {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(j, "Ignoring synchronize as LayerClient is closed");
      }
    }
    do
    {
      do
      {
        do
        {
          for (;;)
          {
            return;
            if (!LayerReceiver.isNetworkConnected(this.m))
            {
              if (com.layer.sdk.internal.lsdkk.k.a(2)) {
                com.layer.sdk.internal.lsdkk.k.a(j, "Ignoring synchronize as no network connection is available");
              }
              if (paramc != null) {
                paramc.a(null, new Error("No network connection available."));
              }
            }
            else
            {
              if (isConnected()) {
                break;
              }
              if (this.l.d())
              {
                if (com.layer.sdk.internal.lsdkk.k.a(2)) {
                  com.layer.sdk.internal.lsdkk.k.a(j, "Ignoring synchronize as LayerClient is not connected. Kicking off connection");
                }
                connect();
              }
              while (paramc != null)
              {
                paramc.a(null, new Error("Not connected to Layer."));
                return;
                if (com.layer.sdk.internal.lsdkk.k.a(2)) {
                  com.layer.sdk.internal.lsdkk.k.a(j, "Ignoring synchronize as LayerClient is not connected. Skipping connect per property");
                }
              }
            }
          }
          localObject = r();
          if (localObject != null) {
            break;
          }
          if (com.layer.sdk.internal.lsdkk.k.a(2)) {
            com.layer.sdk.internal.lsdkk.k.a(j, "Ignoring synchronize as LayerClient doesn't have valid session");
          }
        } while (paramc == null);
        paramc.a(null, new Error("No session to synchronize."));
        return;
        if (t()) {
          break;
        }
        if (com.layer.sdk.internal.lsdkk.k.a(2)) {
          com.layer.sdk.internal.lsdkk.k.a(j, "Ignoring synchronize as LayerClient is not authenticated / is-authenticating");
        }
      } while (paramc == null);
      paramc.a(null, new Error("Not authenticated, or authentication challenged."));
      return;
      if ((((b)localObject).p() != b.a.c) || (parame != com.layer.sdk.internal.lsdki.a.e.c)) {
        break;
      }
    } while (!com.layer.sdk.internal.lsdkk.k.a(2));
    com.layer.sdk.internal.lsdkk.k.a(j, "Ignoring synchronize request for NORMAL_SYNCRECON as LayerClient has not performed HISTORIC_SYNCRECON yet");
    return;
    com.layer.sdk.internal.lsdkd.h.a locala = new com.layer.sdk.internal.lsdkd.h.a((com.layer.sdk.internal.lsdkd.h)localObject);
    locala.m().a(new com.layer.sdk.internal.lsdkd.g((com.layer.sdk.internal.lsdkd.j)((b)localObject).m()));
    ((b)localObject).e().a(new com.layer.sdk.internal.lsdki.a.a(parame, this.l.g(), ((b)localObject).d(), ((b)localObject).i(), B(), ((b)localObject).k(), locala, this, paramc, ((b)localObject).f(), (LayerClient.Options.HistoricSyncPolicy)this.A.get(), paramBoolean3, paramHashSet, paramBoolean4, paramBoolean5), paramBoolean1, paramBoolean2);
  }
  
  public void a(b.b paramb)
  {
    switch (22.b[paramb.ordinal()])
    {
    default: 
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(j, "Unknown app state: " + paramb);
      }
      return;
    case 1: 
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(j, "App in foreground");
      }
      this.i.b();
      if (isConnected()) {
        w();
      }
      for (;;)
      {
        P();
        return;
        if ((K()) && (!isClosed())) {
          connect();
        }
      }
    }
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "App in background");
    }
    O();
  }
  
  public void a(f.a parama)
  {
    this.V.a(parama);
  }
  
  public void a(Exception paramException)
  {
    if (this.H != null) {
      this.H.a(this, paramException);
    }
    if (com.layer.sdk.internal.lsdkk.k.a(6)) {
      com.layer.sdk.internal.lsdkk.k.d(j, "Push Error", paramException);
    }
  }
  
  public void a(Runnable paramRunnable)
  {
    Handler localHandler = this.P;
    if (localHandler == null)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(j, "Not initialized; ignoring request to execute: " + paramRunnable);
      }
      return;
    }
    localHandler.post(paramRunnable);
  }
  
  protected void a(String paramString)
  {
    try
    {
      if (C().a(com.layer.sdk.internal.lsdkd.m.c(paramString), false) != null)
      {
        if (com.layer.sdk.internal.lsdkk.k.a(2)) {
          com.layer.sdk.internal.lsdkk.k.a(j, "Initial identity object for authenticated user already exists. Skipping identity creation.");
        }
        return;
      }
      locale = new com.layer.sdk.internal.lsdkd.lsdka.e(paramString);
      paramString = C().a(com.layer.sdk.internal.lsdkd.k.a.a);
    }
    finally
    {
      try
      {
        for (;;)
        {
          com.layer.sdk.internal.lsdkd.lsdka.e locale;
          C().a(paramString, new com.layer.sdk.internal.lsdkd.d[] { locale });
          C().a(paramString, true);
        }
      }
      finally
      {
        C().a(paramString, false);
      }
      paramString = finally;
    }
  }
  
  public void a(final String paramString1, final String paramString2, List<com.layer.b.d.c> paramList, final com.layer.b.d.h paramh, final com.layer.b.f.c.n paramn)
  {
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Transport push event(s) received. conversationId: " + paramString1 + ". messageId: " + paramString2 + ". maybeStream: " + paramh + ". maybeStreamMetadata: " + paramn + ". events: " + paramList);
    }
    if (isClosed()) {}
    do
    {
      do
      {
        return;
      } while (r() == null);
      if (paramList == null)
      {
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.e(j, "onPushEvent has null events");
        }
        throw new IllegalArgumentException("onPushEvent has null events");
      }
      Object localObject;
      if (this.H != null)
      {
        localObject = paramList.iterator();
        while (((Iterator)localObject).hasNext())
        {
          com.layer.b.d.c localc = (com.layer.b.d.c)((Iterator)localObject).next();
          this.H.a(this, paramString1, paramString2, localc);
        }
      }
      paramString1 = new HashSet();
      paramString2 = new LinkedList();
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        localObject = (com.layer.b.d.c)paramList.next();
        if (((com.layer.b.f.c.d)localObject).b) {
          if (this.u.a((com.layer.b.d.c)localObject)) {
            break;
          }
        } else {
          for (;;)
          {
            paramString1.add(((com.layer.b.d.c)localObject).bvS);
            break;
            if (((com.layer.b.f.c.d)localObject).bCE == com.layer.b.f.c.e.bDD) {
              break;
            }
            paramString2.add(localObject);
          }
        }
      }
    } while ((paramString2.size() <= 0) && (paramString1.size() <= 0));
    b(new Runnable()
    {
      public final void run()
      {
        if (paramString2.size() > 0) {
          a.this.a(paramString2, paramh, paramn, paramString1);
        }
        while (paramString1.size() <= 0) {
          return;
        }
        a.this.a(com.layer.sdk.internal.lsdki.a.e.c, true, false, paramString1, false);
      }
    });
  }
  
  public void a(String paramString, UUID paramUUID, com.layer.sdk.internal.lsdkk.lsdka.a.a parama)
  {
    if (com.layer.sdk.internal.lsdkk.k.d()) {
      com.layer.sdk.internal.lsdkk.k.c("LayerClient: Authentication reported");
    }
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "LayerClient: Successfully authenticated. UserID: " + paramString + ". LayerUserID: " + paramUUID + ". AuthType: " + parama);
    }
    this.i.b();
    a(this.h.b(), paramUUID, paramString);
    a(paramString);
    if (isConnected()) {
      w();
    }
    switch (22.bqe[parama.ordinal()])
    {
    default: 
      return;
    }
    c(paramString);
  }
  
  public void a(final String paramString, final UUID paramUUID, final LayerTypingIndicatorListener.TypingIndicator paramTypingIndicator)
  {
    Object localObject = r();
    if (localObject == null) {}
    do
    {
      do
      {
        return;
        paramUUID = ((b)localObject).k().b(paramUUID);
      } while (paramUUID == null);
      localObject = ((b)localObject).m();
      paramUUID = ((com.layer.sdk.internal.lsdkd.f)localObject).b(paramUUID.getId(), true);
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(j, "Typing indicator received, conversation Id: " + paramUUID.getId() + ", userId: " + paramString + ", indicator: " + paramTypingIndicator + ", informing: " + this.M.c() + " listeners");
      }
    } while (isClosed());
    paramString = (Identity)((com.layer.sdk.internal.lsdkd.f)localObject).a(com.layer.sdk.internal.lsdkd.m.c(paramString), false);
    this.M.a(this, new j.b() {});
  }
  
  public void a(String paramString, boolean paramBoolean)
  {
    this.z.set(Boolean.valueOf(false));
  }
  
  public void a(HashSet<UUID> paramHashSet)
  {
    if (isClosed()) {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(j, "Ignoring syncable action as LayerClient is closed");
      }
    }
    do
    {
      return;
      if (this.l.e())
      {
        a(com.layer.sdk.internal.lsdki.a.e.c, true, false, paramHashSet, false);
        return;
      }
    } while (!com.layer.sdk.internal.lsdkk.k.a(2));
    com.layer.sdk.internal.lsdkk.k.a(j, "Ignoring syncable action per mProperties.isSyncOnApiAction");
  }
  
  public void a(List<LayerException> paramList)
  {
    final ArrayList localArrayList = new ArrayList(paramList.size());
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Found " + paramList.size() + " during sync iteration. Logging public and non-public exceptions.");
    }
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      LayerException localLayerException = (LayerException)paramList.next();
      if (com.layer.sdk.internal.lsdkk.k.a(localLayerException))
      {
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.d(j, "Exception during sync", localLayerException);
        }
        localArrayList.add(localLayerException);
      }
      else if (com.layer.sdk.internal.lsdkk.k.a(2))
      {
        com.layer.sdk.internal.lsdkk.k.a(j, "Non-public exception: " + localLayerException);
      }
    }
    if (localArrayList.isEmpty()) {}
    while (isClosed()) {
      return;
    }
    this.K.a(this, new j.b() {});
  }
  
  protected void a(final List<com.layer.b.d.c> paramList, final com.layer.b.d.h paramh, final com.layer.b.f.c.n paramn, final HashSet<UUID> paramHashSet)
  {
    if (isClosed()) {
      return;
    }
    this.V.a(new f.c()
    {
      public final void a()
      {
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext())
        {
          com.layer.b.d.c localc = (com.layer.b.d.c)localIterator.next();
          if (!localc.r()) {
            localc.dx(0);
          }
          if (!localc.xE())
          {
            if (com.layer.sdk.internal.lsdkk.k.a(6)) {
              com.layer.sdk.internal.lsdkk.k.e(a.wr(), "Push event with no seq encountered: " + localc);
            }
            throw new IllegalArgumentException("Push event with no seq encountered");
          }
        }
      }
    });
  }
  
  public void a(List<Policy> paramList1, List<Policy> paramList2)
  {
    b(paramList1, paramList2);
  }
  
  public void a(UUID paramUUID, LayerTypingIndicatorListener.TypingIndicator paramTypingIndicator)
  {
    this.u.a(paramUUID, paramTypingIndicator);
  }
  
  public boolean a(Throwable paramThrowable)
  {
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Transport push connection disconnected");
    }
    if (this.H != null) {
      this.H.a(this, paramThrowable);
    }
    return (!isClosed()) && (N());
  }
  
  public boolean addPolicy(Policy paramPolicy)
  {
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Add policy");
    }
    Object localObject = a(LayerException.Type.NOT_AUTHENTICATED, "Can not add policies without a logged in user.");
    if (!validatePolicy(paramPolicy)) {}
    do
    {
      return false;
      localObject = ((b)localObject).f();
    } while (localObject == null);
    return ((com.layer.sdk.internal.lsdkf.c)localObject).a(paramPolicy).booleanValue();
  }
  
  public void answerAuthenticationChallenge(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      if (com.layer.sdk.internal.lsdkk.k.a(6)) {
        com.layer.sdk.internal.lsdkk.k.e(j, "Null / Empty identity token");
      }
      throw new IllegalArgumentException("Null / Empty identity token");
    }
    try
    {
      com.layer.b.a.g localg = com.layer.b.a.g.dy(paramString);
      if (TextUtils.isEmpty(localg.c))
      {
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.e(j, "Identity token's userId is null or empty: " + paramString);
        }
        throw new IllegalArgumentException("Identity token's userId is null or empty");
      }
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(6)) {
        com.layer.sdk.internal.lsdkk.k.e(j, "Identity token is not using valid encoding: " + paramString);
      }
      throw new IllegalArgumentException("Identity token is not using valid encoding");
    }
    if (TextUtils.isEmpty(localUnsupportedEncodingException.d))
    {
      if (com.layer.sdk.internal.lsdkk.k.a(6)) {
        com.layer.sdk.internal.lsdkk.k.e(j, "Identity token's nonce is null or empty: " + paramString);
      }
      throw new IllegalArgumentException("Identity token's nonce is null or empty");
    }
    if (localUnsupportedEncodingException.d.contains(" "))
    {
      if (com.layer.sdk.internal.lsdkk.k.a(6)) {
        com.layer.sdk.internal.lsdkk.k.e(j, "Identity token's nonce contains space: " + paramString + " . Nonce: " + localUnsupportedEncodingException.d);
      }
      throw new IllegalArgumentException("Identity token's nonce contains space");
    }
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Answering authentication challenge, identityToken length: " + paramString.length());
    }
    this.r.b(paramString);
  }
  
  public LayerClient authenticate()
  {
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Authenticating");
    }
    if (com.layer.sdk.internal.lsdkk.k.d()) {
      com.layer.sdk.internal.lsdkk.k.c("LayerClient: Authenticate called");
    }
    this.i.b();
    c(new Runnable()
    {
      public final void run()
      {
        a.e(a.this).c();
      }
    });
    return this;
  }
  
  protected a b(a parama)
  {
    synchronized (d)
    {
      a locala = a(parama);
      e.set(parama);
      return locala;
    }
  }
  
  public void b(com.layer.b.f.a.g paramg)
  {
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Transport push for identity update received");
    }
    if (this.H != null) {
      this.H.a(this, paramg);
    }
    a(paramg);
  }
  
  public void b(Runnable paramRunnable)
  {
    com.layer.a.b.a locala = this.R;
    if (locala == null)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(j, "Not initialized; ignoring request to execute: " + paramRunnable);
      }
      return;
    }
    locala.execute(paramRunnable);
  }
  
  public void b(String paramString)
  {
    if (com.layer.sdk.internal.lsdkk.k.d()) {
      com.layer.sdk.internal.lsdkk.k.c("LayerClient: Alerting authentication has been challenged");
    }
    d(paramString);
  }
  
  protected void b(final List<com.layer.b.f.a.i> paramList)
  {
    if (isClosed()) {
      return;
    }
    this.V.a(new f.a()
    {
      public final void a(Object paramAnonymousObject)
      {
        paramAnonymousObject = null;
        Object localObject1 = a.this.r();
        if (localObject1 == null) {
          return;
        }
        com.layer.sdk.internal.lsdke.g localg = ((b)localObject1).k();
        ArrayList localArrayList = new ArrayList(paramList.size());
        localObject1 = paramList.iterator();
        while (((Iterator)localObject1).hasNext())
        {
          com.layer.b.f.a.i locali = (com.layer.b.f.a.i)((Iterator)localObject1).next();
          localArrayList.add(new com.layer.sdk.internal.lsdkd.lsdka.n(locali.a, Presence.PresenceStatus.findByValue(locali.bxp.a), new Date(locali.c), null));
        }
        try
        {
          localObject1 = localg.e();
          paramAnonymousObject = localObject1;
          localg.a(localArrayList, com.layer.sdk.internal.lsdke.lsdkc.c.a.b);
          paramAnonymousObject = localObject1;
          ((SQLiteDatabase)localObject1).setTransactionSuccessful();
          localg.i((SQLiteDatabase)localObject1);
          a.this.b(new Runnable()
          {
            public final void run()
            {
              a.this.a(com.layer.sdk.internal.lsdki.a.e.c, true, true, false, new HashSet(), null, false, false);
            }
          });
          return;
        }
        finally
        {
          localg.i((SQLiteDatabase)paramAnonymousObject);
        }
      }
      
      public final void a(Object paramAnonymousObject, Throwable paramAnonymousThrowable)
      {
        a.this.a(Collections.singletonList(new LayerException(LayerException.Type.UNDEFINED_SYNC_FAILURE, paramAnonymousThrowable.getMessage(), paramAnonymousThrowable)));
      }
    });
  }
  
  public void b(final List<Policy> paramList1, final List<Policy> paramList2)
  {
    com.layer.sdk.internal.lsdkk.k.a locala;
    StringBuilder localStringBuilder;
    if (com.layer.sdk.internal.lsdkk.k.a(2))
    {
      locala = j;
      localStringBuilder = new StringBuilder("Policy update with size ");
      if (paramList2 != null) {
        break label52;
      }
    }
    label52:
    for (int i1 = 0;; i1 = paramList2.size())
    {
      com.layer.sdk.internal.lsdkk.k.a(locala, i1);
      if (!isClosed()) {
        break;
      }
      return;
    }
    this.N.a(this, new j.b() {});
  }
  
  public void b(UUID paramUUID, LayerTypingIndicatorListener.TypingIndicator paramTypingIndicator)
  {
    if (isClosed()) {}
    Identity localIdentity;
    do
    {
      return;
      localIdentity = getAuthenticatedUser();
    } while (localIdentity == null);
    com.layer.b.d.c localc = new com.layer.b.d.c((byte)0);
    localc.b(UUID.randomUUID());
    localc.bvS = paramUUID;
    localc.c = localIdentity.getUserId();
    localc.bCE = com.layer.b.f.c.e.bDm;
    localc.b = true;
    localc.xQ();
    localc.b((byte)1);
    paramUUID = new com.layer.b.f.c.a();
    paramUUID.a = "application/vnd.layer.messaging.typing-indicator; version=1.0";
    paramUUID.t(new byte[] { (byte)paramTypingIndicator.getValue() });
    localc.bCF = Collections.singletonList(paramUUID);
    paramUUID = new com.layer.sdk.internal.lsdki.lsdkc.lsdka.j(this.t, null, Collections.singletonList(localc));
    this.R.execute(paramUUID.b());
  }
  
  protected a c(a parama)
  {
    synchronized (d)
    {
      a locala = a(parama);
      if (locala == parama)
      {
        e.set(null);
        return locala;
      }
      return null;
    }
  }
  
  public void c()
  {
    for (;;)
    {
      synchronized (d)
      {
        i1 = this.f - 1;
        this.f = i1;
        if (i1 == 0)
        {
          i1 = 1;
          if (i1 != 0) {
            d();
          }
          return;
        }
      }
      int i1 = 0;
    }
  }
  
  public void c(Runnable paramRunnable)
  {
    com.layer.a.b.a locala = this.S;
    if (locala == null)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(j, "Not initialized; ignoring request to execute: " + paramRunnable);
      }
      return;
    }
    locala.execute(paramRunnable);
  }
  
  public void c(List<com.layer.b.f.a.i> paramList)
  {
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Transport push for presence received: " + paramList);
    }
    if (this.H != null) {
      this.H.a(this, paramList);
    }
    b(paramList);
  }
  
  public void close()
  {
    synchronized (d)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(j, "LayerClientImpl::Close:Enter");
      }
      c();
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(j, "LayerClientImpl::Close:Exit");
      }
      return;
    }
  }
  
  public LayerClient connect()
  {
    if (isClosed())
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(j, "Aborting connect() due to initialization");
      }
      return this;
    }
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Connect requested");
    }
    if (this.s == null) {
      throw new IllegalStateException("Can't connect without a Connection Manager");
    }
    if (com.layer.sdk.internal.lsdkk.k.d()) {
      com.layer.sdk.internal.lsdkk.k.c("LayerClient: Requesting connection");
    }
    this.s.b();
    return this;
  }
  
  protected void d()
  {
    synchronized (d)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(j, "LayerClientImpl::dispose:Enter");
      }
      if (this.g != e.b) {
        return;
      }
      this.g = e.c;
      if (com.layer.sdk.internal.lsdkk.k.a(4)) {
        com.layer.sdk.internal.lsdkk.k.c(j, "Disposing...");
      }
      P();
      com.layer.sdk.internal.lsdkk.b localb = (com.layer.sdk.internal.lsdkk.b)c.get();
      if (localb != null) {
        localb.b(this);
      }
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(j, "Disposing: closing managers.");
      }
      if (this.u != null) {
        this.u.b();
      }
      if (this.w != null) {
        this.w.b();
      }
      if (this.s != null) {
        this.s.g();
      }
      if (this.r != null) {
        this.r.k();
      }
      if (this.t != null) {
        new AsyncTask() {}.execute(new Void[0]);
      }
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(j, "Disposing: closing executors.");
      }
      q.a(this.T);
      q.a(this.S);
      q.a(this.R);
      q.a(this.Q);
      q.a(this.U);
      q.b(this.T);
      q.b(this.S);
      q.b(this.R);
      q.b(this.Q);
      q.b(this.U);
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(j, "Disposing: closing session.");
      }
      f();
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(j, "Disposing: clearing listeners.");
      }
      this.I.a();
      this.J.a();
      this.K.a();
      this.L.a();
      this.N.a();
      this.M.a();
      this.O.a();
      this.T = null;
      this.S = null;
      this.R = null;
      this.Q = null;
      this.l = null;
      this.h = null;
      this.P = null;
      this.n = null;
      this.q = null;
      this.t = null;
      this.w = null;
      this.r = null;
      this.u = null;
      this.s = null;
      this.o = null;
      this.m = null;
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(j, "Disposing: removing instance.");
      }
      c(this);
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(j, "Disposing complete.");
      }
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(j, "LayerClientImpl::dispose:Exit");
      }
      return;
    }
  }
  
  public void d(Runnable paramRunnable)
  {
    com.layer.a.b.a locala = this.R;
    if (locala == null)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(j, "Not initialized; ignoring request to execute: " + paramRunnable);
      }
      return;
    }
    locala.execute(paramRunnable);
  }
  
  public LayerClient deauthenticate()
  {
    return deauthenticate(LayerClient.DeauthenticationAction.CLEAR_LOCAL_DATA);
  }
  
  public LayerClient deauthenticate(final LayerClient.DeauthenticationAction paramDeauthenticationAction)
  {
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "LayerClientImpl::deauthenticate:Enter");
    }
    c(new Runnable()
    {
      public final void run()
      {
        a.a(a.this, paramDeauthenticationAction);
      }
    });
    return this;
  }
  
  public LayerClient disconnect()
  {
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Disconnect requested");
    }
    if (this.s == null) {
      throw new IllegalStateException("Can't disconnect without a Connection Manager");
    }
    this.s.c();
    return this;
  }
  
  public Context e()
  {
    return this.m;
  }
  
  public List executeQuery(Query<? extends Queryable> paramQuery, Query.ResultType paramResultType)
  {
    if (r() == null)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(j, "Trying to execute query without a session: " + paramQuery);
      }
      return new ArrayList();
    }
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Executing query: " + paramQuery + " for: " + paramResultType);
    }
    return a(T(), paramQuery.getQueryClass()).a(paramQuery, paramResultType);
  }
  
  public Long executeQueryForCount(Query<? extends Queryable> paramQuery)
  {
    if (r() == null)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(j, "Trying to execute query without a session: " + paramQuery);
      }
      return Long.valueOf(0L);
    }
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Executing query for count: " + paramQuery);
    }
    return a(T(), paramQuery.getQueryClass()).c(paramQuery);
  }
  
  public List<Uri> executeQueryForIds(Query<? extends Queryable> paramQuery)
  {
    if (r() == null)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(j, "Trying to execute query without a session: " + paramQuery);
      }
      return new ArrayList();
    }
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Executing query for Ids: " + paramQuery);
    }
    return a(T(), paramQuery.getQueryClass()).d(paramQuery);
  }
  
  public List<? extends Queryable> executeQueryForObjects(Query<? extends Queryable> paramQuery)
  {
    if (r() == null)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(j, "Trying to execute query without a session: " + paramQuery);
      }
      return new ArrayList();
    }
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Executing query for objects: " + paramQuery);
    }
    return a(T(), paramQuery.getQueryClass()).a(paramQuery);
  }
  
  /* Error */
  public void f()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 303	com/layer/sdk/internal/a:y	Ljava/util/concurrent/atomic/AtomicReference;
    //   6: aconst_null
    //   7: invokevirtual 1907	java/util/concurrent/atomic/AtomicReference:getAndSet	(Ljava/lang/Object;)Ljava/lang/Object;
    //   10: checkcast 861	com/layer/sdk/internal/b
    //   13: astore_1
    //   14: aload_1
    //   15: ifnonnull +6 -> 21
    //   18: aload_0
    //   19: monitorexit
    //   20: return
    //   21: aload_1
    //   22: aload_0
    //   23: getfield 287	com/layer/sdk/internal/a:v	Ljava/util/concurrent/atomic/AtomicReference;
    //   26: invokevirtual 461	java/util/concurrent/atomic/AtomicReference:get	()Ljava/lang/Object;
    //   29: checkcast 281	com/layer/sdk/LayerClient$DeauthenticationAction
    //   32: invokevirtual 1908	com/layer/sdk/internal/b:a	(Lcom/layer/sdk/LayerClient$DeauthenticationAction;)V
    //   35: goto -17 -> 18
    //   38: astore_1
    //   39: aload_0
    //   40: monitorexit
    //   41: aload_1
    //   42: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	43	0	this	a
    //   13	9	1	localb	b
    //   38	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	14	38	finally
    //   21	35	38	finally
  }
  
  protected void finalize()
    throws Throwable
  {
    synchronized (d)
    {
      try
      {
        d();
        super.finalize();
        return;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          if (com.layer.sdk.internal.lsdkk.k.a(6)) {
            com.layer.sdk.internal.lsdkk.k.d(j, "Error when closing", localException);
          }
        }
      }
    }
  }
  
  public void follow(Identity... paramVarArgs)
  {
    String[] arrayOfString = new String[paramVarArgs.length];
    int i1 = 0;
    while (i1 < paramVarArgs.length)
    {
      arrayOfString[i1] = paramVarArgs[i1].getUserId();
      i1 += 1;
    }
    follow(arrayOfString);
  }
  
  public void follow(String... paramVarArgs)
  {
    com.layer.sdk.internal.lsdkd.lsdka.e.a(a(LayerException.Type.NOT_AUTHENTICATED, "Cannot follow an identity when no user is authenticated."), paramVarArgs);
  }
  
  public com.layer.sdk.internal.lsdkk.lsdka.a g()
  {
    return this.r;
  }
  
  public Queryable get(Uri paramUri)
  {
    b localb = r();
    if (localb == null) {
      return null;
    }
    return (Queryable)localb.m().a(paramUri, true);
  }
  
  public Uri getAppId()
  {
    if (this.h == null) {
      return null;
    }
    return this.h.a();
  }
  
  public Identity getAuthenticatedUser()
  {
    b localb = r();
    if (localb == null) {
      return null;
    }
    return localb.j();
  }
  
  public Set<String> getAutoDownloadMimeTypes()
  {
    return this.x.a();
  }
  
  public long getAutoDownloadSizeThreshold()
  {
    return this.x.b();
  }
  
  public Conversation getConversation(Uri paramUri)
  {
    return a(LayerException.Type.NOT_AUTHENTICATED, "Cannot get conversation when no user is authenticated.").m().b(paramUri, true);
  }
  
  public List<Uri> getConversationIds()
  {
    return a(LayerException.Type.NOT_AUTHENTICATED, "Cannot get conversation IDs when no user is authenticated.").k().a(new com.layer.b.f.c.o[0]);
  }
  
  public List<Conversation> getConversations()
  {
    return a(LayerException.Type.NOT_AUTHENTICATED, "Cannot get conversations when no user is authenticated.").m().a(true, new com.layer.b.f.c.o[] { com.layer.b.f.c.o.bFt, com.layer.b.f.c.o.bFv });
  }
  
  public List<Conversation> getConversations(List<Uri> paramList)
  {
    return a(LayerException.Type.NOT_AUTHENTICATED, "Cannot get conversations when no user is authenticated.").m().a(paramList, true);
  }
  
  public List<Conversation> getConversationsWithParticipants(List<String> paramList)
  {
    b localb = a(LayerException.Type.NOT_AUTHENTICATED, "Cannot get conversations when no user is authenticated.");
    if (paramList == null) {
      throw new LayerException(LayerException.Type.NULL_PARTICIPANTS, "Cannot get conversations with null participants.");
    }
    if (paramList.isEmpty()) {
      throw new LayerException(LayerException.Type.NO_PARTICIPANTS, "Cannot get conversations with no participants.");
    }
    HashSet localHashSet = new HashSet();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (str == null) {
        throw new LayerException(LayerException.Type.NULL_PARTICIPANT, "Cannot get conversations with null participant: " + paramList);
      }
      localHashSet.add(str);
    }
    localHashSet.add(localb.i());
    return localb.m().a(localHashSet, true);
  }
  
  public long getDiskCapacity()
  {
    return this.x.c();
  }
  
  public long getDiskUtilization()
  {
    return a(LayerException.Type.NOT_AUTHENTICATED, "Cannot get disk utilization when no user is authenticated.").k().a();
  }
  
  public Message getMessage(Uri paramUri)
  {
    return a(LayerException.Type.NOT_AUTHENTICATED, "Cannot get message when no user is authenticated.").m().c(paramUri, true);
  }
  
  public List<Uri> getMessageIds(Conversation paramConversation)
  {
    b localb = a(LayerException.Type.NOT_AUTHENTICATED, "Cannot get message IDs when no user is authenticated.");
    if (((com.layer.sdk.internal.lsdkd.lsdka.c)paramConversation).b()) {
      return new ArrayList();
    }
    return localb.k().a(((com.layer.sdk.internal.lsdkd.lsdka.c)paramConversation).g());
  }
  
  public List<Message> getMessages(Conversation paramConversation)
  {
    b localb = a(LayerException.Type.NOT_AUTHENTICATED, "Cannot get messages when no user is authenticated.");
    if (((com.layer.sdk.internal.lsdkd.lsdka.c)paramConversation).b()) {
      return new ArrayList();
    }
    return localb.m().a((com.layer.sdk.internal.lsdkd.lsdka.c)paramConversation, true);
  }
  
  public List<Message> getMessages(List<Uri> paramList)
  {
    return a(LayerException.Type.NOT_AUTHENTICATED, "Cannot get messages when no user is authenticated.").m().b(paramList, true);
  }
  
  public List<Policy> getPolicies()
  {
    com.layer.sdk.internal.lsdkf.c localc = a(LayerException.Type.NOT_AUTHENTICATED, "Can not get policies without a logged in user.").f();
    if ((localc != null) && (localc.a() != null)) {
      return new ArrayList(localc.a());
    }
    return null;
  }
  
  public Presence.PresenceStatus getPresenceStatus()
  {
    Identity localIdentity = getAuthenticatedUser();
    if (localIdentity == null)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(6)) {
        com.layer.sdk.internal.lsdkk.k.e(j, "Cannot get PresenceStatus when no user is authenticated");
      }
      throw new LayerException(LayerException.Type.NOT_AUTHENTICATED, "Cannot get PresenceStatus when no user is authenticated");
    }
    return localIdentity.getPresenceStatus();
  }
  
  public boolean h()
  {
    return isConnected();
  }
  
  public void i()
  {
    connect();
  }
  
  public boolean insertPolicy(Policy paramPolicy, int paramInt)
  {
    return addPolicy(paramPolicy);
  }
  
  public boolean isAuthenticated()
  {
    return s();
  }
  
  public boolean isClosed()
  {
    for (;;)
    {
      synchronized (d)
      {
        if (this.g != e.b)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public boolean isConnected()
  {
    return (this.s != null) && (this.s.e());
  }
  
  public boolean isConnecting()
  {
    return (this.s != null) && (this.s.f());
  }
  
  public void j()
  {
    f();
    x();
    this.F = null;
    J();
  }
  
  public void k()
  {
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Clearing nonce latch due to nonce not found. Current nonce latch is: " + (String)this.i.a());
    }
    this.i.b();
  }
  
  public void l()
  {
    if (!this.C) {
      return;
    }
    I();
    this.F.a();
  }
  
  public void m()
  {
    a(new HashSet());
  }
  
  public void n()
  {
    a(null);
  }
  
  public Conversation newConversation(ConversationOptions paramConversationOptions, Set<Identity> paramSet)
  {
    HashSet localHashSet = new HashSet(paramSet.size());
    paramSet = paramSet.iterator();
    while (paramSet.hasNext())
    {
      Identity localIdentity = (Identity)paramSet.next();
      if (localIdentity == null)
      {
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.e(j, "Cannot create conversation with null user-id for a participant");
        }
        throw new LayerException(LayerException.Type.NULL_PARTICIPANT, "Null participant");
      }
      if (localIdentity.getUserId().isEmpty())
      {
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.e(j, "Cannot create conversation with empty user-id for a participant : " + localIdentity);
        }
        throw new LayerException(LayerException.Type.EMPTY_PARTICIPANT, "Empty participant");
      }
      localHashSet.add(localIdentity.getUserId());
    }
    return newConversationWithUserIds(paramConversationOptions, localHashSet);
  }
  
  public Conversation newConversationWithUserIds(ConversationOptions paramConversationOptions, Set<String> paramSet)
  {
    Object localObject1 = a(LayerException.Type.NOT_AUTHENTICATED, "Cannot create a new conversation when no user is authenticated.");
    Object localObject2 = paramSet.iterator();
    while (((Iterator)localObject2).hasNext())
    {
      String str = (String)((Iterator)localObject2).next();
      if (str == null)
      {
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.e(j, "Cannot create conversation with null user-id for a participant");
        }
        throw new LayerException(LayerException.Type.NULL_PARTICIPANT, "Null participant");
      }
      if (str.isEmpty())
      {
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.e(j, "Cannot create conversation with empty user-id for a participant");
        }
        throw new LayerException(LayerException.Type.EMPTY_PARTICIPANT, "Empty participant");
      }
    }
    paramSet = new HashSet(paramSet);
    paramSet.add(((b)localObject1).i());
    localObject2 = new com.layer.sdk.internal.lsdkd.lsdka.c(paramConversationOptions, paramSet);
    ((com.layer.sdk.internal.lsdkd.lsdka.c)localObject2).a((com.layer.sdk.internal.lsdkd.h)localObject1);
    localObject1 = (com.layer.sdk.internal.lsdkd.j)((b)localObject1).m();
    if ((paramConversationOptions.isDistinct()) && (((com.layer.sdk.internal.lsdkd.j)localObject1).a(paramSet)))
    {
      paramConversationOptions = ((com.layer.sdk.internal.lsdkd.j)localObject1).b(paramSet);
      if ((!paramConversationOptions.c()) && (paramConversationOptions.d())) {
        paramConversationOptions.b(false);
      }
      throw new LayerConversationException(LayerException.Type.DISTINCT_CONVERSATION_EXISTS, paramConversationOptions, "A distinct conversation with same set of participants exists already");
    }
    if (((com.layer.sdk.internal.lsdkd.lsdka.c)localObject2).isDistinct()) {
      ((com.layer.sdk.internal.lsdkd.j)localObject1).a((com.layer.sdk.internal.lsdkd.lsdka.c)localObject2);
    }
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Creating new Conversation, Id: " + ((com.layer.sdk.internal.lsdkd.lsdka.c)localObject2).getId());
    }
    return (Conversation)localObject2;
  }
  
  public <T extends Queryable> ListViewController<T> newListViewController(Query<T> paramQuery, Collection<String> paramCollection, ListViewController.Callback paramCallback)
  {
    if (paramCollection == null) {}
    for (paramCollection = null;; paramCollection = new HashSet(paramCollection)) {
      return new com.layer.sdk.internal.lsdkh.d(this, paramQuery, paramCollection, paramCallback);
    }
  }
  
  public Message newMessage(MessageOptions paramMessageOptions, List<MessagePart> paramList)
  {
    if (paramList.size() > 1000) {
      throw new LayerException(LayerException.Type.TOO_MANY_MESSAGE_PARTS, "A Message cannot contain more than 1000 MessageParts");
    }
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Creating new Message with " + paramList.size() + " parts...");
    }
    b localb = a(LayerException.Type.NOT_AUTHENTICATED, "Cannot create a new message when no user is authenticated.");
    paramMessageOptions = new com.layer.sdk.internal.lsdkd.lsdka.i(paramMessageOptions, paramList);
    paramMessageOptions.a(localb);
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Message created with  Id: " + paramMessageOptions.getId() + ".");
    }
    return paramMessageOptions;
  }
  
  public MessagePart newMessagePart(String paramString, InputStream paramInputStream, long paramLong)
  {
    if (!W.matcher(paramString).matches()) {
      throw new LayerException(LayerException.Type.INVALID_MIME_TYPE, "MIME-Types must have the format */*");
    }
    if (paramLong > 2147483648L) {
      throw new LayerException(LayerException.Type.MESSAGE_PART_TOO_LARGE, "Message part can not be larger than 2147483648 bytes.");
    }
    b localb = a(LayerException.Type.NOT_AUTHENTICATED, "Cannot create a new message part when no user is authenticated.");
    paramInputStream = com.layer.sdk.internal.lsdkd.lsdka.j.a(paramString, Long.valueOf(paramLong)).a(paramInputStream);
    paramInputStream.a(localb);
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Creating new MessagePart, MimeType: " + paramString + ", data stream size: " + paramLong + " bytes");
    }
    return paramInputStream;
  }
  
  public MessagePart newMessagePart(String paramString, byte[] paramArrayOfByte)
  {
    if (!W.matcher(paramString).matches()) {
      throw new LayerException(LayerException.Type.INVALID_MIME_TYPE, "MIME-Types must have the format */*");
    }
    if (paramArrayOfByte.length > 2147483648L) {
      throw new LayerException(LayerException.Type.MESSAGE_PART_TOO_LARGE, "Message part can not be larger than 2147483648 bytes.");
    }
    b localb = a(LayerException.Type.NOT_AUTHENTICATED, "Cannot create a new message part when no user is authenticated.");
    com.layer.sdk.internal.lsdkd.lsdka.j localj = com.layer.sdk.internal.lsdkd.lsdka.j.a(paramString, Long.valueOf(paramArrayOfByte.length)).a(paramArrayOfByte);
    localj.a(localb);
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Creating new MessagePart, MimeType: " + paramString + " data size: " + paramArrayOfByte.length + " bytes");
    }
    return localj;
  }
  
  public <T extends Queryable> RecyclerViewController<T> newRecyclerViewController(Query<T> paramQuery, Collection<String> paramCollection, RecyclerViewController.Callback paramCallback)
  {
    if (paramCollection == null) {}
    for (paramCollection = null;; paramCollection = new HashSet(paramCollection)) {
      return new com.layer.sdk.internal.lsdkh.h(this, paramQuery, paramCollection, paramCallback);
    }
  }
  
  public com.layer.sdk.internal.lsdkd.lsdka.a o()
  {
    return a(LayerException.Type.NOT_AUTHENTICATED, "Cannot get Announcement when no user is authenticated.").m().a(true);
  }
  
  public com.layer.a.b.a p()
  {
    return this.R;
  }
  
  public com.layer.a.b.a q()
  {
    return this.T;
  }
  
  public b r()
  {
    return (b)this.y.get();
  }
  
  public LayerClient registerAuthenticationListener(LayerAuthenticationListener paramLayerAuthenticationListener)
  {
    this.i.b();
    this.J.a(paramLayerAuthenticationListener);
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Registering LayerAuthenticationListener, " + this.J.c() + " listeners registered");
    }
    return this;
  }
  
  public LayerClient registerConnectionListener(LayerConnectionListener paramLayerConnectionListener)
  {
    this.I.a(paramLayerConnectionListener);
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Registering LayerConnectionListener, " + this.I.c() + " listeners registered");
    }
    return this;
  }
  
  public LayerClient registerEventListener(LayerChangeEventListener paramLayerChangeEventListener)
  {
    this.L.a(paramLayerChangeEventListener);
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Registering LayerChangeEventListener");
    }
    return this;
  }
  
  public LayerClient registerObjectExceptionListener(LayerObjectExceptionListener paramLayerObjectExceptionListener)
  {
    this.O.a(paramLayerObjectExceptionListener);
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Registering LayerObjectExceptionListener, " + this.O.c() + " listeners registered");
    }
    return this;
  }
  
  public LayerClient registerPolicyListener(LayerPolicyListener paramLayerPolicyListener)
  {
    this.N.a(paramLayerPolicyListener);
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Registering LayerPolicyListener, " + this.N.c() + " listeners registered");
    }
    return this;
  }
  
  public LayerClient registerProgressListener(MessagePart paramMessagePart, LayerProgressListener paramLayerProgressListener)
  {
    a(LayerException.Type.NOT_AUTHENTICATED, "Cannot register for MessagePart progress when no user is authenticated.").g().a(paramMessagePart, paramLayerProgressListener);
    return this;
  }
  
  public LayerClient registerSyncListener(LayerSyncListener paramLayerSyncListener)
  {
    this.K.a(paramLayerSyncListener);
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Registering LayerSyncListener, " + this.K.c() + " listeners registered");
    }
    return this;
  }
  
  public LayerClient registerTypingIndicator(LayerTypingIndicatorListener paramLayerTypingIndicatorListener)
  {
    this.M.a(paramLayerTypingIndicatorListener);
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Registering LayerTypingIndicatorListener, " + this.M.c() + " listeners registered");
    }
    return this;
  }
  
  public boolean removePolicy(Policy paramPolicy)
  {
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Remove policy");
    }
    Object localObject = a(LayerException.Type.NOT_AUTHENTICATED, "Can not remove policies without a logged in user.");
    if (!validatePolicy(paramPolicy)) {}
    do
    {
      return false;
      localObject = ((b)localObject).f();
    } while (localObject == null);
    return ((com.layer.sdk.internal.lsdkf.c)localObject).b(paramPolicy).booleanValue();
  }
  
  protected boolean s()
  {
    return r() != null;
  }
  
  public LayerClient setAutoDownloadMimeTypes(Collection<String> paramCollection)
  {
    this.x.a(paramCollection);
    return this;
  }
  
  public LayerClient setAutoDownloadSizeThreshold(long paramLong)
  {
    this.x.a(paramLong);
    return this;
  }
  
  public LayerClient setDiskCapacity(long paramLong)
  {
    b localb = a(LayerException.Type.NOT_AUTHENTICATED, "Cannot set disk capacity when no user is authenticated");
    this.x.b(paramLong);
    localb.g().d();
    return this;
  }
  
  public void setPresenceStatus(final Presence.PresenceStatus paramPresenceStatus)
  {
    if (isClosed()) {
      return;
    }
    final b localb = a(LayerException.Type.NOT_AUTHENTICATED, "Cannot set presence status when no user is authenticated.");
    if (!paramPresenceStatus.isUserSettable())
    {
      if (com.layer.sdk.internal.lsdkk.k.a(6)) {
        com.layer.sdk.internal.lsdkk.k.e(j, "Setting this PresenceStatus is not supported : " + paramPresenceStatus);
      }
      throw new IllegalArgumentException("Setting this PresenceStatus is not supported : " + paramPresenceStatus);
    }
    final com.layer.sdk.internal.lsdkd.lsdka.e locale = (com.layer.sdk.internal.lsdkd.lsdka.e)getAuthenticatedUser();
    locale.a(paramPresenceStatus);
    this.V.a(new f.a()
    {
      public final void a(Object paramAnonymousObject)
      {
        paramAnonymousObject = null;
        com.layer.sdk.internal.lsdke.g localg = localb.k();
        com.layer.sdk.internal.lsdkd.lsdka.n localn = new com.layer.sdk.internal.lsdkd.lsdka.n(locale.getUserId(), paramPresenceStatus, null, null);
        try
        {
          SQLiteDatabase localSQLiteDatabase = localg.e();
          paramAnonymousObject = localSQLiteDatabase;
          localg.a(Arrays.asList(new com.layer.sdk.internal.lsdkd.lsdka.n[] { localn }), com.layer.sdk.internal.lsdke.lsdkc.c.a.a);
          paramAnonymousObject = localSQLiteDatabase;
          localSQLiteDatabase.setTransactionSuccessful();
          localg.i(localSQLiteDatabase);
          a.this.b(new Runnable()
          {
            public final void run()
            {
              a.this.a(com.layer.sdk.internal.lsdki.a.e.c, true, true, false, new HashSet(), null, false, false);
            }
          });
          return;
        }
        finally
        {
          localg.i((SQLiteDatabase)paramAnonymousObject);
        }
      }
      
      public final void a(Object paramAnonymousObject, Throwable paramAnonymousThrowable)
      {
        a.this.a(Collections.singletonList(new LayerException(LayerException.Type.UNDEFINED_SYNC_FAILURE, paramAnonymousThrowable.getMessage(), paramAnonymousThrowable)));
      }
    });
  }
  
  public boolean t()
  {
    return (this.r != null) && (this.r.j());
  }
  
  public String toString()
  {
    Object localObject2 = null;
    StringBuilder localStringBuilder = new StringBuilder("LayerClient {SDK=").append(com.layer.sdk.internal.lsdkk.e.a()).append(", AppID=").append(getAppId()).append(", Connected=").append(isConnected()).append(", Connecting=");
    if (this.s == null)
    {
      localObject1 = null;
      localStringBuilder = localStringBuilder.append(localObject1).append(", Authenticated=").append(isAuthenticated()).append(", Options=");
      if (this.m != null) {
        break label122;
      }
    }
    label122:
    for (Object localObject1 = localObject2;; localObject1 = new LayerClient.Options(this.m))
    {
      return localObject1 + '}';
      localObject1 = Boolean.valueOf(this.s.f());
      break;
    }
  }
  
  public void u()
  {
    try
    {
      this.t.a(this.n.b());
      return;
    }
    catch (com.layer.b.d.m localm)
    {
      while (!com.layer.sdk.internal.lsdkk.k.a(6)) {}
      com.layer.sdk.internal.lsdkk.k.d(j, "TransportException when reconnecting", localm);
      return;
    }
    catch (IOException localIOException)
    {
      while (!com.layer.sdk.internal.lsdkk.k.a(6)) {}
      com.layer.sdk.internal.lsdkk.k.d(j, "IOException when reconnecting", localIOException);
    }
  }
  
  public void unFollow(Identity... paramVarArgs)
  {
    com.layer.sdk.internal.lsdkd.lsdka.e.a(a(LayerException.Type.NOT_AUTHENTICATED, "Cannot follow an identity when no user is authenticated."), paramVarArgs);
  }
  
  public LayerClient unregisterAuthenticationListener(LayerAuthenticationListener paramLayerAuthenticationListener)
  {
    this.J.b(paramLayerAuthenticationListener);
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Unregistering LayerAuthenticationListener, " + this.J.c() + " listeners registered");
    }
    return this;
  }
  
  public LayerClient unregisterConnectionListener(LayerConnectionListener paramLayerConnectionListener)
  {
    this.I.b(paramLayerConnectionListener);
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Unregistering LayerConnectionListener, " + this.I.c() + " listeners registered");
    }
    return this;
  }
  
  public LayerClient unregisterEventListener(LayerChangeEventListener paramLayerChangeEventListener)
  {
    this.L.b(paramLayerChangeEventListener);
    com.layer.sdk.internal.lsdkk.k.a locala;
    StringBuilder localStringBuilder;
    if (com.layer.sdk.internal.lsdkk.k.a(2))
    {
      locala = j;
      localStringBuilder = new StringBuilder("Unregistering LayerChangeEventListener, ");
      if (!this.L.b()) {
        break label64;
      }
    }
    label64:
    for (paramLayerChangeEventListener = "no";; paramLayerChangeEventListener = "still have")
    {
      com.layer.sdk.internal.lsdkk.k.a(locala, paramLayerChangeEventListener + " remaining listeners");
      return this;
    }
  }
  
  public LayerClient unregisterObjectExceptionListener(LayerObjectExceptionListener paramLayerObjectExceptionListener)
  {
    this.O.b(paramLayerObjectExceptionListener);
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Unregistering LayerObjectExceptionListener, " + this.O.c() + " listeners registered");
    }
    return this;
  }
  
  public LayerClient unregisterPolicyListener(LayerPolicyListener paramLayerPolicyListener)
  {
    this.N.b(paramLayerPolicyListener);
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Unregistering LayerPolicyListener, " + this.N.c() + " listeners registered");
    }
    return this;
  }
  
  public LayerClient unregisterProgressListener(MessagePart paramMessagePart, LayerProgressListener paramLayerProgressListener)
  {
    b localb = r();
    if (localb == null)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(j, "Ignoring request to unregister LayerProgressListener as there is no authenticated session to unregister with.");
      }
      return this;
    }
    localb.g().b(paramMessagePart, paramLayerProgressListener);
    return this;
  }
  
  public LayerClient unregisterSyncListener(LayerSyncListener paramLayerSyncListener)
  {
    this.K.b(paramLayerSyncListener);
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Unregistering LayerSyncListener, " + this.K.c() + " listeners registered");
    }
    return this;
  }
  
  public LayerClient unregisterTypingIndicator(LayerTypingIndicatorListener paramLayerTypingIndicatorListener)
  {
    this.M.b(paramLayerTypingIndicatorListener);
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Unregistering LayerTypingIndicatorListener, " + this.M.c() + " listeners registered");
    }
    return this;
  }
  
  public void v()
  {
    b localb = r();
    if (localb == null) {
      return;
    }
    if (localb.p() == b.a.c)
    {
      a(com.layer.sdk.internal.lsdki.a.e.b, true, true, new HashSet(), true);
      localb.a(b.a.b);
      return;
    }
    a(com.layer.sdk.internal.lsdki.a.e.c, true, true, new HashSet(), true);
  }
  
  public boolean validatePolicy(Policy paramPolicy)
  {
    return (paramPolicy.getPolicyType() != Policy.PolicyType.BLOCK) || (paramPolicy.getSentByUserID() != null);
  }
  
  public boolean w()
  {
    if ((y()) || (!N()) || (!isConnected()) || (this.l == null) || (!this.l.c()))
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(j, "Skipping transport push setup: isPushActive: " + y() + ". isInForeground: " + N() + ". isConnected: " + isConnected() + ". mProperties: " + this.l);
      }
      if (y())
      {
        if (com.layer.sdk.internal.lsdkk.k.a(2)) {
          com.layer.sdk.internal.lsdkk.k.a(j, "Push already active. Kicking off sync");
        }
        l();
        b localb = r();
        if (localb != null) {
          localb.f().d();
        }
        v();
      }
      return false;
    }
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Enabling transport channel");
    }
    R();
    return true;
  }
  
  public void waitForContent(Uri paramUri, long paramLong, LayerClient.ContentAvailableCallback paramContentAvailableCallback)
  {
    if (paramLong <= 0L) {
      throw new IllegalArgumentException("Timeout must be greater than 0. Timeout was: " + paramLong);
    }
    if (isClosed())
    {
      paramContentAvailableCallback.onContentFailed(this, paramUri, new IllegalStateException("LayerClient is closed"));
      return;
    }
    Object localObject = get(paramUri);
    if (localObject != null)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(j, "Content already available for " + paramUri);
      }
      paramContentAvailableCallback.onContentAvailable(this, (Queryable)localObject);
      return;
    }
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Content not yet available, waiting for " + paramUri);
    }
    localObject = new Handler();
    paramUri = new f(this, (Handler)localObject, paramUri, paramContentAvailableCallback);
    registerEventListener(paramUri);
    ((Handler)localObject).postDelayed(paramUri, paramLong);
  }
  
  public void waitForContent(Uri paramUri, LayerClient.ContentAvailableCallback paramContentAvailableCallback)
  {
    waitForContent(paramUri, k, paramContentAvailableCallback);
  }
  
  public void x()
  {
    if (!y()) {
      return;
    }
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Disabling transport channel");
    }
    S();
  }
  
  public boolean y()
  {
    return (B() != null) && (B().bxh);
  }
  
  public void z()
  {
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(j, "Transport push connection successfully established");
    }
    if (this.H != null) {
      this.H.a(this);
    }
    b(new Runnable()
    {
      public final void run()
      {
        a.this.l();
        b localb = a.this.r();
        if (localb != null) {
          localb.f().d();
        }
        a.this.v();
      }
    });
  }
  
  static abstract interface a
  {
    public abstract void a(int paramInt, StringBuilder paramStringBuilder);
  }
  
  public static class b
    implements a.d
  {
    protected boolean a = false;
    protected boolean b = true;
    protected boolean c = true;
    protected boolean d = true;
    protected boolean e = true;
    protected boolean f = true;
    protected boolean g = true;
    protected boolean h = true;
    protected int i = 1000;
    
    public boolean a()
    {
      return this.a;
    }
    
    public boolean b()
    {
      return this.b;
    }
    
    public boolean c()
    {
      return this.c;
    }
    
    public boolean d()
    {
      return this.d;
    }
    
    public boolean e()
    {
      return this.g;
    }
    
    public boolean f()
    {
      return this.h;
    }
    
    public int g()
    {
      return this.i;
    }
  }
  
  public static class c
    extends Exception
  {
    private final a a;
    
    public c(a parama)
    {
      this.a = parama;
    }
    
    public a a()
    {
      return this.a;
    }
  }
  
  public static abstract interface d
  {
    public abstract boolean a();
    
    public abstract boolean b();
    
    public abstract boolean c();
    
    public abstract boolean d();
    
    public abstract boolean e();
    
    public abstract boolean f();
    
    public abstract int g();
  }
  
  public static enum e
  {
    private e() {}
  }
  
  private static class f
    implements LayerChangeEventListener.BackgroundThread, Runnable
  {
    private static final com.layer.sdk.internal.lsdkk.k.a a = com.layer.sdk.internal.lsdkk.k.a(f.class);
    private final LayerClient b;
    private final Handler bqi;
    private final LayerClient.ContentAvailableCallback bqj;
    private final Uri d;
    
    public f(LayerClient paramLayerClient, Handler paramHandler, Uri paramUri, LayerClient.ContentAvailableCallback paramContentAvailableCallback)
    {
      this.b = paramLayerClient;
      this.bqi = paramHandler;
      this.d = paramUri;
      this.bqj = paramContentAvailableCallback;
    }
    
    private void a()
    {
      this.b.unregisterEventListener(this);
      this.bqi.removeCallbacks(this);
    }
    
    private void a(Runnable paramRunnable)
    {
      com.layer.sdk.internal.lsdkk.o localo = (com.layer.sdk.internal.lsdkk.o)this.b;
      if ((this.bqj instanceof LayerClient.ContentAvailableCallback.BackgroundThread))
      {
        localo.b(paramRunnable);
        return;
      }
      localo.a(paramRunnable);
    }
    
    public void onChangeEvent(LayerChangeEvent paramLayerChangeEvent)
    {
      try
      {
        paramLayerChangeEvent = paramLayerChangeEvent.getChanges().iterator();
        while (paramLayerChangeEvent.hasNext())
        {
          final Queryable localQueryable = (Queryable)((LayerChange)paramLayerChangeEvent.next()).getObject();
          if (localQueryable.getId().equals(this.d))
          {
            if (com.layer.sdk.internal.lsdkk.k.a(2)) {
              com.layer.sdk.internal.lsdkk.k.a(a, "Received content for " + this.d);
            }
            a();
            a(new Runnable()
            {
              public final void run()
              {
                a.f.b(a.f.this).onContentAvailable(a.f.a(a.f.this), localQueryable);
              }
            });
          }
        }
        return;
      }
      finally {}
    }
    
    public void run()
    {
      try
      {
        if (com.layer.sdk.internal.lsdkk.k.a(2)) {
          com.layer.sdk.internal.lsdkk.k.a(a, "WaitForContent timed out for " + this.d);
        }
        a();
        a(new Runnable()
        {
          public final void run()
          {
            a.f.b(a.f.this).onContentFailed(a.f.a(a.f.this), a.f.c(a.f.this), new LayerException(LayerException.Type.TIMED_OUT));
          }
        });
        return;
      }
      finally {}
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */