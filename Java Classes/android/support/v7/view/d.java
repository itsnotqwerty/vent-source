package android.support.v7.view;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.os.Build.VERSION;
import android.support.v7.a.a.i;
import android.view.LayoutInflater;

public final class d
  extends ContextWrapper
{
  private LayoutInflater JR;
  public int Pt;
  private Resources.Theme Pu;
  private Configuration Pv;
  private Resources mResources;
  
  public d()
  {
    super(null);
  }
  
  public d(Context paramContext, int paramInt)
  {
    super(paramContext);
    this.Pt = paramInt;
  }
  
  private void eP()
  {
    if (this.Pu == null) {}
    for (int i = 1;; i = 0)
    {
      if (i != 0)
      {
        this.Pu = getResources().newTheme();
        Resources.Theme localTheme = getBaseContext().getTheme();
        if (localTheme != null) {
          this.Pu.setTo(localTheme);
        }
      }
      this.Pu.applyStyle(this.Pt, true);
      return;
    }
  }
  
  protected final void attachBaseContext(Context paramContext)
  {
    super.attachBaseContext(paramContext);
  }
  
  public final AssetManager getAssets()
  {
    return getResources().getAssets();
  }
  
  public final Resources getResources()
  {
    if (this.mResources == null)
    {
      if (this.Pv != null) {
        break label27;
      }
      this.mResources = super.getResources();
    }
    for (;;)
    {
      return this.mResources;
      label27:
      if (Build.VERSION.SDK_INT >= 17) {
        this.mResources = createConfigurationContext(this.Pv).getResources();
      }
    }
  }
  
  public final Object getSystemService(String paramString)
  {
    if ("layout_inflater".equals(paramString))
    {
      if (this.JR == null) {
        this.JR = LayoutInflater.from(getBaseContext()).cloneInContext(this);
      }
      return this.JR;
    }
    return getBaseContext().getSystemService(paramString);
  }
  
  public final Resources.Theme getTheme()
  {
    if (this.Pu != null) {
      return this.Pu;
    }
    if (this.Pt == 0) {
      this.Pt = a.i.Theme_AppCompat_Light;
    }
    eP();
    return this.Pu;
  }
  
  public final void setTheme(int paramInt)
  {
    if (this.Pt != paramInt)
    {
      this.Pt = paramInt;
      eP();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/view/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */