package android.support.v7.app;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v7.view.b;
import android.support.v7.view.b.a;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup.LayoutParams;

public class l
  extends Dialog
  implements e
{
  private f mDelegate;
  
  public l(Context paramContext, int paramInt)
  {
    super(paramContext, i);
    getDelegate().onCreate(null);
    getDelegate().ew();
  }
  
  public void addContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    getDelegate().addContentView(paramView, paramLayoutParams);
  }
  
  public <T extends View> T findViewById(int paramInt)
  {
    return getDelegate().findViewById(paramInt);
  }
  
  public final f getDelegate()
  {
    if (this.mDelegate == null) {
      this.mDelegate = f.a(this, this);
    }
    return this.mDelegate;
  }
  
  public void invalidateOptionsMenu()
  {
    getDelegate().invalidateOptionsMenu();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    getDelegate().ev();
    super.onCreate(paramBundle);
    getDelegate().onCreate(paramBundle);
  }
  
  protected void onStop()
  {
    super.onStop();
    getDelegate().onStop();
  }
  
  public void onSupportActionModeFinished(b paramb) {}
  
  public void onSupportActionModeStarted(b paramb) {}
  
  public b onWindowStartingSupportActionMode(b.a parama)
  {
    return null;
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
  
  public void setTitle(int paramInt)
  {
    super.setTitle(paramInt);
    getDelegate().setTitle(getContext().getString(paramInt));
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    super.setTitle(paramCharSequence);
    getDelegate().setTitle(paramCharSequence);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/app/l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */