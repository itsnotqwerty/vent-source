package android.support.v4.app;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import java.util.ArrayList;

public final class af
{
  public static final class a
  {
    public Intent AI;
    public CharSequence AJ;
    public ArrayList<String> AK;
    public ArrayList<String> AL;
    public ArrayList<String> AM;
    public ArrayList<Uri> AN;
    public Activity xs;
    
    public a(Activity paramActivity)
    {
      this.xs = paramActivity;
      this.AI = new Intent().setAction("android.intent.action.SEND");
      this.AI.putExtra("android.support.v4.app.EXTRA_CALLING_PACKAGE", paramActivity.getPackageName());
      this.AI.putExtra("android.support.v4.app.EXTRA_CALLING_ACTIVITY", paramActivity.getComponentName());
      this.AI.addFlags(524288);
    }
    
    public final void a(String paramString, ArrayList<String> paramArrayList)
    {
      String[] arrayOfString1 = this.AI.getStringArrayExtra(paramString);
      if (arrayOfString1 != null) {}
      for (int i = arrayOfString1.length;; i = 0)
      {
        String[] arrayOfString2 = new String[paramArrayList.size() + i];
        paramArrayList.toArray(arrayOfString2);
        if (arrayOfString1 != null) {
          System.arraycopy(arrayOfString1, 0, arrayOfString2, paramArrayList.size(), i);
        }
        this.AI.putExtra(paramString, arrayOfString2);
        return;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/app/af.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */