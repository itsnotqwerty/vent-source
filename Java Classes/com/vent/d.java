package com.vent;

import android.os.Build.VERSION;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.SearchView;
import android.widget.SearchView.OnQueryTextListener;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.vent.d.c;

public abstract class d<F extends aq<A, T>, A extends l<T>, T extends com.vent.a.a>
  extends a
  implements View.OnClickListener, ay<F>
{
  F bWr;
  
  public String a(F paramF, boolean paramBoolean)
  {
    return paramF.a(paramF, paramBoolean);
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    }
    this.bWr.By();
  }
  
  protected void onDestroy()
  {
    this.bWr = null;
    super.onDestroy();
  }
  
  protected void onStart()
  {
    super.onStart();
    findViewById(2131296949).setOnClickListener(this);
    if (Build.VERSION.SDK_INT >= 11)
    {
      ((SearchView)findViewById(2131296863)).setOnQueryTextListener(new SearchView.OnQueryTextListener()
      {
        public final boolean onQueryTextChange(String paramAnonymousString)
        {
          if (d.this.bWr != null) {
            d.this.bWr.dX(paramAnonymousString);
          }
          return true;
        }
        
        public final boolean onQueryTextSubmit(String paramAnonymousString)
        {
          if (d.this.bWr != null) {
            c.q(d.this.bWr);
          }
          return true;
        }
      });
      return;
    }
    EditText localEditText = (EditText)findViewById(2131296863);
    localEditText.addTextChangedListener(new TextWatcher()
    {
      public final void afterTextChanged(Editable paramAnonymousEditable) {}
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        if (d.this.bWr != null) {
          d.this.bWr.dX(String.valueOf(paramAnonymousCharSequence));
        }
      }
    });
    localEditText.setOnEditorActionListener(new TextView.OnEditorActionListener()
    {
      public final boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        if (d.this.bWr != null) {
          c.q(d.this.bWr);
        }
        return false;
      }
    });
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */