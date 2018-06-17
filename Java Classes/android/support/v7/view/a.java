package android.support.v7.view;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.support.v7.a.a.b;

public final class a
{
  public Context mContext;
  
  private a(Context paramContext)
  {
    this.mContext = paramContext;
  }
  
  public static a k(Context paramContext)
  {
    return new a(paramContext);
  }
  
  public final int eN()
  {
    Configuration localConfiguration = this.mContext.getResources().getConfiguration();
    int i = localConfiguration.screenWidthDp;
    int j = localConfiguration.screenHeightDp;
    if ((localConfiguration.smallestScreenWidthDp > 600) || (i > 600) || ((i > 960) && (j > 720)) || ((i > 720) && (j > 960))) {
      return 5;
    }
    if ((i >= 500) || ((i > 640) && (j > 480)) || ((i > 480) && (j > 640))) {
      return 4;
    }
    if (i >= 360) {
      return 3;
    }
    return 2;
  }
  
  public final boolean eO()
  {
    return this.mContext.getResources().getBoolean(a.b.abc_action_bar_embed_tabs);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/view/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */