package com.google.android.gms.internal;

public final class cm
{
  private static cn<Boolean> aNN = cn.a("analytics.service_enabled", false, false);
  public static cn<Boolean> aNO = cn.a("analytics.service_client_enabled", true, true);
  public static cn<String> aNP = cn.a("analytics.log_tag", "GAv4", "GAv4-SVC");
  private static cn<Long> aNQ = cn.a("analytics.max_tokens", 60L, 60L);
  private static cn<Float> aNR = new cn(dk.a("analytics.tokens_per_sec", Float.valueOf(0.5F)), Float.valueOf(0.5F));
  public static cn<Integer> aNS = cn.a("analytics.max_stored_hits", 2000, 20000);
  private static cn<Integer> aNT = cn.a("analytics.max_stored_hits_per_app", 2000, 2000);
  public static cn<Integer> aNU = cn.a("analytics.max_stored_properties_per_app", 100, 100);
  public static cn<Long> aNV = cn.a("analytics.local_dispatch_millis", 1800000L, 120000L);
  public static cn<Long> aNW = cn.a("analytics.initial_local_dispatch_millis", 5000L, 5000L);
  private static cn<Long> aNX = cn.a("analytics.min_local_dispatch_millis", 120000L, 120000L);
  private static cn<Long> aNY = cn.a("analytics.max_local_dispatch_millis", 7200000L, 7200000L);
  public static cn<Long> aNZ = cn.a("analytics.dispatch_alarm_millis", 7200000L, 7200000L);
  private static cn<Long> aOA = cn.a("analytics.service_client.unexpected_reconnect_millis", 60000L, 60000L);
  public static cn<Long> aOB = cn.a("analytics.service_client.reconnect_throttle_millis", 1800000L, 1800000L);
  public static cn<Long> aOC = cn.a("analytics.monitoring.sample_period_millis", 86400000L, 86400000L);
  public static cn<Long> aOD = cn.a("analytics.initialization_warning_threshold", 5000L, 5000L);
  public static cn<Long> aOa = cn.a("analytics.max_dispatch_alarm_millis", 32400000L, 32400000L);
  public static cn<Integer> aOb = cn.a("analytics.max_hits_per_dispatch", 20, 20);
  public static cn<Integer> aOc = cn.a("analytics.max_hits_per_batch", 20, 20);
  public static cn<String> aOd = cn.a("analytics.insecure_host", "http://www.google-analytics.com", "http://www.google-analytics.com");
  public static cn<String> aOe = cn.a("analytics.secure_host", "https://ssl.google-analytics.com", "https://ssl.google-analytics.com");
  public static cn<String> aOf = cn.a("analytics.simple_endpoint", "/collect", "/collect");
  public static cn<String> aOg = cn.a("analytics.batching_endpoint", "/batch", "/batch");
  public static cn<Integer> aOh = cn.a("analytics.max_get_length", 2036, 2036);
  public static cn<String> aOi = cn.a("analytics.batching_strategy.k", bu.aNr.name(), bu.aNr.name());
  public static cn<String> aOj;
  private static cn<Integer> aOk;
  public static cn<Integer> aOl;
  public static cn<Integer> aOm;
  public static cn<Integer> aOn;
  public static cn<String> aOo;
  public static cn<Integer> aOp;
  private static cn<Long> aOq;
  public static cn<Integer> aOr;
  public static cn<Integer> aOs;
  public static cn<Long> aOt;
  private static cn<String> aOu;
  private static cn<Integer> aOv;
  public static cn<Boolean> aOw;
  public static cn<Long> aOx;
  public static cn<Long> aOy;
  private static cn<Long> aOz;
  
  static
  {
    String str = ca.aNy.name();
    aOj = cn.a("analytics.compression_strategy.k", str, str);
    aOk = cn.a("analytics.max_hits_per_request.k", 20, 20);
    aOl = cn.a("analytics.max_hit_length.k", 8192, 8192);
    aOm = cn.a("analytics.max_post_length.k", 8192, 8192);
    aOn = cn.a("analytics.max_batch_post_length", 8192, 8192);
    aOo = cn.a("analytics.fallback_responses.k", "404,502", "404,502");
    aOp = cn.a("analytics.batch_retry_interval.seconds.k", 3600, 3600);
    aOq = cn.a("analytics.service_monitor_interval", 86400000L, 86400000L);
    aOr = cn.a("analytics.http_connection.connect_timeout_millis", 60000, 60000);
    aOs = cn.a("analytics.http_connection.read_timeout_millis", 61000, 61000);
    aOt = cn.a("analytics.campaigns.time_limit", 86400000L, 86400000L);
    aOu = cn.a("analytics.first_party_experiment_id", "", "");
    aOv = cn.a("analytics.first_party_experiment_variant", 0, 0);
    aOw = cn.a("analytics.test.disable_receiver", false, false);
    aOx = cn.a("analytics.service_client.idle_disconnect_millis", 10000L, 10000L);
    aOy = cn.a("analytics.service_client.connect_timeout_millis", 5000L, 5000L);
    aOz = cn.a("analytics.service_client.second_connect_delay_millis", 5000L, 5000L);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/cm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */