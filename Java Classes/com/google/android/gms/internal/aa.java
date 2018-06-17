package com.google.android.gms.internal;

import android.util.JsonWriter;
import com.google.android.gms.common.util.e;
import com.google.android.gms.common.util.f;
import java.io.IOException;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.UUID;

public final class aa
{
  private static Object AT = new Object();
  private static boolean aLb = false;
  private static boolean aLc = false;
  private static e aLd = f.oG();
  private static final Set<String> aLe = new HashSet(Arrays.asList(new String[0]));
  private final List<String> aLf;
  
  public aa()
  {
    this((byte)0);
  }
  
  private aa(byte paramByte)
  {
    if (!isEnabled())
    {
      localObject = new ArrayList();
      this.aLf = ((List)localObject);
      return;
    }
    Object localObject = String.valueOf(UUID.randomUUID().toString());
    if (((String)localObject).length() != 0) {}
    for (localObject = "network_request_".concat((String)localObject);; localObject = new String("network_request_"))
    {
      localObject = Arrays.asList(new String[] { localObject });
      break;
    }
  }
  
  private static void a(JsonWriter paramJsonWriter, Map<String, ?> paramMap)
    throws IOException
  {
    if (paramMap == null) {
      return;
    }
    paramJsonWriter.name("headers").beginArray();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Object localObject = (Map.Entry)paramMap.next();
      String str1 = (String)((Map.Entry)localObject).getKey();
      if (!aLe.contains(str1)) {
        if ((((Map.Entry)localObject).getValue() instanceof List))
        {
          localObject = ((List)((Map.Entry)localObject).getValue()).iterator();
          while (((Iterator)localObject).hasNext())
          {
            String str2 = (String)((Iterator)localObject).next();
            paramJsonWriter.beginObject();
            paramJsonWriter.name("name").value(str1);
            paramJsonWriter.name("value").value(str2);
            paramJsonWriter.endObject();
          }
        }
        else if ((((Map.Entry)localObject).getValue() instanceof String))
        {
          paramJsonWriter.beginObject();
          paramJsonWriter.name("name").value(str1);
          paramJsonWriter.name("value").value((String)((Map.Entry)localObject).getValue());
          paramJsonWriter.endObject();
        }
        else
        {
          af.e("Connection headers should be either Map<String, String> or Map<String, List<String>>");
        }
      }
    }
    paramJsonWriter.endArray();
  }
  
  private static void bq(String paramString)
  {
    try
    {
      af.bs("GMA Debug BEGIN");
      int i = 0;
      if (i < paramString.length())
      {
        String str = String.valueOf(paramString.substring(i, Math.min(i + 4000, paramString.length())));
        if (str.length() != 0) {}
        for (str = "GMA Debug CONTENT ".concat(str);; str = new String("GMA Debug CONTENT "))
        {
          af.bs(str);
          i += 4000;
          break;
        }
      }
      af.bs("GMA Debug FINISH");
    }
    finally {}
  }
  
  public static boolean isEnabled()
  {
    for (;;)
    {
      synchronized (AT)
      {
        if ((aLb) && (aLc))
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  final void a(String paramString, ae paramae)
  {
    StringWriter localStringWriter = new StringWriter();
    JsonWriter localJsonWriter = new JsonWriter(localStringWriter);
    try
    {
      localJsonWriter.beginObject();
      localJsonWriter.name("timestamp").value(aLd.currentTimeMillis());
      localJsonWriter.name("event").value(paramString);
      localJsonWriter.name("components").beginArray();
      paramString = this.aLf.iterator();
      while (paramString.hasNext())
      {
        localJsonWriter.value((String)paramString.next());
        continue;
        bq(localStringWriter.toString());
      }
    }
    catch (IOException paramString)
    {
      af.c("unable to log", paramString);
    }
    for (;;)
    {
      return;
      localJsonWriter.endArray();
      paramae.a(localJsonWriter);
      localJsonWriter.endObject();
      localJsonWriter.flush();
      localJsonWriter.close();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/aa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */