package com.intercom.input.gallery;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.n;
import android.support.v4.app.t;
import android.support.v7.app.d;
import android.view.MenuItem;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import com.intercom.composer.h;

public class GalleryInputFullScreenActivity
  extends d
  implements i
{
  private Class<? extends f> bmi;
  private Bundle bmj;
  
  public static Intent a(Context paramContext, Class<? extends f> paramClass, Bundle paramBundle)
  {
    return new Intent(paramContext, GalleryInputFullScreenActivity.class).putExtra("fragment_class", paramClass).putExtra("fragment_args", paramBundle);
  }
  
  public void onBackPressed()
  {
    super.onBackPressed();
    View localView = getCurrentFocus();
    if (localView != null) {
      ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(localView.getWindowToken(), 0);
    }
    overridePendingTransition(m.a.intercom_composer_stay, m.a.intercom_composer_slide_down);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(m.f.intercom_composer_activity_input_full_screen);
    h.a(getWindow(), m.b.intercom_composer_status_bar);
    paramBundle = getIntent();
    this.bmi = ((Class)paramBundle.getSerializableExtra("fragment_class"));
    this.bmj = paramBundle.getBundleExtra("fragment_args");
  }
  
  public void onGalleryOutputReceived(b paramb)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("gallery_image", paramb);
    setResult(-1, localIntent);
    onBackPressed();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332)
    {
      onBackPressed();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  protected void onPostCreate(Bundle paramBundle)
  {
    super.onPostCreate(paramBundle);
    n localn = getSupportFragmentManager();
    String str = f.class.getName();
    f localf;
    if (localn.w(str) == null)
    {
      localf = (f)a.u(this.bmi);
      if (this.bmj != null) {
        break label89;
      }
    }
    label89:
    for (paramBundle = new Bundle();; paramBundle = new Bundle(this.bmj))
    {
      paramBundle.putAll(f.createArguments(true));
      localf.setArguments(paramBundle);
      localf.setGalleryListener(this);
      localn.cG().b(m.d.expanded_fragment, localf, str).commit();
      return;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/intercom/input/gallery/GalleryInputFullScreenActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */