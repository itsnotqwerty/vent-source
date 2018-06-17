package io.intercom.android.sdk.errorreporting;

import java.io.PrintStream;

class IntercomExceptionHandler
  implements Thread.UncaughtExceptionHandler
{
  private final Thread.UncaughtExceptionHandler originalHandler;
  private final ErrorReporter reporter;
  
  IntercomExceptionHandler(Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler, ErrorReporter paramErrorReporter)
  {
    this.originalHandler = paramUncaughtExceptionHandler;
    this.reporter = paramErrorReporter;
  }
  
  static void disable()
  {
    Thread.UncaughtExceptionHandler localUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
    if ((localUncaughtExceptionHandler instanceof IntercomExceptionHandler)) {
      Thread.setDefaultUncaughtExceptionHandler(((IntercomExceptionHandler)localUncaughtExceptionHandler).originalHandler);
    }
  }
  
  static void enable(ErrorReporter paramErrorReporter)
  {
    Thread.UncaughtExceptionHandler localUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
    if ((localUncaughtExceptionHandler instanceof IntercomExceptionHandler)) {
      return;
    }
    Thread.setDefaultUncaughtExceptionHandler(new IntercomExceptionHandler(localUncaughtExceptionHandler, paramErrorReporter));
  }
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    this.reporter.saveReport(paramThrowable);
    if (this.originalHandler != null)
    {
      this.originalHandler.uncaughtException(paramThread, paramThrowable);
      return;
    }
    System.err.printf("Exception in thread \"%s\" ", new Object[] { paramThread.getName() });
    paramThrowable.printStackTrace(System.err);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/errorreporting/IntercomExceptionHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */