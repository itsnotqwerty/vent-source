package io.intercom.android.sdk.twig;

import android.util.Log;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public class Twig
{
  public static final int DISABLED = 8;
  private static final int MAX_LOG_LENGTH = 4000;
  private final boolean internalLoggingEnabled;
  private int logLevel;
  private final String tag;
  
  public Twig(int paramInt, String paramString, boolean paramBoolean)
  {
    this.logLevel = paramInt;
    if (paramString != null) {}
    for (;;)
    {
      this.tag = paramString;
      this.internalLoggingEnabled = paramBoolean;
      return;
      paramString = "Twig";
    }
  }
  
  private String getStackTraceString(Throwable paramThrowable)
  {
    StringWriter localStringWriter = new StringWriter(256);
    PrintWriter localPrintWriter = new PrintWriter(localStringWriter, false);
    paramThrowable.printStackTrace(localPrintWriter);
    localPrintWriter.flush();
    return localStringWriter.toString();
  }
  
  private void log(int paramInt, String paramString1, String paramString2)
  {
    if (paramString2.length() < 4000)
    {
      printLog(paramInt, paramString1, paramString2);
      return;
    }
    int i = 0;
    int k = paramString2.length();
    label27:
    int j;
    if (i < k)
    {
      j = paramString2.indexOf('\n', i);
      if (j == -1) {
        break label93;
      }
    }
    for (;;)
    {
      int m = Math.min(j, i + 4000);
      printLog(paramInt, paramString1, paramString2.substring(i, m));
      if (m >= j)
      {
        i = m + 1;
        break label27;
        break;
        label93:
        j = k;
        continue;
      }
      i = m;
    }
  }
  
  private void prepareLog(int paramInt, Throwable paramThrowable, String paramString, Object... paramVarArgs)
  {
    if (paramInt < this.logLevel) {
      return;
    }
    String str2 = getTag();
    if ((paramString != null) && (paramString.length() == 0)) {}
    for (String str1 = null;; str1 = paramString)
    {
      if (str1 == null)
      {
        if (paramThrowable == null) {
          break;
        }
        paramVarArgs = getStackTraceString(paramThrowable);
      }
      for (;;)
      {
        log(paramInt, str2, paramVarArgs);
        return;
        paramString = str1;
        if (paramVarArgs.length > 0) {
          paramString = String.format(str1, paramVarArgs);
        }
        paramVarArgs = paramString;
        if (paramThrowable != null) {
          paramVarArgs = paramString + "\n" + getStackTraceString(paramThrowable);
        }
      }
    }
  }
  
  private void printLog(int paramInt, String paramString1, String paramString2)
  {
    if (paramInt == 7)
    {
      Log.wtf(paramString1, paramString2);
      return;
    }
    Log.println(paramInt, paramString1, paramString2);
  }
  
  public void d(String paramString, Object... paramVarArgs)
  {
    prepareLog(3, null, paramString, paramVarArgs);
  }
  
  public void d(Throwable paramThrowable)
  {
    prepareLog(3, paramThrowable, null, new Object[0]);
  }
  
  public void d(Throwable paramThrowable, String paramString, Object... paramVarArgs)
  {
    prepareLog(3, paramThrowable, paramString, paramVarArgs);
  }
  
  public void e(String paramString, Object... paramVarArgs)
  {
    prepareLog(6, null, paramString, paramVarArgs);
  }
  
  public void e(Throwable paramThrowable)
  {
    prepareLog(6, paramThrowable, null, new Object[0]);
  }
  
  public void e(Throwable paramThrowable, String paramString, Object... paramVarArgs)
  {
    prepareLog(6, paramThrowable, paramString, paramVarArgs);
  }
  
  int getLogLevel()
  {
    return this.logLevel;
  }
  
  public String getTag()
  {
    return this.tag;
  }
  
  public void i(String paramString, Object... paramVarArgs)
  {
    prepareLog(4, null, paramString, paramVarArgs);
  }
  
  public void i(Throwable paramThrowable)
  {
    prepareLog(4, paramThrowable, null, new Object[0]);
  }
  
  public void i(Throwable paramThrowable, String paramString, Object... paramVarArgs)
  {
    prepareLog(4, paramThrowable, paramString, paramVarArgs);
  }
  
  public void internal(String paramString)
  {
    internal(this.tag, paramString);
  }
  
  public void internal(String paramString1, String paramString2)
  {
    if (this.internalLoggingEnabled) {
      Log.d(paramString1, "INTERNAL: " + paramString2);
    }
  }
  
  void log(int paramInt, String paramString, Object... paramVarArgs)
  {
    prepareLog(paramInt, null, paramString, paramVarArgs);
  }
  
  public void setLogLevel(int paramInt)
  {
    this.logLevel = paramInt;
  }
  
  public void v(String paramString, Object... paramVarArgs)
  {
    prepareLog(2, null, paramString, paramVarArgs);
  }
  
  public void v(Throwable paramThrowable)
  {
    prepareLog(2, paramThrowable, null, new Object[0]);
  }
  
  public void v(Throwable paramThrowable, String paramString, Object... paramVarArgs)
  {
    prepareLog(2, paramThrowable, paramString, paramVarArgs);
  }
  
  public void w(String paramString, Object... paramVarArgs)
  {
    prepareLog(5, null, paramString, paramVarArgs);
  }
  
  public void w(Throwable paramThrowable)
  {
    prepareLog(5, paramThrowable, null, new Object[0]);
  }
  
  public void w(Throwable paramThrowable, String paramString, Object... paramVarArgs)
  {
    prepareLog(5, paramThrowable, paramString, paramVarArgs);
  }
  
  public void wtf(String paramString, Object... paramVarArgs)
  {
    prepareLog(7, null, paramString, paramVarArgs);
  }
  
  public void wtf(Throwable paramThrowable)
  {
    prepareLog(7, paramThrowable, null, new Object[0]);
  }
  
  public void wtf(Throwable paramThrowable, String paramString, Object... paramVarArgs)
  {
    prepareLog(7, paramThrowable, paramString, paramVarArgs);
  }
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface LogLevel {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/twig/Twig.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */