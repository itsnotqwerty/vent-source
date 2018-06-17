package com.google.android.gms.common.internal;

import android.os.Bundle;
import com.google.android.gms.common.a;

abstract class am
  extends aq<Boolean>
{
  private Bundle aIq;
  private int statusCode;
  
  protected am(al paramal, int paramInt, Bundle paramBundle)
  {
    super(paramal, Boolean.valueOf(true));
    this.statusCode = paramInt;
    this.aIq = paramBundle;
  }
  
  protected abstract void k(a parama);
  
  protected abstract boolean ot();
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/internal/am.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */