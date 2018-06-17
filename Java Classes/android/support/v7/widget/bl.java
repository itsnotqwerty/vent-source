package android.support.v7.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.os.Build.VERSION;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

public final class bl
  extends ContextWrapper
{
  private static final Object ajN = new Object();
  private static ArrayList<WeakReference<bl>> ajO;
  private final Resources.Theme Pu;
  private final Resources mResources;
  
  private bl(Context paramContext)
  {
    super(paramContext);
    if (bt.jb())
    {
      this.mResources = new bt(this, paramContext.getResources());
      this.Pu = this.mResources.newTheme();
      this.Pu.setTo(paramContext.getTheme());
      return;
    }
    this.mResources = new bn(this, paramContext.getResources());
    this.Pu = null;
  }
  
  public static Context n(Context paramContext)
  {
    int j = 0;
    int i = j;
    if (!(paramContext instanceof bl))
    {
      i = j;
      if (!(paramContext.getResources() instanceof bn))
      {
        if (!(paramContext.getResources() instanceof bt)) {
          break label94;
        }
        i = j;
      }
    }
    Object localObject1 = paramContext;
    if (i != 0) {}
    for (;;)
    {
      synchronized (ajN)
      {
        if (ajO == null)
        {
          ajO = new ArrayList();
          localObject1 = new bl(paramContext);
          ajO.add(new WeakReference(localObject1));
          return (Context)localObject1;
          label94:
          if (Build.VERSION.SDK_INT >= 21)
          {
            i = j;
            if (!bt.jb()) {
              break;
            }
          }
          i = 1;
          break;
        }
        i = ajO.size() - 1;
        if (i >= 0)
        {
          localObject1 = (WeakReference)ajO.get(i);
          if ((localObject1 == null) || (((WeakReference)localObject1).get() == null)) {
            ajO.remove(i);
          }
        }
        else
        {
          i = ajO.size() - 1;
          if (i < 0) {
            continue;
          }
          localObject1 = (WeakReference)ajO.get(i);
          if (localObject1 == null) {
            break label227;
          }
          localObject1 = (bl)((WeakReference)localObject1).get();
          if ((localObject1 == null) || (((bl)localObject1).getBaseContext() != paramContext)) {
            break label232;
          }
          return (Context)localObject1;
        }
      }
      i -= 1;
      continue;
      label227:
      localObject1 = null;
      continue;
      label232:
      i -= 1;
    }
  }
  
  public final AssetManager getAssets()
  {
    return this.mResources.getAssets();
  }
  
  public final Resources getResources()
  {
    return this.mResources;
  }
  
  public final Resources.Theme getTheme()
  {
    if (this.Pu == null) {
      return super.getTheme();
    }
    return this.Pu;
  }
  
  public final void setTheme(int paramInt)
  {
    if (this.Pu == null)
    {
      super.setTheme(paramInt);
      return;
    }
    this.Pu.applyStyle(paramInt, true);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/bl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */