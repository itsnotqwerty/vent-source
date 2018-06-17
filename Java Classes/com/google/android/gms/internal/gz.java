package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.measurement.AppMeasurement.a;
import com.google.android.gms.measurement.AppMeasurement.d;
import com.google.android.gms.measurement.AppMeasurement.e;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;

public final class gz
  extends iy
{
  private static AtomicReference<String[]> aSV = new AtomicReference();
  private static AtomicReference<String[]> aSW = new AtomicReference();
  private static AtomicReference<String[]> aSX = new AtomicReference();
  
  gz(hz paramhz)
  {
    super(paramhz);
  }
  
  private static String a(String paramString, String[] paramArrayOfString1, String[] paramArrayOfString2, AtomicReference<String[]> paramAtomicReference)
  {
    int i = 0;
    ae.E(paramArrayOfString1);
    ae.E(paramArrayOfString2);
    ae.E(paramAtomicReference);
    if (paramArrayOfString1.length == paramArrayOfString2.length) {}
    for (boolean bool = true;; bool = false)
    {
      ae.au(bool);
      while (i < paramArrayOfString1.length)
      {
        if (le.H(paramString, paramArrayOfString1[i])) {
          try
          {
            Object localObject = (String[])paramAtomicReference.get();
            paramString = (String)localObject;
            if (localObject == null)
            {
              paramString = new String[paramArrayOfString2.length];
              paramAtomicReference.set(paramString);
            }
            if (paramString[i] == null)
            {
              localObject = new StringBuilder();
              ((StringBuilder)localObject).append(paramArrayOfString2[i]);
              ((StringBuilder)localObject).append("(");
              ((StringBuilder)localObject).append(paramArrayOfString1[i]);
              ((StringBuilder)localObject).append(")");
              paramString[i] = ((StringBuilder)localObject).toString();
            }
            paramString = paramString[i];
            return paramString;
          }
          finally {}
        }
        i += 1;
      }
      return paramString;
    }
  }
  
  private static void a(StringBuilder paramStringBuilder, int paramInt)
  {
    int i = 0;
    while (i < paramInt)
    {
      paramStringBuilder.append("  ");
      i += 1;
    }
  }
  
  private final void a(StringBuilder paramStringBuilder, int paramInt, lj paramlj)
  {
    if (paramlj == null) {
      return;
    }
    a(paramStringBuilder, paramInt);
    paramStringBuilder.append("filter {\n");
    a(paramStringBuilder, paramInt, "complement", paramlj.aXE);
    a(paramStringBuilder, paramInt, "param_name", ci(paramlj.aXF));
    int j = paramInt + 1;
    lm locallm = paramlj.aXC;
    if (locallm != null)
    {
      a(paramStringBuilder, j);
      paramStringBuilder.append("string_filter");
      paramStringBuilder.append(" {\n");
      Object localObject;
      if (locallm.aXO != null)
      {
        localObject = "UNKNOWN_MATCH_TYPE";
        switch (locallm.aXO.intValue())
        {
        }
      }
      for (;;)
      {
        a(paramStringBuilder, j, "match_type", localObject);
        a(paramStringBuilder, j, "expression", locallm.aXP);
        a(paramStringBuilder, j, "case_sensitive", locallm.aXQ);
        if (locallm.aXR.length <= 0) {
          break label305;
        }
        a(paramStringBuilder, j + 1);
        paramStringBuilder.append("expression_list {\n");
        localObject = locallm.aXR;
        int k = localObject.length;
        int i = 0;
        while (i < k)
        {
          locallm = localObject[i];
          a(paramStringBuilder, j + 2);
          paramStringBuilder.append(locallm);
          paramStringBuilder.append("\n");
          i += 1;
        }
        localObject = "REGEXP";
        continue;
        localObject = "BEGINS_WITH";
        continue;
        localObject = "ENDS_WITH";
        continue;
        localObject = "PARTIAL";
        continue;
        localObject = "EXACT";
        continue;
        localObject = "IN_LIST";
      }
      paramStringBuilder.append("}\n");
      label305:
      a(paramStringBuilder, j);
      paramStringBuilder.append("}\n");
    }
    a(paramStringBuilder, paramInt + 1, "number_filter", paramlj.aXD);
    a(paramStringBuilder, paramInt);
    paramStringBuilder.append("}\n");
  }
  
  private static void a(StringBuilder paramStringBuilder, int paramInt, String paramString, lk paramlk)
  {
    if (paramlk == null) {
      return;
    }
    a(paramStringBuilder, paramInt);
    paramStringBuilder.append(paramString);
    paramStringBuilder.append(" {\n");
    if (paramlk.aXG != null)
    {
      paramString = "UNKNOWN_COMPARISON_TYPE";
      switch (paramlk.aXG.intValue())
      {
      }
    }
    for (;;)
    {
      a(paramStringBuilder, paramInt, "comparison_type", paramString);
      a(paramStringBuilder, paramInt, "match_as_float", paramlk.aXH);
      a(paramStringBuilder, paramInt, "comparison_value", paramlk.aXI);
      a(paramStringBuilder, paramInt, "min_comparison_value", paramlk.aXJ);
      a(paramStringBuilder, paramInt, "max_comparison_value", paramlk.aXK);
      a(paramStringBuilder, paramInt);
      paramStringBuilder.append("}\n");
      return;
      paramString = "LESS_THAN";
      continue;
      paramString = "GREATER_THAN";
      continue;
      paramString = "EQUAL";
      continue;
      paramString = "BETWEEN";
    }
  }
  
  private static void a(StringBuilder paramStringBuilder, int paramInt, String paramString, Object paramObject)
  {
    if (paramObject == null) {
      return;
    }
    a(paramStringBuilder, paramInt + 1);
    paramStringBuilder.append(paramString);
    paramStringBuilder.append(": ");
    paramStringBuilder.append(paramObject);
    paramStringBuilder.append('\n');
  }
  
  private static void a(StringBuilder paramStringBuilder, String paramString, lv paramlv)
  {
    if (paramlv == null) {
      return;
    }
    a(paramStringBuilder, 3);
    paramStringBuilder.append(paramString);
    paramStringBuilder.append(" {\n");
    int k;
    int j;
    int i;
    long l;
    if (paramlv.aYQ != null)
    {
      a(paramStringBuilder, 4);
      paramStringBuilder.append("results: ");
      paramString = paramlv.aYQ;
      k = paramString.length;
      j = 0;
      i = 0;
      while (j < k)
      {
        l = paramString[j];
        if (i != 0) {
          paramStringBuilder.append(", ");
        }
        paramStringBuilder.append(Long.valueOf(l));
        j += 1;
        i += 1;
      }
      paramStringBuilder.append('\n');
    }
    if (paramlv.aYP != null)
    {
      a(paramStringBuilder, 4);
      paramStringBuilder.append("status: ");
      paramString = paramlv.aYP;
      k = paramString.length;
      j = 0;
      i = 0;
      while (j < k)
      {
        l = paramString[j];
        if (i != 0) {
          paramStringBuilder.append(", ");
        }
        paramStringBuilder.append(Long.valueOf(l));
        j += 1;
        i += 1;
      }
      paramStringBuilder.append('\n');
    }
    a(paramStringBuilder, 3);
    paramStringBuilder.append("}\n");
  }
  
  private static void a(StringBuilder paramStringBuilder, lq[] paramArrayOflq)
  {
    if (paramArrayOflq == null) {}
    for (;;)
    {
      return;
      int j = paramArrayOflq.length;
      int i = 0;
      while (i < j)
      {
        lq locallq = paramArrayOflq[i];
        if (locallq != null)
        {
          a(paramStringBuilder, 2);
          paramStringBuilder.append("audience_membership {\n");
          a(paramStringBuilder, 2, "audience_id", locallq.aXs);
          a(paramStringBuilder, 2, "new_audience", locallq.aYf);
          a(paramStringBuilder, "current_data", locallq.aYd);
          a(paramStringBuilder, "previous_data", locallq.aYe);
          a(paramStringBuilder, 2);
          paramStringBuilder.append("}\n");
        }
        i += 1;
      }
    }
  }
  
  private final void a(StringBuilder paramStringBuilder, lr[] paramArrayOflr)
  {
    if (paramArrayOflr == null) {}
    for (;;)
    {
      return;
      int k = paramArrayOflr.length;
      int i = 0;
      while (i < k)
      {
        Object localObject1 = paramArrayOflr[i];
        if (localObject1 != null)
        {
          a(paramStringBuilder, 2);
          paramStringBuilder.append("event {\n");
          a(paramStringBuilder, 2, "name", ch(((lr)localObject1).name));
          a(paramStringBuilder, 2, "timestamp_millis", ((lr)localObject1).aYi);
          a(paramStringBuilder, 2, "previous_timestamp_millis", ((lr)localObject1).aYj);
          a(paramStringBuilder, 2, "count", ((lr)localObject1).count);
          localObject1 = ((lr)localObject1).aYh;
          if (localObject1 != null)
          {
            int m = localObject1.length;
            int j = 0;
            while (j < m)
            {
              Object localObject2 = localObject1[j];
              if (localObject2 != null)
              {
                a(paramStringBuilder, 3);
                paramStringBuilder.append("param {\n");
                a(paramStringBuilder, 3, "name", ci(((ls)localObject2).name));
                a(paramStringBuilder, 3, "string_value", ((ls)localObject2).aTr);
                a(paramStringBuilder, 3, "int_value", ((ls)localObject2).aYl);
                a(paramStringBuilder, 3, "double_value", ((ls)localObject2).aXk);
                a(paramStringBuilder, 3);
                paramStringBuilder.append("}\n");
              }
              j += 1;
            }
          }
          a(paramStringBuilder, 2);
          paramStringBuilder.append("}\n");
        }
        i += 1;
      }
    }
  }
  
  private final void a(StringBuilder paramStringBuilder, lw[] paramArrayOflw)
  {
    if (paramArrayOflw == null) {}
    for (;;)
    {
      return;
      int j = paramArrayOflw.length;
      int i = 0;
      while (i < j)
      {
        lw locallw = paramArrayOflw[i];
        if (locallw != null)
        {
          a(paramStringBuilder, 2);
          paramStringBuilder.append("user_property {\n");
          a(paramStringBuilder, 2, "set_timestamp_millis", locallw.aYS);
          a(paramStringBuilder, 2, "name", cj(locallw.name));
          a(paramStringBuilder, 2, "string_value", locallw.aTr);
          a(paramStringBuilder, 2, "int_value", locallw.aYl);
          a(paramStringBuilder, 2, "double_value", locallw.aXk);
          a(paramStringBuilder, 2);
          paramStringBuilder.append("}\n");
        }
        i += 1;
      }
    }
  }
  
  private final String b(gm paramgm)
  {
    if (paramgm == null) {
      return null;
    }
    if (!rH()) {
      return paramgm.toString();
    }
    return j(paramgm.rB());
  }
  
  private final boolean rH()
  {
    return this.zzjev.qP().cQ(3);
  }
  
  protected final String a(gk paramgk)
  {
    if (!rH()) {
      return paramgk.toString();
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Event{appId='");
    localStringBuilder.append(paramgk.aQx);
    localStringBuilder.append("', name='");
    localStringBuilder.append(ch(paramgk.name));
    localStringBuilder.append("', params=");
    localStringBuilder.append(b(paramgk.aRH));
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
  
  protected final String a(gp paramgp)
  {
    if (paramgp == null) {
      return null;
    }
    if (!rH()) {
      return paramgp.toString();
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("origin=");
    localStringBuilder.append(paramgp.aRb);
    localStringBuilder.append(",name=");
    localStringBuilder.append(ch(paramgp.name));
    localStringBuilder.append(",params=");
    localStringBuilder.append(b(paramgp.aRH));
    return localStringBuilder.toString();
  }
  
  protected final String a(li paramli)
  {
    int i = 0;
    if (paramli == null) {
      return "null";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("\nevent_filter {\n");
    a(localStringBuilder, 0, "filter_id", paramli.aXw);
    a(localStringBuilder, 0, "event_name", ch(paramli.aXx));
    a(localStringBuilder, 1, "event_count_filter", paramli.aXA);
    localStringBuilder.append("  filters {\n");
    paramli = paramli.aXy;
    int j = paramli.length;
    while (i < j)
    {
      a(localStringBuilder, 2, paramli[i]);
      i += 1;
    }
    a(localStringBuilder, 1);
    localStringBuilder.append("}\n}\n");
    return localStringBuilder.toString();
  }
  
  protected final String a(ll paramll)
  {
    if (paramll == null) {
      return "null";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("\nproperty_filter {\n");
    a(localStringBuilder, 0, "filter_id", paramll.aXw);
    a(localStringBuilder, 0, "property_name", cj(paramll.aXM));
    a(localStringBuilder, 1, paramll.aXN);
    localStringBuilder.append("}\n");
    return localStringBuilder.toString();
  }
  
  protected final String a(lt paramlt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("\nbatch {\n");
    if (paramlt.aYm != null)
    {
      paramlt = paramlt.aYm;
      int j = paramlt.length;
      int i = 0;
      while (i < j)
      {
        Object localObject = paramlt[i];
        if ((localObject != null) && (localObject != null))
        {
          a(localStringBuilder, 1);
          localStringBuilder.append("bundle {\n");
          a(localStringBuilder, 1, "protocol_version", ((lu)localObject).aYo);
          a(localStringBuilder, 1, "platform", ((lu)localObject).aYw);
          a(localStringBuilder, 1, "gmp_version", ((lu)localObject).aYA);
          a(localStringBuilder, 1, "uploading_gmp_version", ((lu)localObject).aYB);
          a(localStringBuilder, 1, "config_version", ((lu)localObject).aYM);
          a(localStringBuilder, 1, "gmp_app_id", ((lu)localObject).aQz);
          a(localStringBuilder, 1, "app_id", ((lu)localObject).aQx);
          a(localStringBuilder, 1, "app_version", ((lu)localObject).aQF);
          a(localStringBuilder, 1, "app_version_major", ((lu)localObject).aYI);
          a(localStringBuilder, 1, "firebase_instance_id", ((lu)localObject).aQB);
          a(localStringBuilder, 1, "dev_cert_hash", ((lu)localObject).aYE);
          a(localStringBuilder, 1, "app_store", ((lu)localObject).aQH);
          a(localStringBuilder, 1, "upload_timestamp_millis", ((lu)localObject).aYr);
          a(localStringBuilder, 1, "start_timestamp_millis", ((lu)localObject).aYs);
          a(localStringBuilder, 1, "end_timestamp_millis", ((lu)localObject).aYt);
          a(localStringBuilder, 1, "previous_bundle_start_timestamp_millis", ((lu)localObject).aYu);
          a(localStringBuilder, 1, "previous_bundle_end_timestamp_millis", ((lu)localObject).aYv);
          a(localStringBuilder, 1, "app_instance_id", ((lu)localObject).aQy);
          a(localStringBuilder, 1, "resettable_device_id", ((lu)localObject).aYC);
          a(localStringBuilder, 1, "device_id", ((lu)localObject).aYL);
          a(localStringBuilder, 1, "limited_ad_tracking", ((lu)localObject).aYD);
          a(localStringBuilder, 1, "os_version", ((lu)localObject).aYx);
          a(localStringBuilder, 1, "device_model", ((lu)localObject).aYy);
          a(localStringBuilder, 1, "user_default_language", ((lu)localObject).aRE);
          a(localStringBuilder, 1, "time_zone_offset_minutes", ((lu)localObject).aYz);
          a(localStringBuilder, 1, "bundle_sequential_index", ((lu)localObject).aYF);
          a(localStringBuilder, 1, "service_upload", ((lu)localObject).aYG);
          a(localStringBuilder, 1, "health_monitor", ((lu)localObject).aQX);
          if (((lu)localObject).aYN.longValue() != 0L) {
            a(localStringBuilder, 1, "android_id", ((lu)localObject).aYN);
          }
          a(localStringBuilder, ((lu)localObject).aYq);
          a(localStringBuilder, ((lu)localObject).aYH);
          a(localStringBuilder, ((lu)localObject).aYp);
          a(localStringBuilder, 1);
          localStringBuilder.append("}\n");
        }
        i += 1;
      }
    }
    localStringBuilder.append("}\n");
    return localStringBuilder.toString();
  }
  
  protected final String ch(String paramString)
  {
    String str;
    if (paramString == null) {
      str = null;
    }
    do
    {
      return str;
      str = paramString;
    } while (!rH());
    return a(paramString, AppMeasurement.a.bdM, AppMeasurement.a.bdL, aSV);
  }
  
  protected final String ci(String paramString)
  {
    String str;
    if (paramString == null) {
      str = null;
    }
    do
    {
      return str;
      str = paramString;
    } while (!rH());
    return a(paramString, AppMeasurement.d.bdO, AppMeasurement.d.bdN, aSW);
  }
  
  protected final String cj(String paramString)
  {
    Object localObject;
    if (paramString == null) {
      localObject = null;
    }
    do
    {
      return (String)localObject;
      localObject = paramString;
    } while (!rH());
    if (paramString.startsWith("_exp_"))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("experiment_id");
      ((StringBuilder)localObject).append("(");
      ((StringBuilder)localObject).append(paramString);
      ((StringBuilder)localObject).append(")");
      return ((StringBuilder)localObject).toString();
    }
    return a(paramString, AppMeasurement.e.bdQ, AppMeasurement.e.bdP, aSX);
  }
  
  protected final String j(Bundle paramBundle)
  {
    if (paramBundle == null) {
      return null;
    }
    if (!rH()) {
      return paramBundle.toString();
    }
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramBundle.keySet().iterator();
    if (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (localStringBuilder.length() != 0) {
        localStringBuilder.append(", ");
      }
      for (;;)
      {
        localStringBuilder.append(ci(str));
        localStringBuilder.append("=");
        localStringBuilder.append(paramBundle.get(str));
        break;
        localStringBuilder.append("Bundle[{");
      }
    }
    localStringBuilder.append("}]");
    return localStringBuilder.toString();
  }
  
  protected final boolean ri()
  {
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/gz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */