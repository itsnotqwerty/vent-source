package com.layer.sdk.internal.lsdkd.lsdka;

import android.net.Uri;
import android.text.TextUtils;
import com.layer.b.f.a.c;
import com.layer.sdk.changes.LayerChange.Type;
import com.layer.sdk.exceptions.LayerException;
import com.layer.sdk.exceptions.LayerException.Type;
import com.layer.sdk.exceptions.LayerObjectException;
import com.layer.sdk.internal.lsdkd.a;
import com.layer.sdk.internal.lsdkd.a.d;
import com.layer.sdk.internal.lsdkd.b;
import com.layer.sdk.internal.lsdkd.f;
import com.layer.sdk.internal.lsdkd.h;
import com.layer.sdk.internal.lsdkd.i;
import com.layer.sdk.internal.lsdkk.f.c;
import com.layer.sdk.internal.lsdkk.m.a;
import com.layer.sdk.internal.lsdkk.m.c;
import com.layer.sdk.internal.lsdkk.m.i;
import com.layer.sdk.messaging.Identity;
import com.layer.sdk.messaging.Metadata;
import com.layer.sdk.messaging.Presence.PresenceStatus;
import java.util.Arrays;
import java.util.Date;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

public class e
  implements com.layer.sdk.internal.lsdkd.d, Identity
{
  private static final com.layer.sdk.internal.lsdkk.k.a a = com.layer.sdk.internal.lsdkk.k.a(e.class);
  private final com.layer.b.d.d b;
  private Uri c;
  private m d = new m();
  private h e;
  private boolean f;
  boolean g;
  private n h;
  private final Object i = new Object();
  private final ConcurrentLinkedQueue<b> j = new ConcurrentLinkedQueue();
  
  public e(Uri paramUri, Long paramLong)
  {
    this.b = new com.layer.b.d.d(paramLong);
    this.c = paramUri;
    this.b.a = paramUri.getLastPathSegment();
    this.h = new n(paramUri.getLastPathSegment(), null, null, null);
    if (paramLong == null) {
      c(new b(LayerChange.Type.INSERT, this, null, null, null));
    }
  }
  
  public e(c paramc)
  {
    this.b = new com.layer.b.d.d(paramc, (byte)0);
    this.c = com.layer.sdk.internal.lsdkd.m.c(getUserId());
    this.h = new n(getUserId(), null, null, null);
  }
  
  public e(String paramString)
  {
    this(com.layer.sdk.internal.lsdkd.m.c(paramString), null);
  }
  
  public static e a(String paramString)
  {
    e locale = new e("transient_" + paramString);
    locale.b(paramString);
    locale.f = true;
    locale.g = true;
    return locale;
  }
  
  static e a(String paramString, h paramh)
  {
    paramString = new e(paramString);
    paramString.f = true;
    paramString.a(paramh);
    return paramString;
  }
  
  public static void a(final h paramh, Identity... paramVarArgs)
  {
    paramh.n().a(new f.c()
    {
      public final void a()
      {
        Identity[] arrayOfIdentity = this.bqX;
        int j = arrayOfIdentity.length;
        int i = 0;
        while (i < j)
        {
          if (arrayOfIdentity[i] == null)
          {
            if (com.layer.sdk.internal.lsdkk.k.a(6)) {
              com.layer.sdk.internal.lsdkk.k.e(e.ww(), "Cannot un-follow null identity. Attempted to un-follow: " + Arrays.toString(this.bqX));
            }
            throw new IllegalArgumentException("Cannot un-follow null identity. Attempted to un-follow: " + Arrays.toString(this.bqX));
          }
          i += 1;
        }
      }
      
      public final void a(Object paramAnonymousObject)
      {
        if (com.layer.sdk.internal.lsdkk.k.a(2)) {
          com.layer.sdk.internal.lsdkk.k.a(e.ww(), "Un-following identities: " + Arrays.toString(this.bqX));
        }
        f localf = paramh.m();
        com.layer.sdk.internal.lsdkd.k localk = localf.a(com.layer.sdk.internal.lsdkd.k.a.a);
        for (;;)
        {
          int i;
          try
          {
            Identity[] arrayOfIdentity = this.bqX;
            int j = arrayOfIdentity.length;
            i = 0;
            if (i >= j) {
              break label218;
            }
            paramAnonymousObject = (e)arrayOfIdentity[i];
            if (e.b((e)paramAnonymousObject))
            {
              if (com.layer.sdk.internal.lsdkk.k.a(5)) {
                com.layer.sdk.internal.lsdkk.k.d(e.ww(), "This is a facade Identity meant to represent a system message or announcement. It is not un-followable.");
              }
            }
            else if (e.c((e)paramAnonymousObject))
            {
              e locale = (e)localf.a(((e)paramAnonymousObject).getId(), false);
              if (locale != null)
              {
                paramAnonymousObject = locale;
                if (com.layer.sdk.internal.lsdkk.k.a(2))
                {
                  com.layer.sdk.internal.lsdkk.k.a(e.ww(), "Using cached identity to un-follow an in memory identity.");
                  paramAnonymousObject = locale;
                }
                e.a((e)paramAnonymousObject, false);
                ((e)paramAnonymousObject).c(true);
                if (((e)paramAnonymousObject).e() == null) {
                  localf.a(localk, new com.layer.sdk.internal.lsdkd.d[] { paramAnonymousObject });
                }
              }
            }
          }
          finally
          {
            localf.a(localk, false);
          }
          localf.b(localk, new com.layer.sdk.internal.lsdkd.d[] { paramAnonymousObject });
          break label244;
          label218:
          localf.a(localk, true);
          paramh.n().m();
          return;
          continue;
          label244:
          i += 1;
        }
      }
      
      public final void a(Object paramAnonymousObject, Throwable paramAnonymousThrowable)
      {
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.d(e.ww(), "Exception when attempting to un-follow identities.", paramAnonymousThrowable);
        }
        paramAnonymousObject = new LayerObjectException(LayerException.Type.FAILED_API_ACTION, null, paramAnonymousThrowable.getMessage(), paramAnonymousThrowable);
        paramh.n().a((LayerObjectException)paramAnonymousObject);
      }
    });
  }
  
  public static void a(final h paramh, String... paramVarArgs)
  {
    paramh.n().a(new f.c()
    {
      public final void a()
      {
        String[] arrayOfString = this.a;
        int j = arrayOfString.length;
        int i = 0;
        while (i < j)
        {
          if (TextUtils.isEmpty(arrayOfString[i]))
          {
            if (com.layer.sdk.internal.lsdkk.k.a(6)) {
              com.layer.sdk.internal.lsdkk.k.e(e.ww(), "Cannot follow null or empty user IDs. Attempted to follow: " + Arrays.toString(this.a));
            }
            throw new IllegalArgumentException("Cannot follow null user IDs. Attempted to follow: " + Arrays.toString(this.a));
          }
          i += 1;
        }
      }
      
      public final void a(Object paramAnonymousObject)
      {
        if (com.layer.sdk.internal.lsdkk.k.a(2)) {
          com.layer.sdk.internal.lsdkk.k.a(e.ww(), "Following identities. User IDs: " + Arrays.toString(this.a));
        }
        f localf = paramh.m();
        com.layer.sdk.internal.lsdkd.k localk = localf.a(com.layer.sdk.internal.lsdkd.k.a.a);
        for (;;)
        {
          int i;
          try
          {
            String[] arrayOfString = this.a;
            int j = arrayOfString.length;
            i = 0;
            if (i >= j) {
              break label213;
            }
            String str = arrayOfString[i];
            if (str.startsWith("transient_"))
            {
              if (com.layer.sdk.internal.lsdkk.k.a(5)) {
                com.layer.sdk.internal.lsdkk.k.d(e.ww(), "This is a facade Identity meant to represent a system message or announcement. It is not followable.");
              }
            }
            else
            {
              e locale = (e)localf.a(com.layer.sdk.internal.lsdkd.m.c(str), false);
              paramAnonymousObject = locale;
              if (locale == null)
              {
                paramAnonymousObject = new e(str);
                ((e)paramAnonymousObject).a(paramh);
              }
              e.a((e)paramAnonymousObject, true);
              ((e)paramAnonymousObject).c(true);
              if (((e)paramAnonymousObject).e() == null) {
                localf.a(localk, new com.layer.sdk.internal.lsdkd.d[] { paramAnonymousObject });
              }
            }
          }
          finally
          {
            localf.a(localk, false);
          }
          localf.b(localk, new com.layer.sdk.internal.lsdkd.d[] { paramAnonymousObject });
          break label236;
          label213:
          localf.a(localk, true);
          paramh.n().m();
          return;
          label236:
          i += 1;
        }
      }
      
      public final void a(Object paramAnonymousObject, Throwable paramAnonymousThrowable)
      {
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.d(e.ww(), "Exception when attempting to follow identities.", paramAnonymousThrowable);
        }
        paramAnonymousObject = new LayerObjectException(LayerException.Type.FAILED_API_ACTION, null, paramAnonymousThrowable.getMessage(), paramAnonymousThrowable);
        paramh.n().a((LayerObjectException)paramAnonymousObject);
      }
    });
  }
  
  private void a(a parama, Object paramObject1, Object paramObject2)
  {
    c(new b(LayerChange.Type.UPDATE, this, parama, paramObject1, paramObject2));
  }
  
  private void b(m paramm)
  {
    synchronized (this.i)
    {
      m localm = (m)getMetadata();
      this.d.clear();
      this.d.a(paramm);
      paramm = (m)getMetadata();
      if (com.layer.sdk.internal.lsdkk.m.b(localm, paramm).e()) {
        a(a.g, localm, paramm);
      }
      return;
    }
  }
  
  private void b(Date paramDate)
  {
    synchronized (this.i)
    {
      Date localDate = getLastSeenAt();
      boolean bool = b.a(paramDate, localDate);
      this.h.a(paramDate);
      if (bool) {
        a(a.k, localDate, paramDate);
      }
      return;
    }
  }
  
  private void c(Presence.PresenceStatus paramPresenceStatus)
  {
    synchronized (this.i)
    {
      Presence.PresenceStatus localPresenceStatus = getPresenceStatus();
      boolean bool = b.a(paramPresenceStatus, localPresenceStatus);
      this.h.a(paramPresenceStatus);
      if (bool) {
        a(a.j, localPresenceStatus, paramPresenceStatus);
      }
      return;
    }
  }
  
  private void e(boolean paramBoolean)
  {
    for (;;)
    {
      synchronized (this.i)
      {
        boolean bool = isFollowed();
        if (paramBoolean != bool)
        {
          k = 1;
          this.b.bqW = paramBoolean;
          if (k != 0) {
            a(a.i, Boolean.valueOf(bool), Boolean.valueOf(paramBoolean));
          }
          return;
        }
      }
      int k = 0;
    }
  }
  
  private void i(String paramString)
  {
    synchronized (this.i)
    {
      String str = getDisplayName();
      boolean bool = b.a(paramString, str);
      this.b.b = paramString;
      if (bool) {
        a(a.a, str, paramString);
      }
      return;
    }
  }
  
  private void j(String paramString)
  {
    synchronized (this.i)
    {
      String str = getFirstName();
      boolean bool = b.a(paramString, str);
      this.b.d = paramString;
      if (bool) {
        a(a.b, str, paramString);
      }
      return;
    }
  }
  
  private void k(String paramString)
  {
    synchronized (this.i)
    {
      String str = getLastName();
      boolean bool = b.a(paramString, str);
      this.b.e = paramString;
      if (bool) {
        a(a.c, str, paramString);
      }
      return;
    }
  }
  
  private void l(String paramString)
  {
    synchronized (this.i)
    {
      String str = getPhoneNumber();
      boolean bool = b.a(paramString, str);
      this.b.f = paramString;
      if (bool) {
        a(a.d, str, paramString);
      }
      return;
    }
  }
  
  private void m(String paramString)
  {
    synchronized (this.i)
    {
      String str = getEmailAddress();
      boolean bool = b.a(paramString, str);
      this.b.g = paramString;
      if (bool) {
        a(a.e, str, paramString);
      }
      return;
    }
  }
  
  private void n(String paramString)
  {
    synchronized (this.i)
    {
      String str = getAvatarImageUrl();
      boolean bool = b.a(paramString, str);
      this.b.c = paramString;
      if (bool) {
        a(a.f, str, paramString);
      }
      return;
    }
  }
  
  private void o(String paramString)
  {
    synchronized (this.i)
    {
      String str = getPublicKey();
      boolean bool = b.a(paramString, str);
      this.b.h = paramString;
      if (bool) {
        a(a.h, str, paramString);
      }
      return;
    }
  }
  
  public m.i a(m.c paramc)
  {
    synchronized (this.i)
    {
      m localm1 = (m)getMetadata();
      paramc = this.d.b(paramc);
      m localm2 = (m)getMetadata();
      if (com.layer.sdk.internal.lsdkk.m.b(localm1, localm2).e()) {
        a(a.g, localm1, localm2);
      }
      return paramc;
    }
  }
  
  public m.i a(m.c paramc, m.i parami)
  {
    synchronized (this.i)
    {
      m localm = (m)getMetadata();
      paramc = this.d.a(paramc, parami);
      parami = (m)getMetadata();
      if (com.layer.sdk.internal.lsdkk.m.b(localm, parami).e()) {
        a(a.g, localm, parami);
      }
      return paramc;
    }
  }
  
  public Queue<b> a()
  {
    return this.j;
  }
  
  public void a(b paramb)
  {
    a locala = (a)paramb.b();
    switch (3.bqe[paramb.getChangeType().ordinal()])
    {
    default: 
      if (com.layer.sdk.internal.lsdkk.k.a(6)) {
        com.layer.sdk.internal.lsdkk.k.e(a, "Unknown change type");
      }
      throw new IllegalStateException("Unknown change type");
    case 1: 
      if (locala == null)
      {
        c(new b(LayerChange.Type.INSERT, this, null, null, null));
        return;
      }
      if (com.layer.sdk.internal.lsdkk.k.a(6)) {
        com.layer.sdk.internal.lsdkk.k.e(a, "Cannot " + paramb.getChangeType() + " attributes: " + locala);
      }
      throw new LayerException(LayerException.Type.NOT_UPDATE, "Cannot " + paramb.getChangeType() + " attributes: " + locala);
    case 2: 
      if (locala == null)
      {
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.e(a, "Cannot UPDATE without an attribute");
        }
        throw new LayerException(LayerException.Type.UPDATE_WITHOUT_ATTRIBUTE, "Cannot UPDATE without an attribute");
      }
      break;
    case 3: 
      if (com.layer.sdk.internal.lsdkk.k.a(6)) {
        com.layer.sdk.internal.lsdkk.k.e(a, "Identity DELETE is not supported");
      }
      throw new IllegalStateException("Identity DELETE is not supported");
    }
    paramb = paramb.getNewValue();
    switch (3.b[locala.ordinal()])
    {
    default: 
      if (com.layer.sdk.internal.lsdkk.k.a(6)) {
        com.layer.sdk.internal.lsdkk.k.e(a, "Cannot update " + locala);
      }
      throw new LayerException(LayerException.Type.CANNOT_UPDATE_ATTRIBUTE, "Cannot update " + locala);
    case 1: 
      i((String)paramb);
      return;
    case 2: 
      j((String)paramb);
      return;
    case 3: 
      k((String)paramb);
      return;
    case 4: 
      l((String)paramb);
      return;
    case 5: 
      m((String)paramb);
      return;
    case 6: 
      n((String)paramb);
      return;
    case 7: 
      o((String)paramb);
      return;
    case 8: 
      e(((Boolean)paramb).booleanValue());
      return;
    case 9: 
      b((m)paramb);
      return;
    case 10: 
      c((Presence.PresenceStatus)paramb);
      return;
    }
    b((Date)paramb);
  }
  
  public void a(h paramh)
  {
    synchronized (this.i)
    {
      this.e = paramh;
      return;
    }
  }
  
  public void a(a parama, Object paramObject)
  {
    if (paramObject == null) {}
    for (Object localObject = new Object();; localObject = null)
    {
      c(new b(LayerChange.Type.UPDATE, this, parama, localObject, paramObject));
      return;
    }
  }
  
  public void a(m paramm)
  {
    synchronized (this.i)
    {
      this.d = paramm;
      return;
    }
  }
  
  public void a(n paramn)
  {
    if (paramn == null)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(6)) {
        com.layer.sdk.internal.lsdkk.k.e(a, "PresenceImpl is null");
      }
      throw new IllegalArgumentException("presenceImpl is null");
    }
    synchronized (this.i)
    {
      this.h = paramn;
      return;
    }
  }
  
  public void a(Presence.PresenceStatus paramPresenceStatus)
  {
    synchronized (this.i)
    {
      this.h.a(paramPresenceStatus);
      return;
    }
  }
  
  public void a(Long paramLong)
  {
    synchronized (this.i)
    {
      this.b.o = paramLong;
      return;
    }
  }
  
  public void a(Date paramDate)
  {
    synchronized (this.i)
    {
      this.h.a(paramDate);
      a(a.k, paramDate);
      return;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if (com.layer.sdk.internal.lsdkk.k.a(6)) {
      com.layer.sdk.internal.lsdkk.k.e(a, "Identity deletion is not supported");
    }
    throw new UnsupportedOperationException("Identity deletion is not supported");
  }
  
  public void b(b paramb)
  {
    c(new b(paramb.getChangeType(), this, paramb.b(), paramb.getOldValue(), paramb.getNewValue()));
  }
  
  public void b(n paramn)
  {
    synchronized (this.i)
    {
      b(paramn.b());
      a(paramn.c());
      this.h.a(paramn.a());
      this.h.a(paramn.d());
      return;
    }
  }
  
  public void b(Presence.PresenceStatus paramPresenceStatus)
  {
    synchronized (this.i)
    {
      this.h.a(paramPresenceStatus);
      a(a.j, paramPresenceStatus);
      return;
    }
  }
  
  public void b(String paramString)
  {
    synchronized (this.i)
    {
      this.b.b = paramString;
      return;
    }
  }
  
  public void b(boolean paramBoolean)
  {
    if (com.layer.sdk.internal.lsdkk.k.a(6)) {
      com.layer.sdk.internal.lsdkk.k.e(a, "Identity deletion is not supported");
    }
    throw new UnsupportedOperationException("Identity deletion is not supported");
  }
  
  public boolean b()
  {
    for (;;)
    {
      synchronized (this.i)
      {
        if (e() == null)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public void c(b paramb)
  {
    this.j.add(paramb);
  }
  
  public void c(String paramString)
  {
    synchronized (this.i)
    {
      this.b.d = paramString;
      return;
    }
  }
  
  public void c(boolean paramBoolean)
  {
    synchronized (this.i)
    {
      this.b.bvT = paramBoolean;
      return;
    }
  }
  
  public boolean c()
  {
    if (com.layer.sdk.internal.lsdkk.k.a(6)) {
      com.layer.sdk.internal.lsdkk.k.e(a, "Identity deletion is not supported");
    }
    throw new UnsupportedOperationException("Identity deletion is not supported");
  }
  
  public void d(String paramString)
  {
    synchronized (this.i)
    {
      this.b.e = paramString;
      return;
    }
  }
  
  public void d(boolean paramBoolean)
  {
    synchronized (this.i)
    {
      this.b.bqW = paramBoolean;
      return;
    }
  }
  
  public boolean d()
  {
    if (com.layer.sdk.internal.lsdkk.k.a(6)) {
      com.layer.sdk.internal.lsdkk.k.e(a, "Identity deletion is not supported");
    }
    throw new UnsupportedOperationException("Identity deletion is not supported");
  }
  
  public Long e()
  {
    synchronized (this.i)
    {
      Long localLong = this.b.o;
      return localLong;
    }
  }
  
  public void e(String paramString)
  {
    synchronized (this.i)
    {
      this.b.f = paramString;
      return;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof e)) {
      return false;
    }
    paramObject = (e)paramObject;
    return getUserId().equals(((e)paramObject).getUserId());
  }
  
  public void f(String paramString)
  {
    synchronized (this.i)
    {
      this.b.g = paramString;
      return;
    }
  }
  
  public boolean f()
  {
    synchronized (this.i)
    {
      boolean bool = this.b.bvT;
      return bool;
    }
  }
  
  public void follow()
  {
    if (this.g)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(5)) {
        com.layer.sdk.internal.lsdkk.k.d(a, "This is a facade Identity meant to represent a system message or announcement. It is not followable.");
      }
      return;
    }
    a(this.e, new String[] { getUserId() });
  }
  
  public void g(String paramString)
  {
    synchronized (this.i)
    {
      this.b.c = paramString;
      return;
    }
  }
  
  public String getAvatarImageUrl()
  {
    synchronized (this.i)
    {
      String str = this.b.c;
      return str;
    }
  }
  
  public String getDisplayName()
  {
    synchronized (this.i)
    {
      String str = this.b.b;
      return str;
    }
  }
  
  public String getEmailAddress()
  {
    synchronized (this.i)
    {
      String str = this.b.g;
      return str;
    }
  }
  
  public String getFirstName()
  {
    synchronized (this.i)
    {
      String str = this.b.d;
      return str;
    }
  }
  
  public Uri getId()
  {
    synchronized (this.i)
    {
      Uri localUri = this.c;
      return localUri;
    }
  }
  
  public String getLastName()
  {
    synchronized (this.i)
    {
      String str = this.b.e;
      return str;
    }
  }
  
  public Date getLastSeenAt()
  {
    synchronized (this.i)
    {
      Date localDate = this.h.c();
      return localDate;
    }
  }
  
  public Metadata getMetadata()
  {
    synchronized (this.i)
    {
      m localm = com.layer.sdk.internal.lsdkk.m.a(this.d);
      return localm;
    }
  }
  
  public String getPhoneNumber()
  {
    synchronized (this.i)
    {
      String str = this.b.f;
      return str;
    }
  }
  
  public Presence.PresenceStatus getPresenceStatus()
  {
    synchronized (this.i)
    {
      Presence.PresenceStatus localPresenceStatus = this.h.b();
      return localPresenceStatus;
    }
  }
  
  public String getPublicKey()
  {
    synchronized (this.i)
    {
      String str = this.b.h;
      return str;
    }
  }
  
  public String getUserId()
  {
    synchronized (this.i)
    {
      String str = this.b.a;
      return str;
    }
  }
  
  public void h()
  {
    this.j.clear();
  }
  
  public void h(String paramString)
  {
    synchronized (this.i)
    {
      this.b.h = paramString;
      return;
    }
  }
  
  public int hashCode()
  {
    return getUserId().hashCode();
  }
  
  public boolean isFollowed()
  {
    synchronized (this.i)
    {
      boolean bool = this.b.bqW;
      return bool;
    }
  }
  
  public String toString()
  {
    return "IdentityImpl [  id: " + this.c + ", displayName: " + getDisplayName() + ", firstName: " + getFirstName() + ", lastName: " + getLastName() + ", phoneNumber: " + getPhoneNumber() + ", emailAddress: " + getEmailAddress() + ", avatarImageUrl: " + getAvatarImageUrl() + ", publicKey: " + getPublicKey() + ", followed: " + isFollowed() + ", metadata: " + this.d + ", presence: " + this.h + ']';
  }
  
  public void unFollow()
  {
    if (this.g)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(5)) {
        com.layer.sdk.internal.lsdkk.k.d(a, "This is a facade Identity meant to represent a system message or announcement. It is not un-followable.");
      }
      return;
    }
    a(this.e, new Identity[] { this });
  }
  
  public static enum a
    implements com.layer.sdk.internal.lsdkd.e
  {
    final a bqY;
    final boolean bqZ;
    final String l;
    
    private a(String paramString, a parama, boolean paramBoolean)
    {
      this.l = paramString;
      this.bqY = parama;
      this.bqZ = paramBoolean;
    }
    
    public final String a()
    {
      return this.l;
    }
    
    public final a b()
    {
      return this.bqY;
    }
    
    public final boolean c()
    {
      return this.bqZ;
    }
    
    public final String toString()
    {
      return this.l;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkd/lsdka/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */