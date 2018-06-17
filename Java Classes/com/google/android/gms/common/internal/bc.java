package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.util.Log;
import com.google.android.gms.common.api.internal.az;

public abstract class bc
  implements DialogInterface.OnClickListener
{
  public static bc a(Activity paramActivity, Intent paramIntent)
  {
    return new bd(paramIntent, paramActivity);
  }
  
  public static bc a(az paramaz, Intent paramIntent)
  {
    return new be(paramIntent, paramaz);
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    try
    {
      ow();
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      Log.e("DialogRedirect", "Failed to start resolution intent", localActivityNotFoundException);
      return;
    }
    finally
    {
      paramDialogInterface.dismiss();
    }
  }
  
  protected abstract void ow();
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/internal/bc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */