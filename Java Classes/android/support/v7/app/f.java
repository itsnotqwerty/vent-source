package android.support.v7.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v7.view.b;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;

public abstract class f
{
  private static boolean MA = false;
  static int Mz = -1;
  
  public static f a(Activity paramActivity, e parame)
  {
    return a(paramActivity, paramActivity.getWindow(), parame);
  }
  
  public static f a(Dialog paramDialog, e parame)
  {
    return a(paramDialog.getContext(), paramDialog.getWindow(), parame);
  }
  
  private static f a(Context paramContext, Window paramWindow, e parame)
  {
    if (Build.VERSION.SDK_INT >= 24) {
      return new h(paramContext, paramWindow, parame);
    }
    if (Build.VERSION.SDK_INT >= 23) {
      return new j(paramContext, paramWindow, parame);
    }
    return new i(paramContext, paramWindow, parame);
  }
  
  public static void aO(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      Log.d("AppCompatDelegate", "setDefaultNightMode() called with an unknown mode");
      return;
    }
    Mz = paramInt;
  }
  
  public static boolean ex()
  {
    return MA;
  }
  
  public abstract void addContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams);
  
  public abstract void eu();
  
  public abstract void ev();
  
  public abstract boolean ew();
  
  public abstract <T extends View> T findViewById(int paramInt);
  
  public abstract b.a getDrawerToggleDelegate();
  
  public abstract MenuInflater getMenuInflater();
  
  public abstract a getSupportActionBar();
  
  public abstract void invalidateOptionsMenu();
  
  public abstract void onConfigurationChanged(Configuration paramConfiguration);
  
  public abstract void onCreate(Bundle paramBundle);
  
  public abstract void onDestroy();
  
  public abstract void onPostResume();
  
  public abstract void onSaveInstanceState(Bundle paramBundle);
  
  public abstract void onStart();
  
  public abstract void onStop();
  
  public abstract boolean requestWindowFeature(int paramInt);
  
  public abstract void setContentView(int paramInt);
  
  public abstract void setContentView(View paramView);
  
  public abstract void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams);
  
  public abstract void setSupportActionBar(Toolbar paramToolbar);
  
  public abstract void setTitle(CharSequence paramCharSequence);
  
  public abstract b startSupportActionMode(android.support.v7.view.b.a parama);
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/app/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */