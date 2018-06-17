package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Keep;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class LifecycleCallback
{
  protected final az aDx;
  
  protected LifecycleCallback(az paramaz)
  {
    this.aDx = paramaz;
  }
  
  @Keep
  private static az getChimeraLifecycleFragmentImpl(ay paramay)
  {
    throw new IllegalStateException("Method not available in SDK.");
  }
  
  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString) {}
  
  public final Activity getActivity()
  {
    return this.aDx.nP();
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {}
  
  public void onCreate(Bundle paramBundle) {}
  
  public void onResume() {}
  
  public void onSaveInstanceState(Bundle paramBundle) {}
  
  public void onStart() {}
  
  public void onStop() {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/LifecycleCallback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */