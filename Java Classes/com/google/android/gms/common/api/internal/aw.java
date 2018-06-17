package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.a.c;
import com.google.android.gms.common.api.i;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public abstract interface aw
{
  public abstract <A extends a.c, T extends cg<? extends i, A>> T b(T paramT);
  
  public abstract void connect();
  
  public abstract void disconnect();
  
  public abstract void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString);
  
  public abstract boolean isConnected();
  
  public abstract void nk();
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/aw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */