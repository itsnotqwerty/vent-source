package com.vent;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.TextInputLayout;
import android.support.v7.app.c.a;
import android.support.v7.widget.Toolbar;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.vent.d.c.b;
import com.vent.views.b;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class ActForgotPassword
  extends a
  implements View.OnFocusChangeListener, TextView.OnEditorActionListener
{
  private b bTI;
  TextInputLayout bTO;
  EditText bTP;
  boolean bTT;
  
  public static void a(Activity paramActivity, Bundle paramBundle)
  {
    Intent localIntent = new Intent(paramActivity, ActForgotPassword.class);
    localIntent.putExtra("gradientpos", paramBundle);
    paramActivity.startActivityForResult(localIntent, 11);
  }
  
  private void wf()
  {
    com.vent.d.c.a(this, this.bTO, this.bTP, new c.b()
    {
      public final void run()
      {
        ActForgotPassword localActForgotPassword;
        if (((Boolean)this.cmT).booleanValue())
        {
          localActForgotPassword = ActForgotPassword.this;
          if ((localActForgotPassword.bTT) || (localActForgotPassword.bTP == null)) {}
        }
        try
        {
          JSONObject localJSONObject = new JSONObject();
          localJSONObject.put("email", localActForgotPassword.bTP.getText().toString().trim());
          com.vent.d.c.t(localActForgotPassword);
          localActForgotPassword.bTT = true;
          com.vent.d.c.b(new ActForgotPassword.2(localActForgotPassword, localActForgotPassword, "api/v1/forgot_password", "POST", localJSONObject));
          return;
        }
        catch (JSONException localJSONException)
        {
          localJSONException.printStackTrace();
        }
      }
    });
  }
  
  public final boolean aR(boolean paramBoolean)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("gradientpos", this.bTI.FC());
    setResult(0, localIntent);
    finish();
    return true;
  }
  
  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.bTx = true;
    setContentView(2131427367);
    com.vent.d.c.Fz();
    paramBundle = (Toolbar)findViewById(2131296949);
    paramBundle.setTitle(2131689584);
    setSupportActionBar(paramBundle);
    getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    this.bTO = ((TextInputLayout)findViewById(2131296474));
    this.bTO.setHint(null);
    this.bTP = ((EditText)findViewById(2131296473));
    this.bTP.setHint(2131689557);
    paramBundle = (ViewGroup.MarginLayoutParams)this.bTP.getLayoutParams();
    paramBundle.topMargin = 0;
    this.bTP.setLayoutParams(paramBundle);
    this.bTP.setOnFocusChangeListener(this);
    this.bTP.setOnEditorActionListener(this);
    this.bTI = new b(this, getIntent().getBundleExtra("gradientpos"));
  }
  
  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131492872, paramMenu);
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public final boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    wf();
    return true;
  }
  
  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    switch (paramView.getId())
    {
    }
    do
    {
      return;
      if (!paramBoolean)
      {
        com.vent.d.c.a(null, this.bTO, this.bTP, null);
        return;
      }
    } while (this.bTO == null);
    this.bTO.setError(null);
  }
  
  public final boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    wf();
    return true;
  }
  
  protected final void onResume()
  {
    super.onResume();
    ax.v(this, "ForgotPassword");
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/ActForgotPassword.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */