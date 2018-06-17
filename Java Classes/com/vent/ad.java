package com.vent;

import android.app.Activity;
import android.os.AsyncTask;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

public class ad
  extends AsyncTask<Void, Void, Void>
{
  final JSONObject bYn;
  String[][] bYq;
  final WeakReference<Activity> ccT;
  protected int ccU;
  public JSONObject ccV;
  private android.support.v7.app.c ccW;
  private final boolean ccX;
  public int ccY;
  private final boolean ccZ;
  az.a cda;
  final CharSequence cdb;
  private final String method;
  final String url;
  
  public ad(CharSequence paramCharSequence1, Activity paramActivity, CharSequence paramCharSequence2, String paramString, JSONObject paramJSONObject, int paramInt)
  {
    this(paramCharSequence1, paramActivity, paramCharSequence2, paramString, paramJSONObject, paramInt, false);
  }
  
  public ad(CharSequence paramCharSequence1, Activity paramActivity, CharSequence paramCharSequence2, String paramString, JSONObject paramJSONObject, int paramInt, boolean paramBoolean)
  {
    this.ccT = new WeakReference(paramActivity);
    this.url = paramCharSequence2.toString();
    if (!this.url.startsWith("http")) {}
    for (boolean bool = true;; bool = false)
    {
      this.ccX = bool;
      this.method = paramString;
      this.bYn = paramJSONObject;
      this.ccZ = paramBoolean;
      if (this.ccX) {
        this.bYq = ((String[][])com.vent.d.c.d(bb.bYq));
      }
      if (paramInt != 0) {
        this.ccW = com.vent.d.c.v(paramActivity, paramInt);
      }
      this.cdb = paramCharSequence1;
      return;
    }
  }
  
  protected Void a(Void... paramVarArgs)
  {
    String str = this.method;
    if (this.ccX) {}
    for (paramVarArgs = bb.Er() + this.url;; paramVarArgs = this.url)
    {
      this.cda = az.a(str, paramVarArgs, this.bYq, this.bYn);
      this.ccU = this.cda.bYo;
      this.ccV = this.cda.bYp;
      Thread.yield();
      return null;
    }
  }
  
  public void aQ(boolean paramBoolean) {}
  
  protected void b(Void paramVoid)
  {
    super.onPostExecute(paramVoid);
    com.vent.d.c.a(this.ccW);
    this.ccW = null;
    this.ccY = this.ccU;
    if ((this.ccZ) && ((this.ccU < 200) || (this.ccU > 299))) {
      this.ccU = 200;
    }
    if ((this.ccU < 200) || (this.ccU > 299))
    {
      if ((this.ccU == 502) || (this.ccU == 504) || ((this.ccU >= 520) && (this.ccU <= 527))) {
        az.Ee();
      }
      if ((this.ccU == 401) || (this.ccU == 403))
      {
        aQ(false);
        return;
      }
      if (this.ccT != null)
      {
        paramVoid = (Activity)this.ccT.get();
        com.vent.d.c.a(paramVoid, com.vent.d.c.a(paramVoid, this.ccU, this.ccV), 0);
      }
      aQ(false);
      return;
    }
    aQ(true);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/ad.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */