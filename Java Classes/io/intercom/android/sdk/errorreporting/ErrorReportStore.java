package io.intercom.android.sdk.errorreporting;

import android.content.Context;
import android.os.AsyncTask;
import io.intercom.a.b.a.e;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.api.Api;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.persistence.JsonStorage;
import io.intercom.android.sdk.persistence.JsonStorage.LoadHandler;
import io.intercom.android.sdk.twig.Twig;
import java.io.File;
import java.util.concurrent.RejectedExecutionException;

class ErrorReportStore
{
  private static final String REPORT_FILE_PATH = "intercom-error.json";
  private static final Twig TWIG = ;
  private final File reportFile;
  private final JsonStorage storage;
  
  ErrorReportStore(File paramFile, JsonStorage paramJsonStorage)
  {
    this.reportFile = paramFile;
    this.storage = paramJsonStorage;
  }
  
  public static ErrorReportStore create(Context paramContext, e parame)
  {
    return new ErrorReportStore(new File(paramContext.getCacheDir(), "intercom-error.json"), new JsonStorage(parame));
  }
  
  private void readAndSendReport(final Api paramApi)
  {
    this.storage.loadThenDelete(this.reportFile, ErrorReport.class, new JsonStorage.LoadHandler()
    {
      public void onLoad(ErrorReport paramAnonymousErrorReport)
      {
        paramApi.sendErrorReport(paramAnonymousErrorReport);
      }
    });
  }
  
  void saveToDisk(ErrorReport paramErrorReport)
  {
    this.storage.saveToFileAsJson(paramErrorReport, this.reportFile);
  }
  
  void sendSavedReport(final Provider<Api> paramProvider)
  {
    try
    {
      AsyncTask.execute(new Runnable()
      {
        public void run()
        {
          if (ErrorReportStore.this.reportFile.exists()) {
            ErrorReportStore.this.readAndSendReport((Api)paramProvider.get());
          }
        }
      });
      return;
    }
    catch (RejectedExecutionException paramProvider)
    {
      TWIG.internal("Couldn't queue up sending of event: " + paramProvider);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/errorreporting/ErrorReportStore.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */