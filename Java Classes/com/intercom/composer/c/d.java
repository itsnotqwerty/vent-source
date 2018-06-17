package com.intercom.composer.c;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;

public final class d
{
  private final Context context;
  
  public d(Context paramContext)
  {
    this.context = paramContext;
  }
  
  public final int getOrientation()
  {
    return this.context.getResources().getConfiguration().orientation;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/intercom/composer/c/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */