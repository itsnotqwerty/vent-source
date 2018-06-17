package io.intercom.android.sdk.errorreporting;

import io.intercom.a.b.a.a.c;
import java.util.List;

public class ErrorReport
{
  @c("exception_reports")
  private final List<ExceptionReport> exceptionReports;
  private final long timestamp;
  
  ErrorReport(List<ExceptionReport> paramList, long paramLong)
  {
    this.exceptionReports = paramList;
    this.timestamp = paramLong;
  }
  
  public List<ExceptionReport> getExceptionReports()
  {
    return this.exceptionReports;
  }
  
  public long getTimestamp()
  {
    return this.timestamp;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/errorreporting/ErrorReport.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */