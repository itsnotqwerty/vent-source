package android.support.v4.app;

import android.app.Notification;
import android.app.Notification.Action;
import android.app.Notification.Action.Builder;
import android.app.Notification.BigTextStyle;
import android.app.Notification.Builder;
import android.app.Notification.InboxStyle;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.media.AudioAttributes.Builder;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

public final class aa
{
  public static Bundle a(Notification paramNotification)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      return paramNotification.extras;
    }
    if (Build.VERSION.SDK_INT >= 16) {
      return ac.a(paramNotification);
    }
    return null;
  }
  
  public static final class a
  {
    public PendingIntent actionIntent;
    public int icon;
    public CharSequence title;
    final Bundle zp;
    final ae[] zq;
    final ae[] zr;
    boolean zs;
  }
  
  public static final class b
    extends aa.f
  {
    private CharSequence zt;
    
    public final void a(z paramz)
    {
      if (Build.VERSION.SDK_INT >= 16)
      {
        paramz = new Notification.BigTextStyle(paramz.cY()).setBigContentTitle(this.Ah).bigText(this.zt);
        if (this.Aj) {
          paramz.setSummaryText(this.Ai);
        }
      }
    }
    
    public final b c(CharSequence paramCharSequence)
    {
      this.zt = aa.c.g(paramCharSequence);
      return this;
    }
  }
  
  public static final class c
  {
    String Aa;
    long Ab;
    int Ac = 0;
    public Notification Ad = new Notification();
    @Deprecated
    public ArrayList<String> Ae;
    public int gS = 0;
    public Context mContext;
    public Bitmap zA;
    CharSequence zB;
    public int zC;
    public int zD;
    boolean zE = true;
    boolean zF;
    aa.f zG;
    CharSequence zH;
    CharSequence[] zI;
    int zJ;
    int zK;
    boolean zL;
    String zM;
    boolean zN;
    String zO;
    public boolean zP = false;
    boolean zQ;
    boolean zR;
    public String zS;
    public int zT = 0;
    Notification zU;
    RemoteViews zV;
    RemoteViews zW;
    RemoteViews zX;
    public String zY;
    int zZ = 0;
    Bundle zp;
    public ArrayList<aa.a> zu = new ArrayList();
    CharSequence zv;
    CharSequence zw;
    public PendingIntent zx;
    PendingIntent zy;
    RemoteViews zz;
    
    private c(Context paramContext)
    {
      this.mContext = paramContext;
      this.zY = null;
      this.Ad.when = System.currentTimeMillis();
      this.Ad.audioStreamType = -1;
      this.zD = 0;
      this.Ae = new ArrayList();
    }
    
    @Deprecated
    public c(Context paramContext, byte paramByte)
    {
      this(paramContext);
    }
    
    protected static CharSequence g(CharSequence paramCharSequence)
    {
      if (paramCharSequence == null) {}
      while (paramCharSequence.length() <= 5120) {
        return paramCharSequence;
      }
      return paramCharSequence.subSequence(0, 5120);
    }
    
    public final c a(PendingIntent paramPendingIntent)
    {
      this.Ad.deleteIntent = paramPendingIntent;
      return this;
    }
    
    public final c a(aa.d paramd)
    {
      paramd.a(this);
      return this;
    }
    
    public final c a(aa.f paramf)
    {
      if (this.zG != paramf)
      {
        this.zG = paramf;
        if (this.zG != null) {
          this.zG.b(this);
        }
      }
      return this;
    }
    
    public final c a(long[] paramArrayOfLong)
    {
      this.Ad.vibrate = paramArrayOfLong;
      return this;
    }
    
    public final c ad(int paramInt)
    {
      this.Ad.icon = paramInt;
      return this;
    }
    
    public final c ae(int paramInt)
    {
      this.Ad.defaults = paramInt;
      if ((paramInt & 0x4) != 0)
      {
        Notification localNotification = this.Ad;
        localNotification.flags |= 0x1;
      }
      return this;
    }
    
    public final Notification build()
    {
      ab localab = new ab(this);
      aa.f localf = localab.Av.zG;
      if (localf != null) {
        localf.a(localab);
      }
      Object localObject1;
      if (Build.VERSION.SDK_INT >= 26) {
        localObject1 = localab.mBuilder.build();
      }
      for (;;)
      {
        if (localab.Av.zV != null) {
          ((Notification)localObject1).contentView = localab.Av.zV;
        }
        int i = Build.VERSION.SDK_INT;
        i = Build.VERSION.SDK_INT;
        if ((Build.VERSION.SDK_INT >= 16) && (localf != null)) {
          aa.a((Notification)localObject1);
        }
        return (Notification)localObject1;
        Object localObject2;
        if (Build.VERSION.SDK_INT >= 24)
        {
          localObject2 = localab.mBuilder.build();
          localObject1 = localObject2;
          if (localab.Ac != 0)
          {
            if ((((Notification)localObject2).getGroup() != null) && ((((Notification)localObject2).flags & 0x200) != 0) && (localab.Ac == 2)) {
              ab.b((Notification)localObject2);
            }
            localObject1 = localObject2;
            if (((Notification)localObject2).getGroup() != null)
            {
              localObject1 = localObject2;
              if ((((Notification)localObject2).flags & 0x200) == 0)
              {
                localObject1 = localObject2;
                if (localab.Ac == 1)
                {
                  ab.b((Notification)localObject2);
                  localObject1 = localObject2;
                }
              }
            }
          }
        }
        else if (Build.VERSION.SDK_INT >= 21)
        {
          localab.mBuilder.setExtras(localab.zp);
          localObject2 = localab.mBuilder.build();
          if (localab.zV != null) {
            ((Notification)localObject2).contentView = localab.zV;
          }
          if (localab.zW != null) {
            ((Notification)localObject2).bigContentView = localab.zW;
          }
          if (localab.zX != null) {
            ((Notification)localObject2).headsUpContentView = localab.zX;
          }
          localObject1 = localObject2;
          if (localab.Ac != 0)
          {
            if ((((Notification)localObject2).getGroup() != null) && ((((Notification)localObject2).flags & 0x200) != 0) && (localab.Ac == 2)) {
              ab.b((Notification)localObject2);
            }
            localObject1 = localObject2;
            if (((Notification)localObject2).getGroup() != null)
            {
              localObject1 = localObject2;
              if ((((Notification)localObject2).flags & 0x200) == 0)
              {
                localObject1 = localObject2;
                if (localab.Ac == 1)
                {
                  ab.b((Notification)localObject2);
                  localObject1 = localObject2;
                }
              }
            }
          }
        }
        else if (Build.VERSION.SDK_INT >= 20)
        {
          localab.mBuilder.setExtras(localab.zp);
          localObject2 = localab.mBuilder.build();
          if (localab.zV != null) {
            ((Notification)localObject2).contentView = localab.zV;
          }
          if (localab.zW != null) {
            ((Notification)localObject2).bigContentView = localab.zW;
          }
          localObject1 = localObject2;
          if (localab.Ac != 0)
          {
            if ((((Notification)localObject2).getGroup() != null) && ((((Notification)localObject2).flags & 0x200) != 0) && (localab.Ac == 2)) {
              ab.b((Notification)localObject2);
            }
            localObject1 = localObject2;
            if (((Notification)localObject2).getGroup() != null)
            {
              localObject1 = localObject2;
              if ((((Notification)localObject2).flags & 0x200) == 0)
              {
                localObject1 = localObject2;
                if (localab.Ac == 1)
                {
                  ab.b((Notification)localObject2);
                  localObject1 = localObject2;
                }
              }
            }
          }
        }
        else if (Build.VERSION.SDK_INT >= 19)
        {
          localObject1 = ac.h(localab.Aw);
          if (localObject1 != null) {
            localab.zp.putSparseParcelableArray("android.support.actionExtras", (SparseArray)localObject1);
          }
          localab.mBuilder.setExtras(localab.zp);
          localObject2 = localab.mBuilder.build();
          if (localab.zV != null) {
            ((Notification)localObject2).contentView = localab.zV;
          }
          localObject1 = localObject2;
          if (localab.zW != null)
          {
            ((Notification)localObject2).bigContentView = localab.zW;
            localObject1 = localObject2;
          }
        }
        else if (Build.VERSION.SDK_INT >= 16)
        {
          localObject1 = localab.mBuilder.build();
          localObject2 = aa.a((Notification)localObject1);
          Bundle localBundle = new Bundle(localab.zp);
          Iterator localIterator = localab.zp.keySet().iterator();
          while (localIterator.hasNext())
          {
            String str = (String)localIterator.next();
            if (((Bundle)localObject2).containsKey(str)) {
              localBundle.remove(str);
            }
          }
          ((Bundle)localObject2).putAll(localBundle);
          localObject2 = ac.h(localab.Aw);
          if (localObject2 != null) {
            aa.a((Notification)localObject1).putSparseParcelableArray("android.support.actionExtras", (SparseArray)localObject2);
          }
          if (localab.zV != null) {
            ((Notification)localObject1).contentView = localab.zV;
          }
          if (localab.zW != null) {
            ((Notification)localObject1).bigContentView = localab.zW;
          }
        }
        else
        {
          localObject1 = localab.mBuilder.getNotification();
        }
      }
    }
    
    public final c c(int paramInt1, int paramInt2, int paramInt3)
    {
      int i = 1;
      this.Ad.ledARGB = paramInt1;
      this.Ad.ledOnMS = paramInt2;
      this.Ad.ledOffMS = paramInt3;
      Notification localNotification;
      if ((this.Ad.ledOnMS != 0) && (this.Ad.ledOffMS != 0))
      {
        paramInt1 = 1;
        localNotification = this.Ad;
        paramInt2 = this.Ad.flags;
        if (paramInt1 == 0) {
          break label88;
        }
      }
      label88:
      for (paramInt1 = i;; paramInt1 = 0)
      {
        localNotification.flags = (paramInt2 & 0xFFFFFFFE | paramInt1);
        return this;
        paramInt1 = 0;
        break;
      }
    }
    
    public final c cZ()
    {
      Notification localNotification = this.Ad;
      localNotification.flags |= 0x10;
      return this;
    }
    
    public final c d(CharSequence paramCharSequence)
    {
      this.zv = g(paramCharSequence);
      return this;
    }
    
    public final c e(Uri paramUri)
    {
      this.Ad.sound = paramUri;
      this.Ad.audioStreamType = -1;
      if (Build.VERSION.SDK_INT >= 21) {
        this.Ad.audioAttributes = new AudioAttributes.Builder().setContentType(4).setUsage(5).build();
      }
      return this;
    }
    
    public final c e(CharSequence paramCharSequence)
    {
      this.zw = g(paramCharSequence);
      return this;
    }
    
    public final c f(CharSequence paramCharSequence)
    {
      this.Ad.tickerText = g(paramCharSequence);
      return this;
    }
  }
  
  public static abstract interface d
  {
    public abstract aa.c a(aa.c paramc);
  }
  
  public static final class e
    extends aa.f
  {
    private ArrayList<CharSequence> Af = new ArrayList();
    
    public final void a(z paramz)
    {
      if (Build.VERSION.SDK_INT >= 16)
      {
        paramz = new Notification.InboxStyle(paramz.cY()).setBigContentTitle(this.Ah);
        if (this.Aj) {
          paramz.setSummaryText(this.Ai);
        }
        Iterator localIterator = this.Af.iterator();
        while (localIterator.hasNext()) {
          paramz.addLine((CharSequence)localIterator.next());
        }
      }
    }
    
    public final e h(CharSequence paramCharSequence)
    {
      this.Ah = aa.c.g(paramCharSequence);
      return this;
    }
    
    public final e i(CharSequence paramCharSequence)
    {
      this.Af.add(aa.c.g(paramCharSequence));
      return this;
    }
  }
  
  public static abstract class f
  {
    protected aa.c Ag;
    CharSequence Ah;
    CharSequence Ai;
    boolean Aj = false;
    
    public void a(z paramz) {}
    
    public final void b(aa.c paramc)
    {
      if (this.Ag != paramc)
      {
        this.Ag = paramc;
        if (this.Ag != null) {
          this.Ag.a(this);
        }
      }
    }
  }
  
  public static final class g
    implements aa.d
  {
    private PendingIntent Ak;
    private ArrayList<Notification> Al = new ArrayList();
    public Bitmap Am;
    private int An;
    private int Ao = 8388613;
    private int Ap = -1;
    private int Aq = 0;
    private int Ar;
    private int As;
    private String At;
    private String Au;
    private int mFlags = 1;
    private int mGravity = 80;
    private ArrayList<aa.a> zu = new ArrayList();
    
    private static Notification.Action a(aa.a parama)
    {
      Notification.Action.Builder localBuilder = new Notification.Action.Builder(parama.icon, parama.title, parama.actionIntent);
      if (parama.zp != null) {}
      for (Bundle localBundle = new Bundle(parama.zp);; localBundle = new Bundle())
      {
        localBundle.putBoolean("android.support.allowGeneratedReplies", parama.zs);
        if (Build.VERSION.SDK_INT >= 24) {
          localBuilder.setAllowGeneratedReplies(parama.zs);
        }
        localBuilder.addExtras(localBundle);
        parama = parama.zq;
        if (parama == null) {
          break;
        }
        parama = ae.b(parama);
        int j = parama.length;
        int i = 0;
        while (i < j)
        {
          localBuilder.addRemoteInput(parama[i]);
          i += 1;
        }
      }
      return localBuilder.build();
    }
    
    public final aa.c a(aa.c paramc)
    {
      Bundle localBundle = new Bundle();
      if (!this.zu.isEmpty())
      {
        if (Build.VERSION.SDK_INT < 16) {
          break label397;
        }
        ArrayList localArrayList = new ArrayList(this.zu.size());
        Iterator localIterator = this.zu.iterator();
        while (localIterator.hasNext())
        {
          aa.a locala = (aa.a)localIterator.next();
          if (Build.VERSION.SDK_INT >= 20) {
            localArrayList.add(a(locala));
          } else if (Build.VERSION.SDK_INT >= 16) {
            localArrayList.add(ac.c(locala));
          }
        }
        localBundle.putParcelableArrayList("actions", localArrayList);
      }
      for (;;)
      {
        if (this.mFlags != 1) {
          localBundle.putInt("flags", this.mFlags);
        }
        if (this.Ak != null) {
          localBundle.putParcelable("displayIntent", this.Ak);
        }
        if (!this.Al.isEmpty()) {
          localBundle.putParcelableArray("pages", (Parcelable[])this.Al.toArray(new Notification[this.Al.size()]));
        }
        if (this.Am != null) {
          localBundle.putParcelable("background", this.Am);
        }
        if (this.An != 0) {
          localBundle.putInt("contentIcon", this.An);
        }
        if (this.Ao != 8388613) {
          localBundle.putInt("contentIconGravity", this.Ao);
        }
        if (this.Ap != -1) {
          localBundle.putInt("contentActionIndex", this.Ap);
        }
        if (this.Aq != 0) {
          localBundle.putInt("customSizePreset", this.Aq);
        }
        if (this.Ar != 0) {
          localBundle.putInt("customContentHeight", this.Ar);
        }
        if (this.mGravity != 80) {
          localBundle.putInt("gravity", this.mGravity);
        }
        if (this.As != 0) {
          localBundle.putInt("hintScreenTimeout", this.As);
        }
        if (this.At != null) {
          localBundle.putString("dismissalId", this.At);
        }
        if (this.Au != null) {
          localBundle.putString("bridgeTag", this.Au);
        }
        if (paramc.zp == null) {
          paramc.zp = new Bundle();
        }
        paramc.zp.putBundle("android.wearable.EXTENSIONS", localBundle);
        return paramc;
        label397:
        localBundle.putParcelableArrayList("actions", null);
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/app/aa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */