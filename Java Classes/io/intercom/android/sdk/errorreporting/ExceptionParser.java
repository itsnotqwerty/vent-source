package io.intercom.android.sdk.errorreporting;

import io.intercom.android.sdk.commons.utilities.TimeProvider;
import java.util.ArrayList;
import java.util.List;

class ExceptionParser
{
  private static final String[] ALLOWED_PACKAGES = { "io.intercom.android.sdk.", "java.", "android.", "com.android.", "com.google." };
  private static final String INTERCOM_SDK_PACKAGE = "io.intercom.android.sdk.";
  private static final String REDACTION_LINE = "[Non Intercom/OS method]";
  
  private List<ExceptionReport> createExceptionReports(Throwable paramThrowable)
  {
    ArrayList localArrayList = new ArrayList();
    while (paramThrowable != null)
    {
      localArrayList.add(new ExceptionReport(paramThrowable.getClass().getName(), paramThrowable.getLocalizedMessage(), getStacktraceString(paramThrowable.getStackTrace())));
      paramThrowable = paramThrowable.getCause();
    }
    return localArrayList;
  }
  
  private String getStacktraceString(StackTraceElement[] paramArrayOfStackTraceElement)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    if (i < paramArrayOfStackTraceElement.length)
    {
      Object localObject = paramArrayOfStackTraceElement[i];
      if (isFromAllowedPackage((StackTraceElement)localObject)) {}
      for (localObject = ((StackTraceElement)localObject).toString();; localObject = "[Non Intercom/OS method]")
      {
        localStringBuilder.append((String)localObject);
        if (i < paramArrayOfStackTraceElement.length - 1) {
          localStringBuilder.append("\n");
        }
        i += 1;
        break;
      }
    }
    return localStringBuilder.toString();
  }
  
  private boolean isFromAllowedPackage(StackTraceElement paramStackTraceElement)
  {
    boolean bool2 = false;
    paramStackTraceElement = paramStackTraceElement.getClassName();
    String[] arrayOfString = ALLOWED_PACKAGES;
    int j = arrayOfString.length;
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < j)
      {
        if (paramStackTraceElement.startsWith(arrayOfString[i])) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
  
  boolean containsIntercomMethod(Throwable paramThrowable)
  {
    boolean bool2 = false;
    for (;;)
    {
      boolean bool1 = bool2;
      StackTraceElement[] arrayOfStackTraceElement;
      int j;
      int i;
      if (paramThrowable != null)
      {
        arrayOfStackTraceElement = paramThrowable.getStackTrace();
        j = arrayOfStackTraceElement.length;
        i = 0;
      }
      while (i < j)
      {
        if (arrayOfStackTraceElement[i].getClassName().startsWith("io.intercom.android.sdk."))
        {
          bool1 = true;
          return bool1;
        }
        i += 1;
      }
      paramThrowable = paramThrowable.getCause();
    }
  }
  
  ErrorReport createReportFrom(Throwable paramThrowable)
  {
    return new ErrorReport(createExceptionReports(paramThrowable), TimeProvider.SYSTEM.currentTimeMillis());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/errorreporting/ExceptionParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */