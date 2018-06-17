package android.support.v7.app;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.location.LocationManager;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v7.view.b;
import android.support.v7.view.f.a;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.View;
import android.view.Window;
import android.view.Window.Callback;

class i
  extends k
{
  private int MT = -100;
  private boolean MU;
  boolean MV = true;
  private b MW;
  
  i(Context paramContext, Window paramWindow, e parame)
  {
    super(paramContext, paramWindow, parame);
  }
  
  private void eA()
  {
    if (this.MW == null)
    {
      Context localContext = this.mContext;
      if (p.Ox == null)
      {
        localContext = localContext.getApplicationContext();
        p.Ox = new p(localContext, (LocationManager)localContext.getSystemService("location"));
      }
      this.MW = new b(p.Ox);
    }
  }
  
  private boolean eB()
  {
    if ((this.MU) && ((this.mContext instanceof Activity)))
    {
      PackageManager localPackageManager = this.mContext.getPackageManager();
      try
      {
        int i = localPackageManager.getActivityInfo(new ComponentName(this.mContext, this.mContext.getClass()), 0).configChanges;
        return (i & 0x200) == 0;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        Log.d("AppCompatDelegate", "Exception while getting ActivityInfo", localNameNotFoundException);
        return true;
      }
    }
    return false;
  }
  
  final View a(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    return null;
  }
  
  Window.Callback a(Window.Callback paramCallback)
  {
    return new a(paramCallback);
  }
  
  int aR(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return paramInt;
    case 0: 
      eA();
      b localb = this.MW;
      localb.MZ = localb.MY.eI();
      if (localb.MZ) {
        return 2;
      }
      return 1;
    }
    return -1;
  }
  
  public final boolean ew()
  {
    int i;
    int j;
    Object localObject;
    Configuration localConfiguration;
    label55:
    label80:
    boolean bool;
    if (this.MT != -100)
    {
      i = this.MT;
      j = aR(i);
      if (j == -1) {
        break label324;
      }
      localObject = this.mContext.getResources();
      localConfiguration = ((Resources)localObject).getConfiguration();
      int k = localConfiguration.uiMode;
      if (j != 2) {
        break label211;
      }
      j = 32;
      if ((k & 0x30) == j) {
        break label318;
      }
      if (!eB()) {
        break label217;
      }
      ((Activity)this.mContext).recreate();
      bool = true;
    }
    for (;;)
    {
      if (i == 0)
      {
        eA();
        localObject = this.MW;
        ((b)localObject).cleanup();
        if (((b)localObject).Na == null) {
          ((b)localObject).Na = new i.b.1((b)localObject);
        }
        if (((b)localObject).Nb == null)
        {
          ((b)localObject).Nb = new IntentFilter();
          ((b)localObject).Nb.addAction("android.intent.action.TIME_SET");
          ((b)localObject).Nb.addAction("android.intent.action.TIMEZONE_CHANGED");
          ((b)localObject).Nb.addAction("android.intent.action.TIME_TICK");
        }
        ((b)localObject).MX.mContext.registerReceiver(((b)localObject).Na, ((b)localObject).Nb);
      }
      this.MU = true;
      return bool;
      i = f.Mz;
      break;
      label211:
      j = 16;
      break label55;
      label217:
      localConfiguration = new Configuration(localConfiguration);
      DisplayMetrics localDisplayMetrics = ((Resources)localObject).getDisplayMetrics();
      localConfiguration.uiMode = (j | localConfiguration.uiMode & 0xFFFFFFCF);
      ((Resources)localObject).updateConfiguration(localConfiguration, localDisplayMetrics);
      if (Build.VERSION.SDK_INT >= 26) {
        break label80;
      }
      if (Build.VERSION.SDK_INT >= 24)
      {
        m.c((Resources)localObject);
        break label80;
      }
      if (Build.VERSION.SDK_INT >= 23)
      {
        m.b((Resources)localObject);
        break label80;
      }
      if (Build.VERSION.SDK_INT < 21) {
        break label80;
      }
      m.a((Resources)localObject);
      break label80;
      label318:
      bool = false;
      continue;
      label324:
      bool = false;
    }
  }
  
  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if ((paramBundle != null) && (this.MT == -100)) {
      this.MT = paramBundle.getInt("appcompat:local_night_mode", -100);
    }
  }
  
  public final void onDestroy()
  {
    super.onDestroy();
    if (this.MW != null) {
      this.MW.cleanup();
    }
  }
  
  public final void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (this.MT != -100) {
      paramBundle.putInt("appcompat:local_night_mode", this.MT);
    }
  }
  
  public final void onStart()
  {
    super.onStart();
    ew();
  }
  
  public final void onStop()
  {
    super.onStop();
    if (this.MW != null) {
      this.MW.cleanup();
    }
  }
  
  class a
    extends g.b
  {
    a(Window.Callback paramCallback)
    {
      super(paramCallback);
    }
    
    final ActionMode a(ActionMode.Callback paramCallback)
    {
      paramCallback = new f.a(i.this.mContext, paramCallback);
      b localb = i.this.startSupportActionMode(paramCallback);
      if (localb != null) {
        return paramCallback.b(localb);
      }
      return null;
    }
    
    public ActionMode onWindowStartingActionMode(ActionMode.Callback paramCallback)
    {
      if (i.this.MV) {
        return a(paramCallback);
      }
      return super.onWindowStartingActionMode(paramCallback);
    }
  }
  
  final class b
  {
    p MY;
    boolean MZ;
    BroadcastReceiver Na;
    IntentFilter Nb;
    
    b(p paramp)
    {
      this.MY = paramp;
      this.MZ = paramp.eI();
    }
    
    final void cleanup()
    {
      if (this.Na != null)
      {
        i.this.mContext.unregisterReceiver(this.Na);
        this.Na = null;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/app/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */