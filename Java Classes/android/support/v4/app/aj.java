package android.support.v4.app;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;

public final class aj
  implements Iterable<Intent>
{
  private static final c AQ = new c();
  public final ArrayList<Intent> AR = new ArrayList();
  public final Context AS;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      AQ = new b();
      return;
    }
  }
  
  private aj(Context paramContext)
  {
    this.AS = paramContext;
  }
  
  public static aj e(Context paramContext)
  {
    return new aj(paramContext);
  }
  
  public final aj a(ComponentName paramComponentName)
  {
    int i = this.AR.size();
    try
    {
      for (paramComponentName = y.a(this.AS, paramComponentName); paramComponentName != null; paramComponentName = y.a(this.AS, paramComponentName.getComponent())) {
        this.AR.add(i, paramComponentName);
      }
      return this;
    }
    catch (PackageManager.NameNotFoundException paramComponentName)
    {
      Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
      throw new IllegalArgumentException(paramComponentName);
    }
  }
  
  @Deprecated
  public final Iterator<Intent> iterator()
  {
    return this.AR.iterator();
  }
  
  public static abstract interface a
  {
    public abstract Intent getSupportParentActivityIntent();
  }
  
  static final class b
    extends aj.c
  {}
  
  static class c {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/app/aj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */