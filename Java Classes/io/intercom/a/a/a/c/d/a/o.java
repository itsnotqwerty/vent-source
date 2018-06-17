package io.intercom.a.a.a.c.d.a;

import android.util.Log;
import java.io.File;

final class o
{
  private static final File cOb = new File("/proc/self/fd");
  private static volatile o cOe;
  private volatile int cOc;
  private volatile boolean cOd = true;
  
  static o Jd()
  {
    if (cOe == null) {}
    try
    {
      if (cOe == null) {
        cOe = new o();
      }
      return cOe;
    }
    finally {}
  }
  
  final boolean Je()
  {
    boolean bool = false;
    try
    {
      int i = this.cOc + 1;
      this.cOc = i;
      if (i >= 50)
      {
        this.cOc = 0;
        i = cOb.list().length;
        if (i < 700) {
          bool = true;
        }
        this.cOd = bool;
        if ((!this.cOd) && (Log.isLoggable("Downsampler", 5))) {
          Log.w("Downsampler", "Excluding HARDWARE bitmap config because we're over the file descriptor limit, file descriptors " + i + ", limit 700");
        }
      }
      bool = this.cOd;
      return bool;
    }
    finally {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/d/a/o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */