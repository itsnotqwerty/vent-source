package io.intercom.a.a.a.c.b.c;

import android.os.StrictMode;
import android.os.StrictMode.ThreadPolicy;
import android.util.Log;
import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class b
{
  static int IN()
  {
    StrictMode.ThreadPolicy localThreadPolicy = StrictMode.allowThreadDiskReads();
    try
    {
      arrayOfFile = new File("/sys/devices/system/cpu/").listFiles(new FilenameFilter()
      {
        public final boolean accept(File paramAnonymousFile, String paramAnonymousString)
        {
          return this.cMs.matcher(paramAnonymousString).matches();
        }
      });
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        File[] arrayOfFile;
        if (Log.isLoggable("GlideRuntimeCompat", 6)) {
          Log.e("GlideRuntimeCompat", "Failed to calculate accurate cpu count", localThrowable);
        }
        StrictMode.setThreadPolicy(localThreadPolicy);
        Object localObject1 = null;
      }
    }
    finally
    {
      StrictMode.setThreadPolicy(localThreadPolicy);
    }
    if (arrayOfFile != null) {}
    for (int i = arrayOfFile.length;; i = 0) {
      return Math.max(1, i);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/b/c/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */