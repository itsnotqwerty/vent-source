package com.vent;

import android.app.Activity;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.i;
import android.support.v4.app.n;
import android.support.v7.widget.Toolbar;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.SearchView;
import android.widget.SearchView.OnQueryTextListener;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

public final class ActSearch
  extends a
  implements TextWatcher, SearchView.OnQueryTextListener, TextView.OnEditorActionListener
{
  private FrgSearchBoth bXP;
  
  public static void a(Activity paramActivity, i parami)
  {
    Intent localIntent = new Intent(paramActivity, ActSearch.class);
    if (parami != null) {
      parami.startActivityForResult(localIntent, 27);
    }
    for (;;)
    {
      paramActivity.overridePendingTransition(0, 0);
      return;
      paramActivity.startActivityForResult(localIntent, 27);
    }
  }
  
  public final void afterTextChanged(Editable paramEditable) {}
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2131427382);
    this.bXP = ((FrgSearchBoth)getSupportFragmentManager().Y(2131296527));
    paramBundle = (Toolbar)findViewById(2131296949);
    paramBundle.setTitle("");
    setSupportActionBar(paramBundle);
    getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    if (Build.VERSION.SDK_INT >= 11)
    {
      ((SearchView)findViewById(2131296863)).setOnQueryTextListener(this);
      return;
    }
    paramBundle = (EditText)findViewById(2131296863);
    paramBundle.addTextChangedListener(this);
    paramBundle.setOnEditorActionListener(this);
  }
  
  protected final void onDestroy()
  {
    if (Build.VERSION.SDK_INT >= 11) {
      ((SearchView)findViewById(2131296863)).setOnQueryTextListener(null);
    }
    for (;;)
    {
      this.bXP = null;
      super.onDestroy();
      return;
      EditText localEditText = (EditText)findViewById(2131296863);
      localEditText.setOnEditorActionListener(null);
      localEditText.addTextChangedListener(this);
    }
  }
  
  public final boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    this.bXP.DT();
    return false;
  }
  
  public final boolean onQueryTextChange(String paramString)
  {
    this.bXP.dX(paramString);
    return true;
  }
  
  public final boolean onQueryTextSubmit(String paramString)
  {
    this.bXP.DT();
    return true;
  }
  
  protected final void onResume()
  {
    super.onResume();
    if (!bb.r(this)) {
      return;
    }
    ax.v(this, "Explore");
  }
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    this.bXP.dX(String.valueOf(paramCharSequence));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/ActSearch.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */