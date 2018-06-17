package me.leolin.shortcutbadger;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.util.Log;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import me.leolin.shortcutbadger.impl.AdwHomeBadger;
import me.leolin.shortcutbadger.impl.ApexHomeBadger;
import me.leolin.shortcutbadger.impl.DefaultBadger;
import me.leolin.shortcutbadger.impl.NewHtcHomeBadger;
import me.leolin.shortcutbadger.impl.NovaHomeBadger;
import me.leolin.shortcutbadger.impl.SonyHomeBadger;
import me.leolin.shortcutbadger.impl.d;
import me.leolin.shortcutbadger.impl.e;
import me.leolin.shortcutbadger.impl.f;
import me.leolin.shortcutbadger.impl.g;
import me.leolin.shortcutbadger.impl.h;

public final class c
{
  private static final List<Class<? extends a>> cVM = new LinkedList();
  private static volatile Boolean cVN;
  private static final Object cVO = new Object();
  private static a cVP;
  private static ComponentName cVQ;
  
  static
  {
    cVM.add(AdwHomeBadger.class);
    cVM.add(ApexHomeBadger.class);
    cVM.add(DefaultBadger.class);
    cVM.add(NewHtcHomeBadger.class);
    cVM.add(NovaHomeBadger.class);
    cVM.add(SonyHomeBadger.class);
    cVM.add(me.leolin.shortcutbadger.impl.a.class);
    cVM.add(me.leolin.shortcutbadger.impl.c.class);
    cVM.add(d.class);
    cVM.add(e.class);
    cVM.add(h.class);
    cVM.add(f.class);
    cVM.add(g.class);
    cVM.add(me.leolin.shortcutbadger.impl.b.class);
  }
  
  public static boolean ce(Context paramContext)
  {
    if (cVN == null) {}
    for (;;)
    {
      int i;
      synchronized (cVO)
      {
        Object localObject1 = cVN;
        if (localObject1 == null)
        {
          localObject1 = null;
          i = 0;
          if (i >= 3) {}
        }
        try
        {
          Log.i("ShortcutBadger", "Checking if platform supports badge counters, attempt " + String.format("%d/%d.", new Object[] { Integer.valueOf(i + 1), Integer.valueOf(3) }));
          if (cf(paramContext))
          {
            cVP.a(paramContext, cVQ, 0);
            cVN = Boolean.valueOf(true);
            Log.i("ShortcutBadger", "Badge counter is supported in this platform.");
            if (cVN == null)
            {
              Log.w("ShortcutBadger", "Badge counter seems not supported for this platform: " + (String)localObject1);
              cVN = Boolean.valueOf(false);
            }
            return cVN.booleanValue();
          }
          localObject1 = "Failed to initialize the badge counter.";
        }
        catch (Exception localException)
        {
          String str = localException.getMessage();
        }
      }
      i += 1;
    }
  }
  
  private static boolean cf(Context paramContext)
  {
    Object localObject = paramContext.getPackageManager().getLaunchIntentForPackage(paramContext.getPackageName());
    if (localObject == null)
    {
      Log.e("ShortcutBadger", "Unable to find launch intent for package " + paramContext.getPackageName());
      return false;
    }
    cVQ = ((Intent)localObject).getComponent();
    localObject = new Intent("android.intent.action.MAIN");
    ((Intent)localObject).addCategory("android.intent.category.HOME");
    localObject = paramContext.getPackageManager().queryIntentActivities((Intent)localObject, 65536).iterator();
    for (;;)
    {
      String str;
      if (((Iterator)localObject).hasNext())
      {
        str = ((ResolveInfo)((Iterator)localObject).next()).activityInfo.packageName;
        Iterator localIterator = cVM.iterator();
        label117:
        if (localIterator.hasNext()) {
          paramContext = (Class)localIterator.next();
        }
      }
      try
      {
        paramContext = (a)paramContext.newInstance();
        if ((paramContext == null) || (!paramContext.LU().contains(str))) {
          break label117;
        }
        cVP = paramContext;
        if (cVP == null) {
          continue;
        }
        if (cVP == null)
        {
          if (Build.MANUFACTURER.equalsIgnoreCase("ZUK")) {
            cVP = new h();
          }
        }
        else {
          return true;
        }
      }
      catch (Exception paramContext)
      {
        for (;;)
        {
          paramContext = null;
          continue;
          if (Build.MANUFACTURER.equalsIgnoreCase("OPPO")) {
            cVP = new d();
          } else if (Build.MANUFACTURER.equalsIgnoreCase("VIVO")) {
            cVP = new f();
          } else if (Build.MANUFACTURER.equalsIgnoreCase("ZTE")) {
            cVP = new g();
          } else {
            cVP = new DefaultBadger();
          }
        }
      }
    }
  }
  
  public static void w(Context paramContext, int paramInt)
    throws b
  {
    if ((cVP == null) && (!cf(paramContext))) {
      throw new b("No default launcher available");
    }
    try
    {
      cVP.a(paramContext, cVQ, paramInt);
      return;
    }
    catch (Exception paramContext)
    {
      throw new b("Unable to execute badge", paramContext);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/me/leolin/shortcutbadger/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */