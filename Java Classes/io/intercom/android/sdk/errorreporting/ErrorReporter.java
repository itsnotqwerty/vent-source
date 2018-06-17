package io.intercom.android.sdk.errorreporting;

import android.content.Context;
import io.intercom.a.b.a.e;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.api.Api;

public class ErrorReporter
{
  private final Provider<Api> apiProvider;
  private final ExceptionParser exceptionParser;
  private final ErrorReportStore reportStore;
  
  ErrorReporter(ErrorReportStore paramErrorReportStore, Provider<Api> paramProvider, ExceptionParser paramExceptionParser)
  {
    this.reportStore = paramErrorReportStore;
    this.apiProvider = paramProvider;
    this.exceptionParser = paramExceptionParser;
  }
  
  public static ErrorReporter create(Context paramContext, e parame, Provider<Api> paramProvider)
  {
    return new ErrorReporter(ErrorReportStore.create(paramContext.getApplicationContext(), parame), paramProvider, new ExceptionParser());
  }
  
  public void disableExceptionHandler() {}
  
  public void enableExceptionHandler()
  {
    IntercomExceptionHandler.enable(this);
  }
  
  void saveReport(Throwable paramThrowable)
  {
    if (this.exceptionParser.containsIntercomMethod(paramThrowable)) {
      this.reportStore.saveToDisk(this.exceptionParser.createReportFrom(paramThrowable));
    }
  }
  
  public void sendSavedReport()
  {
    this.reportStore.sendSavedReport(this.apiProvider);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/errorreporting/ErrorReporter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */