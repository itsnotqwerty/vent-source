package io.intercom.android.sdk.errorreporting;

import io.intercom.a.b.a.a.c;

public class ExceptionReport
{
  @c("class_name")
  private final String className;
  private final String message;
  private final String stacktrace;
  
  ExceptionReport(String paramString1, String paramString2, String paramString3)
  {
    this.className = paramString1;
    this.message = paramString2;
    this.stacktrace = paramString3;
  }
  
  public String getClassName()
  {
    return this.className;
  }
  
  public String getMessage()
  {
    return this.message;
  }
  
  public String getStacktrace()
  {
    return this.stacktrace;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/errorreporting/ExceptionReport.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */