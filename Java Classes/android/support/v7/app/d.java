package android.support.v7.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.aj;
import android.support.v4.app.aj.a;
import android.support.v4.app.j;
import android.support.v4.app.y;
import android.support.v7.view.b;
import android.support.v7.widget.Toolbar;
import android.support.v7.widget.bt;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import java.util.ArrayList;

public class d
  extends j
  implements aj.a, e
{
  private f mDelegate;
  private Resources mResources;
  private int mThemeId = 0;
  
  private boolean performMenuItemShortcut(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((Build.VERSION.SDK_INT < 26) && (!paramKeyEvent.isCtrlPressed()) && (!KeyEvent.metaStateHasNoModifiers(paramKeyEvent.getMetaState())) && (paramKeyEvent.getRepeatCount() == 0) && (!KeyEvent.isModifierKey(paramKeyEvent.getKeyCode())))
    {
      Window localWindow = getWindow();
      if ((localWindow != null) && (localWindow.getDecorView() != null) && (localWindow.getDecorView().dispatchKeyShortcutEvent(paramKeyEvent))) {
        return true;
      }
    }
    return false;
  }
  
  public void addContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    getDelegate().addContentView(paramView, paramLayoutParams);
  }
  
  public void closeOptionsMenu()
  {
    a locala = getSupportActionBar();
    if ((getWindow().hasFeature(0)) && ((locala == null) || (!locala.es()))) {
      super.closeOptionsMenu();
    }
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    int i = paramKeyEvent.getKeyCode();
    a locala = getSupportActionBar();
    if ((i == 82) && (locala != null) && (locala.b(paramKeyEvent))) {
      return true;
    }
    return super.dispatchKeyEvent(paramKeyEvent);
  }
  
  public <T extends View> T findViewById(int paramInt)
  {
    return getDelegate().findViewById(paramInt);
  }
  
  public f getDelegate()
  {
    if (this.mDelegate == null) {
      this.mDelegate = f.a(this, this);
    }
    return this.mDelegate;
  }
  
  public b.a getDrawerToggleDelegate()
  {
    return getDelegate().getDrawerToggleDelegate();
  }
  
  public MenuInflater getMenuInflater()
  {
    return getDelegate().getMenuInflater();
  }
  
  public Resources getResources()
  {
    if ((this.mResources == null) && (bt.jb())) {
      this.mResources = new bt(this, super.getResources());
    }
    if (this.mResources == null) {
      return super.getResources();
    }
    return this.mResources;
  }
  
  public a getSupportActionBar()
  {
    return getDelegate().getSupportActionBar();
  }
  
  public Intent getSupportParentActivityIntent()
  {
    return y.f(this);
  }
  
  public void invalidateOptionsMenu()
  {
    getDelegate().invalidateOptionsMenu();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    getDelegate().onConfigurationChanged(paramConfiguration);
    if (this.mResources != null)
    {
      DisplayMetrics localDisplayMetrics = super.getResources().getDisplayMetrics();
      this.mResources.updateConfiguration(paramConfiguration, localDisplayMetrics);
    }
  }
  
  public void onContentChanged()
  {
    onSupportContentChanged();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    f localf = getDelegate();
    localf.ev();
    localf.onCreate(paramBundle);
    if ((localf.ew()) && (this.mThemeId != 0))
    {
      if (Build.VERSION.SDK_INT < 23) {
        break label55;
      }
      onApplyThemeResource(getTheme(), this.mThemeId, false);
    }
    for (;;)
    {
      super.onCreate(paramBundle);
      return;
      label55:
      setTheme(this.mThemeId);
    }
  }
  
  public void onCreateSupportNavigateUpTaskStack(aj paramaj)
  {
    Intent localIntent = null;
    if ((this instanceof aj.a)) {
      localIntent = ((aj.a)this).getSupportParentActivityIntent();
    }
    if (localIntent == null) {
      localIntent = y.f(this);
    }
    for (;;)
    {
      if (localIntent != null)
      {
        ComponentName localComponentName2 = localIntent.getComponent();
        ComponentName localComponentName1 = localComponentName2;
        if (localComponentName2 == null) {
          localComponentName1 = localIntent.resolveActivity(paramaj.AS.getPackageManager());
        }
        paramaj.a(localComponentName1);
        paramaj.AR.add(localIntent);
      }
      return;
    }
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    getDelegate().onDestroy();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (performMenuItemShortcut(paramInt, paramKeyEvent)) {
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public final boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    if (super.onMenuItemSelected(paramInt, paramMenuItem)) {
      return true;
    }
    a locala = getSupportActionBar();
    if ((paramMenuItem.getItemId() == 16908332) && (locala != null) && ((locala.getDisplayOptions() & 0x4) != 0)) {
      return onSupportNavigateUp();
    }
    return false;
  }
  
  public boolean onMenuOpened(int paramInt, Menu paramMenu)
  {
    return super.onMenuOpened(paramInt, paramMenu);
  }
  
  public void onPanelClosed(int paramInt, Menu paramMenu)
  {
    super.onPanelClosed(paramInt, paramMenu);
  }
  
  public void onPostCreate(Bundle paramBundle)
  {
    super.onPostCreate(paramBundle);
    getDelegate().eu();
  }
  
  public void onPostResume()
  {
    super.onPostResume();
    getDelegate().onPostResume();
  }
  
  public void onPrepareSupportNavigateUpTaskStack(aj paramaj) {}
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    getDelegate().onSaveInstanceState(paramBundle);
  }
  
  public void onStart()
  {
    super.onStart();
    getDelegate().onStart();
  }
  
  public void onStop()
  {
    super.onStop();
    getDelegate().onStop();
  }
  
  public void onSupportActionModeFinished(b paramb) {}
  
  public void onSupportActionModeStarted(b paramb) {}
  
  @Deprecated
  public void onSupportContentChanged() {}
  
  public boolean onSupportNavigateUp()
  {
    Object localObject = getSupportParentActivityIntent();
    if (localObject != null)
    {
      if (supportShouldUpRecreateTask((Intent)localObject))
      {
        localObject = aj.e(this);
        onCreateSupportNavigateUpTaskStack((aj)localObject);
        onPrepareSupportNavigateUpTaskStack((aj)localObject);
        if (((aj)localObject).AR.isEmpty()) {
          throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
        }
        Intent[] arrayOfIntent = (Intent[])((aj)localObject).AR.toArray(new Intent[((aj)localObject).AR.size()]);
        arrayOfIntent[0] = new Intent(arrayOfIntent[0]).addFlags(268484608);
        android.support.v4.content.a.a(((aj)localObject).AS, arrayOfIntent);
      }
      for (;;)
      {
        try
        {
          android.support.v4.app.a.b(this);
          return true;
        }
        catch (IllegalStateException localIllegalStateException)
        {
          finish();
          continue;
        }
        supportNavigateUpTo(localIllegalStateException);
      }
    }
    return false;
  }
  
  protected void onTitleChanged(CharSequence paramCharSequence, int paramInt)
  {
    super.onTitleChanged(paramCharSequence, paramInt);
    getDelegate().setTitle(paramCharSequence);
  }
  
  public b onWindowStartingSupportActionMode(android.support.v7.view.b.a parama)
  {
    return null;
  }
  
  public void openOptionsMenu()
  {
    a locala = getSupportActionBar();
    if ((getWindow().hasFeature(0)) && ((locala == null) || (!locala.er()))) {
      super.openOptionsMenu();
    }
  }
  
  public void setContentView(int paramInt)
  {
    getDelegate().setContentView(paramInt);
  }
  
  public void setContentView(View paramView)
  {
    getDelegate().setContentView(paramView);
  }
  
  public void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    getDelegate().setContentView(paramView, paramLayoutParams);
  }
  
  public void setSupportActionBar(Toolbar paramToolbar)
  {
    getDelegate().setSupportActionBar(paramToolbar);
  }
  
  @Deprecated
  public void setSupportProgress(int paramInt) {}
  
  @Deprecated
  public void setSupportProgressBarIndeterminate(boolean paramBoolean) {}
  
  @Deprecated
  public void setSupportProgressBarIndeterminateVisibility(boolean paramBoolean) {}
  
  @Deprecated
  public void setSupportProgressBarVisibility(boolean paramBoolean) {}
  
  public void setTheme(int paramInt)
  {
    super.setTheme(paramInt);
    this.mThemeId = paramInt;
  }
  
  public b startSupportActionMode(android.support.v7.view.b.a parama)
  {
    return getDelegate().startSupportActionMode(parama);
  }
  
  public void supportInvalidateOptionsMenu()
  {
    getDelegate().invalidateOptionsMenu();
  }
  
  public void supportNavigateUpTo(Intent paramIntent)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      navigateUpTo(paramIntent);
      return;
    }
    paramIntent.addFlags(67108864);
    startActivity(paramIntent);
    finish();
  }
  
  public boolean supportRequestWindowFeature(int paramInt)
  {
    return getDelegate().requestWindowFeature(paramInt);
  }
  
  public boolean supportShouldUpRecreateTask(Intent paramIntent)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      return shouldUpRecreateTask(paramIntent);
    }
    paramIntent = getIntent().getAction();
    return (paramIntent != null) && (!paramIntent.equals("android.intent.action.MAIN"));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/app/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */