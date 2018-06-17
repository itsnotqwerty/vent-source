package com.amazonaws.metrics;

import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSCredentialsProvider;
import com.amazonaws.auth.PropertiesCredentials;
import com.amazonaws.regions.Regions;
import com.amazonaws.util.AWSRequestMetrics.Field;
import com.amazonaws.util.AWSServiceMetrics;
import java.io.File;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public enum AwsSdkMetrics
{
  private static volatile boolean aoA;
  private static volatile Regions aoB;
  private static volatile Integer aoC;
  private static volatile Long aoD;
  private static volatile String aoE;
  private static volatile String aoF;
  private static volatile String aoG;
  private static volatile String aoH;
  private static volatile boolean aoI;
  private static final MetricRegistry aoJ;
  private static volatile MetricCollector aoK;
  private static boolean aoL;
  private static final String aow = "com.amazonaws.management:type=" + AwsSdkMetrics.class.getSimpleName();
  private static final boolean aox;
  private static volatile AWSCredentialsProvider aoy;
  private static volatile boolean aoz;
  
  static
  {
    aoE = "AWSSDK/Java";
    Object localObject1 = System.getProperty("com.amazonaws.sdk.enableDefaultMetrics");
    boolean bool1;
    int i;
    boolean bool3;
    boolean bool2;
    label79:
    Object localObject2;
    boolean bool6;
    boolean bool5;
    boolean bool4;
    if (localObject1 != null)
    {
      bool1 = true;
      aox = bool1;
      if (!bool1) {
        break label623;
      }
      localObject1 = ((String)localObject1).split(",");
      int j = localObject1.length;
      i = 0;
      bool3 = false;
      bool2 = false;
      bool1 = false;
      if (i >= j) {
        break label610;
      }
      localObject2 = localObject1[i].trim();
      if ((bool1) || (!"excludeMachineMetrics".equals(localObject2))) {
        break label139;
      }
      bool6 = true;
      bool5 = bool2;
      bool4 = bool3;
    }
    for (;;)
    {
      i += 1;
      bool3 = bool4;
      bool2 = bool5;
      bool1 = bool6;
      break label79;
      bool1 = false;
      break;
      label139:
      if ((!bool2) && ("includePerHostMetrics".equals(localObject2)))
      {
        bool5 = true;
        bool4 = bool3;
        bool6 = bool1;
      }
      else if ((!bool3) && ("useSingleMetricNamespace".equals(localObject2)))
      {
        bool4 = true;
        bool5 = bool2;
        bool6 = bool1;
      }
      else
      {
        Object localObject5 = ((String)localObject2).split("=");
        bool4 = bool3;
        bool5 = bool2;
        bool6 = bool1;
        if (localObject5.length == 2)
        {
          String str = localObject5[0].trim();
          localObject5 = localObject5[1].trim();
          try
          {
            if ("credentialFile".equals(str))
            {
              localObject2 = new PropertiesCredentials(new File((String)localObject5));
              try
              {
                aoy = new AWSCredentialsProvider()
                {
                  public final AWSCredentials jy()
                  {
                    return this.aoN;
                  }
                };
                aoF = (String)localObject5;
                bool4 = bool3;
                bool5 = bool2;
                bool6 = bool1;
                continue;
              }
              finally {}
            }
          }
          catch (Exception localException)
          {
            LogFactory.getLog(AwsSdkMetrics.class).debug("Ignoring failure", localException);
            bool4 = bool3;
            bool5 = bool2;
            bool6 = bool1;
          }
          if ("cloudwatchRegion".equals(str))
          {
            aoB = Regions.U((String)localObject5);
            bool4 = bool3;
            bool5 = bool2;
            bool6 = bool1;
          }
          else
          {
            Object localObject4;
            if ("metricQueueSize".equals(str))
            {
              localObject4 = new Integer((String)localObject5);
              if (((Integer)localObject4).intValue() <= 0) {
                throw new IllegalArgumentException("metricQueueSize must be at least 1");
              }
              aoC = (Integer)localObject4;
              bool4 = bool3;
              bool5 = bool2;
              bool6 = bool1;
            }
            else if ("getQueuePollTimeoutMilli".equals(str))
            {
              localObject4 = new Long((String)localObject5);
              if (((Long)localObject4).intValue() < 1000) {
                throw new IllegalArgumentException("getQueuePollTimeoutMilli must be at least 1000");
              }
              aoD = (Long)localObject4;
              bool4 = bool3;
              bool5 = bool2;
              bool6 = bool1;
            }
            else if ("metricNameSpace".equals(str))
            {
              aoE = (String)localObject5;
              bool4 = bool3;
              bool5 = bool2;
              bool6 = bool1;
            }
            else if ("jvmMetricName".equals(str))
            {
              aoG = (String)localObject5;
              bool4 = bool3;
              bool5 = bool2;
              bool6 = bool1;
            }
            else if ("hostMetricName".equals(str))
            {
              aoH = (String)localObject5;
              bool4 = bool3;
              bool5 = bool2;
              bool6 = bool1;
            }
            else
            {
              LogFactory.getLog(AwsSdkMetrics.class).debug("Ignoring unrecognized parameter: " + (String)localObject4);
              bool4 = bool3;
              bool5 = bool2;
              bool6 = bool1;
            }
          }
        }
      }
    }
    label610:
    aoz = bool1;
    aoA = bool2;
    aoI = bool3;
    label623:
    aoJ = new MetricRegistry();
  }
  
  private static void a(MetricCollector paramMetricCollector)
  {
    try
    {
      MetricCollector localMetricCollector = aoK;
      aoK = paramMetricCollector;
      if (localMetricCollector != null) {
        localMetricCollector.jM();
      }
      return;
    }
    finally {}
  }
  
  public static <T extends MetricType> boolean addAll(Collection<T> paramCollection)
  {
    if ((paramCollection == null) || (paramCollection.size() == 0)) {
      return false;
    }
    return aoJ.c(paramCollection);
  }
  
  public static boolean isMetricsEnabled()
  {
    MetricCollector localMetricCollector = aoK;
    if (localMetricCollector != null) {
      localMetricCollector.isEnabled();
    }
    return false;
  }
  
  public static <T extends RequestMetricCollector> T jJ()
  {
    if ((aoK == null) && (aox)) {
      jK();
    }
    if (aoK == null) {
      return RequestMetricCollector.aoR;
    }
    return aoK.jJ();
  }
  
  private static boolean jK()
  {
    try
    {
      if (aoK != null) {
        aoK.isEnabled();
      }
      if (aoL) {
        throw new IllegalStateException("Reentrancy is not allowed");
      }
    }
    finally {}
    aoL = true;
    for (;;)
    {
      try
      {
        MetricCollector localMetricCollector = ((MetricCollector.Factory)Class.forName("com.amazonaws.metrics.internal.cloudwatch.DefaultMetricCollectorFactory").newInstance()).jN();
        if (localMetricCollector != null)
        {
          a(localMetricCollector);
          aoL = false;
          bool = true;
          return bool;
        }
      }
      catch (Exception localException)
      {
        boolean bool;
        LogFactory.getLog(AwsSdkMetrics.class).warn("Failed to enable the default metrics", localException);
        aoL = false;
        continue;
      }
      finally
      {
        aoL = false;
      }
      bool = false;
    }
  }
  
  private static class MetricRegistry
  {
    private final Set<MetricType> aoO = new HashSet();
    private volatile Set<MetricType> aoP;
    
    MetricRegistry()
    {
      this.aoO.add(AWSRequestMetrics.Field.auf);
      this.aoO.add(AWSRequestMetrics.Field.auh);
      this.aoO.add(AWSRequestMetrics.Field.aup);
      this.aoO.add(AWSRequestMetrics.Field.aui);
      this.aoO.add(AWSRequestMetrics.Field.aun);
      this.aoO.add(AWSRequestMetrics.Field.auo);
      this.aoO.add(AWSRequestMetrics.Field.auq);
      this.aoO.add(AWSRequestMetrics.Field.aur);
      this.aoO.add(AWSRequestMetrics.Field.aus);
      this.aoO.add(AWSRequestMetrics.Field.aut);
      this.aoO.add(AWSRequestMetrics.Field.auu);
      this.aoO.add(AWSServiceMetrics.auF);
      jL();
    }
    
    private void jL()
    {
      this.aoP = Collections.unmodifiableSet(new HashSet(this.aoO));
    }
    
    public final <T extends MetricType> boolean c(Collection<T> paramCollection)
    {
      synchronized (this.aoO)
      {
        boolean bool = this.aoO.addAll(paramCollection);
        if (bool) {
          jL();
        }
        return bool;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/metrics/AwsSdkMetrics.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */