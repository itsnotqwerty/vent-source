package com.vent;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.support.design.widget.TextInputLayout;
import android.support.v7.widget.Toolbar;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.vent.views.b;
import org.json.JSONException;
import org.json.JSONObject;

public final class ActSignIn
  extends a
  implements View.OnClickListener, View.OnFocusChangeListener
{
  private b bTI;
  private TextInputLayout bUQ;
  private EditText bUR;
  long bUU;
  boolean bUV;
  TextInputLayout bYk;
  private EditText bYl;
  
  public static void a(Activity paramActivity, Bundle paramBundle)
  {
    Intent localIntent = new Intent(paramActivity, ActSignIn.class);
    localIntent.putExtra("gradientpos", paramBundle);
    paramActivity.startActivityForResult(localIntent, 2);
  }
  
  final void Ci()
  {
    int k = 0;
    int i;
    if (com.vent.d.c.a(this.bUQ, this.bUR))
    {
      i = 1;
      int j = k;
      if (this.bYl.length() != 0)
      {
        j = k;
        if (i != 0) {
          j = 1;
        }
      }
      if (j != 0) {
        break label48;
      }
    }
    label48:
    while (this.bUV)
    {
      return;
      i = 0;
      break;
    }
    this.bUV = true;
    if (System.currentTimeMillis() - this.bUU > 1000L)
    {
      Cj();
      return;
    }
    final android.support.v7.app.c localc = com.vent.d.c.v(this, 2131689697);
    this.handler.postDelayed(new Runnable()
    {
      public final void run()
      {
        ActSignIn.this.Cj();
        com.vent.d.c.a(localc);
      }
    }, 1000L);
  }
  
  final void Cj()
  {
    this.bUU = System.currentTimeMillis();
    JSONObject localJSONObject1 = new JSONObject();
    try
    {
      JSONObject localJSONObject2 = new JSONObject();
      localJSONObject2.put("username", this.bUR.getText());
      localJSONObject2.put("password", this.bYl.getText());
      localJSONObject1.put("user", localJSONObject2);
      com.vent.d.c.t(this);
      com.vent.d.c.b(new a(localJSONObject1));
      return;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        localJSONException.printStackTrace();
      }
    }
  }
  
  final void es(int paramInt)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("gradientpos", this.bTI.FC());
    setResult(paramInt, localIntent);
    finish();
  }
  
  public final void onBackPressed()
  {
    es(0);
  }
  
  public final void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131296526: 
      ActForgotPassword.a(this, this.bTI.FC());
      return;
    }
    Ci();
  }
  
  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.bTx = true;
    setContentView(2131427386);
    com.vent.d.c.Fz();
    paramBundle = (Toolbar)findViewById(2131296949);
    paramBundle.setTitle("");
    setSupportActionBar(paramBundle);
    getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    this.bUQ = ((TextInputLayout)findViewById(2131296982));
    this.bUQ.setHint(null);
    this.bUR = ((EditText)findViewById(2131296981));
    this.bUR.setOnFocusChangeListener(this);
    this.bUR.setHint(2131689820);
    paramBundle = (ViewGroup.MarginLayoutParams)this.bUR.getLayoutParams();
    paramBundle.topMargin = 0;
    this.bUR.setLayoutParams(paramBundle);
    this.bYk = ((TextInputLayout)findViewById(2131296797));
    this.bYk.setHint(null);
    this.bYl = ((EditText)findViewById(2131296792));
    this.bYl.setTypeface(Typeface.DEFAULT);
    this.bYl.setHint(2131689691);
    paramBundle = (ViewGroup.MarginLayoutParams)this.bYl.getLayoutParams();
    paramBundle.topMargin = 0;
    this.bYl.setLayoutParams(paramBundle);
    this.bYl.setOnFocusChangeListener(this);
    this.bYl.setOnEditorActionListener(new TextView.OnEditorActionListener()
    {
      public final boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        ActSignIn.this.Ci();
        return true;
      }
    });
    findViewById(2131296526).setOnClickListener(this);
    findViewById(2131296897).setOnClickListener(this);
    this.bTI = new b(this, getIntent().getBundleExtra("gradientpos"));
  }
  
  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    switch (paramView.getId())
    {
    }
    do
    {
      do
      {
        return;
        if (!paramBoolean)
        {
          com.vent.d.c.a(this.bUQ, this.bUR);
          return;
        }
      } while (this.bUQ == null);
      this.bUQ.setError(null);
      return;
      if (!paramBoolean)
      {
        com.vent.d.c.b(this.bYk, this.bYl);
        return;
      }
    } while (this.bYk == null);
    this.bYk.setError(null);
  }
  
  public final boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    es(0);
    return true;
  }
  
  protected final void onResume()
  {
    super.onResume();
    ax.v(this, ax.cfN);
  }
  
  final class a
    extends AsyncTask<Void, Void, Void>
  {
    final android.support.v7.app.c bUO;
    final JSONObject bYn;
    int bYo;
    JSONObject bYp;
    final String[][] bYq;
    
    a(JSONObject paramJSONObject)
    {
      this.bYn = paramJSONObject;
      this.bUO = com.vent.d.c.v(ActSignIn.this, 2131689760);
      this.bYq = ((String[][])com.vent.d.c.d(bb.bYq));
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/ActSignIn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */