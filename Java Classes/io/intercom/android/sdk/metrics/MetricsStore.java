package io.intercom.android.sdk.metrics;

import android.content.Context;
import io.intercom.a.b.a.e;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.api.Api;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.metrics.ops.OpsMetricObject;
import io.intercom.android.sdk.persistence.JsonStorage;
import io.intercom.android.sdk.persistence.JsonStorage.LoadFailureHandler;
import io.intercom.android.sdk.persistence.JsonStorage.LoadHandler;
import io.intercom.android.sdk.twig.Twig;
import io.intercom.android.sdk.utilities.IoUtils;
import io.intercom.retrofit2.Call;
import io.intercom.retrofit2.Callback;
import io.intercom.retrofit2.Response;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public class MetricsStore
{
  private static final String METRICS_DIR = "intercomMetrics";
  private static final String OPS_METRICS_DIR = "intercomOpsMetrics";
  private static final int STORED_METRIC_LIMIT = 200;
  private static final int STORED_OP_METRIC_LIMIT = 100;
  private final Provider<Api> apiProvider;
  private final Provider<AppConfig> appConfigProvider;
  private final JsonStorage.LoadFailureHandler deleteOnFailureHandler = new JsonStorage.LoadFailureHandler()
  {
    public void onLoadFailed(File paramAnonymousFile, Exception paramAnonymousException)
    {
      IoUtils.safelyDelete(paramAnonymousFile);
      MetricsStore.this.twig.v(paramAnonymousException, "Couldn't load file " + paramAnonymousFile.getAbsolutePath(), new Object[0]);
    }
  };
  private final Executor executor;
  private final String installerPackageName;
  private final boolean isDebugBuild;
  private final File metricsDir;
  private final File opsMetricsDir;
  private final JsonStorage storage;
  private final Twig twig;
  
  public MetricsStore(Context paramContext, Provider<Api> paramProvider, Provider<AppConfig> paramProvider1)
  {
    this(paramProvider, paramProvider1, Executors.newSingleThreadExecutor(), new JsonStorage(new e()), new File(paramContext.getCacheDir(), "intercomMetrics"), new File(paramContext.getCacheDir(), "intercomOpsMetrics"), AppTypeDetector.isDebugBuild(paramContext), AppTypeDetector.getInstallerPackageName(paramContext), LumberMill.getLogger());
  }
  
  MetricsStore(Provider<Api> paramProvider, Provider<AppConfig> paramProvider1, Executor paramExecutor, JsonStorage paramJsonStorage, File paramFile1, File paramFile2, boolean paramBoolean, String paramString, Twig paramTwig)
  {
    this.apiProvider = paramProvider;
    this.appConfigProvider = paramProvider1;
    this.executor = paramExecutor;
    this.storage = paramJsonStorage;
    this.metricsDir = paramFile1;
    this.opsMetricsDir = paramFile2;
    this.isDebugBuild = paramBoolean;
    this.installerPackageName = paramString;
    this.twig = paramTwig;
  }
  
  private static <T> void copyNonNullItems(List<T> paramList1, List<T> paramList2)
  {
    paramList1 = paramList1.iterator();
    while (paramList1.hasNext())
    {
      Object localObject = paramList1.next();
      if (localObject != null) {
        paramList2.add(localObject);
      }
    }
  }
  
  private File getFile(MetricObject paramMetricObject)
  {
    return new File(this.metricsDir, paramMetricObject.getId() + ".json");
  }
  
  private File getFile(OpsMetricObject paramOpsMetricObject)
  {
    return new File(this.opsMetricsDir, paramOpsMetricObject.getId() + ".json");
  }
  
  private boolean hasReachedMetricStorageLimit()
  {
    return this.storage.getDirectoryFileCount(this.metricsDir) > 200;
  }
  
  private boolean hasReachedOpsMetricStorageLimit()
  {
    return this.storage.getDirectoryFileCount(this.opsMetricsDir) > 100;
  }
  
  private boolean isDisabled()
  {
    return !((AppConfig)this.appConfigProvider.get()).isMetricsEnabled();
  }
  
  private void uploadMetrics(final List<MetricObject> paramList, final List<OpsMetricObject> paramList1)
  {
    ((Api)this.apiProvider.get()).sendMetrics(paramList, paramList1, new Callback()
    {
      public void onFailure(Call<Void> paramAnonymousCall, Throwable paramAnonymousThrowable) {}
      
      public void onResponse(Call<Void> paramAnonymousCall, Response<Void> paramAnonymousResponse)
      {
        if ((paramAnonymousResponse.isSuccessful()) || (paramAnonymousResponse.code() == 400)) {
          MetricsStore.this.executor.execute(new Runnable()
          {
            public void run()
            {
              MetricsStore.this.deleteFilesFor(MetricsStore.4.this.val$metrics, MetricsStore.4.this.val$opsMetrics);
            }
          });
        }
      }
    });
  }
  
  void deleteFilesFor(List<MetricObject> paramList, List<OpsMetricObject> paramList1)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      IoUtils.safelyDelete(getFile((MetricObject)paramList.next()));
    }
    paramList = paramList1.iterator();
    while (paramList.hasNext()) {
      IoUtils.safelyDelete(getFile((OpsMetricObject)paramList.next()));
    }
  }
  
  public void loadAndSendMetrics()
  {
    this.executor.execute(new Runnable()
    {
      public void run()
      {
        List localList1 = MetricsStore.this.loadMetrics();
        List localList2 = MetricsStore.this.loadOpsMetrics();
        if ((localList1.isEmpty()) && (localList2.isEmpty())) {
          return;
        }
        MetricsStore.this.uploadMetrics(localList1, localList2);
      }
    });
  }
  
  List<MetricObject> loadMetrics()
  {
    final ArrayList localArrayList = new ArrayList();
    this.storage.loadFilesInDirectory(this.metricsDir, MetricObject.class, new JsonStorage.LoadHandler()
    {
      public void onLoad(List<MetricObject> paramAnonymousList)
      {
        MetricsStore.copyNonNullItems(paramAnonymousList, localArrayList);
      }
    }, this.deleteOnFailureHandler);
    return localArrayList;
  }
  
  List<OpsMetricObject> loadOpsMetrics()
  {
    final ArrayList localArrayList = new ArrayList();
    this.storage.loadFilesInDirectory(this.opsMetricsDir, OpsMetricObject.class, new JsonStorage.LoadHandler()
    {
      public void onLoad(List<OpsMetricObject> paramAnonymousList)
      {
        MetricsStore.copyNonNullItems(paramAnonymousList, localArrayList);
      }
    }, this.deleteOnFailureHandler);
    return localArrayList;
  }
  
  public void track(final MetricObject paramMetricObject)
  {
    if (isDisabled()) {
      return;
    }
    paramMetricObject.addInstallerPackageName(this.installerPackageName).addIsDebugBuild(this.isDebugBuild);
    this.executor.execute(new Runnable()
    {
      public void run()
      {
        if (MetricsStore.this.hasReachedMetricStorageLimit()) {
          return;
        }
        MetricsStore.this.storage.saveToFileAsJson(paramMetricObject, MetricsStore.this.getFile(paramMetricObject));
      }
    });
  }
  
  public void track(final OpsMetricObject paramOpsMetricObject)
  {
    if (isDisabled()) {
      return;
    }
    this.executor.execute(new Runnable()
    {
      public void run()
      {
        if (MetricsStore.this.hasReachedOpsMetricStorageLimit()) {
          return;
        }
        MetricsStore.this.storage.saveToFileAsJson(paramOpsMetricObject, MetricsStore.this.getFile(paramOpsMetricObject));
      }
    });
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/metrics/MetricsStore.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */