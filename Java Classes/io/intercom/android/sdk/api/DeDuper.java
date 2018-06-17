package io.intercom.android.sdk.api;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import io.intercom.a.b.a.e;
import io.intercom.a.b.a.p;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.commons.utilities.TimeProvider;
import io.intercom.android.sdk.identity.AppConfig;
import java.io.StringWriter;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class DeDuper
{
  private static final String CUSTOM_ATTRIBUTES = "custom_attributes";
  private static final String EMPTY_JSON = "{}";
  private static final String PREFS_CACHED_ATTRIBUTES = "CachedAttributes";
  private static final String PREFS_EARLIEST_UPDATE_AT = "EarliestUpdateAt";
  private final Provider<AppConfig> appConfigProvider;
  private final Map<String, Object> cachedAttributes = new HashMap();
  private long earliestUpdateAt = 0L;
  private final e gson = new e();
  private final SharedPreferences prefs;
  
  public DeDuper(Provider<AppConfig> paramProvider, SharedPreferences paramSharedPreferences)
  {
    this.appConfigProvider = paramProvider;
    this.prefs = paramSharedPreferences;
  }
  
  private static boolean containsOnlyEmptyCustomAttributes(Map<String, Object> paramMap)
  {
    return (paramMap.size() == 1) && (Collections.EMPTY_MAP.equals(paramMap.get("custom_attributes")));
  }
  
  private static Map<String, Object> getCustomAttributes(Map<String, ?> paramMap)
  {
    paramMap = paramMap.get("custom_attributes");
    if ((paramMap instanceof Map)) {
      return (Map)paramMap;
    }
    return null;
  }
  
  private boolean hasExpiredCache()
  {
    if (this.earliestUpdateAt == 0L) {
      return false;
    }
    long l = ((AppConfig)this.appConfigProvider.get()).getUserUpdateCacheMaxAgeMs();
    return TimeProvider.SYSTEM.currentTimeMillis() - this.earliestUpdateAt > l;
  }
  
  private boolean hasNewAttributeValues(Map<String, Object> paramMap)
  {
    Object localObject1 = getCustomAttributes(this.cachedAttributes);
    Object localObject2 = getCustomAttributes(paramMap);
    if (localObject2 != null)
    {
      if (localObject1 == null) {
        return true;
      }
      localObject2 = ((Map)localObject2).entrySet().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        Map.Entry localEntry = (Map.Entry)((Iterator)localObject2).next();
        Object localObject3 = localEntry.getValue();
        if ((localObject3 != null) && (!localObject3.equals(((Map)localObject1).get(localEntry.getKey())))) {
          return true;
        }
      }
    }
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      localObject1 = (Map.Entry)paramMap.next();
      if (!"custom_attributes".equals(((Map.Entry)localObject1).getKey()))
      {
        localObject2 = ((Map.Entry)localObject1).getValue();
        if ((localObject2 != null) && (!localObject2.equals(this.cachedAttributes.get(((Map.Entry)localObject1).getKey())))) {
          return true;
        }
      }
    }
    return false;
  }
  
  private boolean isEmpty()
  {
    return this.cachedAttributes.isEmpty();
  }
  
  private static Map<String, Object> mergeMaps(Map<String, ?> paramMap1, Map<String, ?> paramMap2)
  {
    paramMap1 = new HashMap(paramMap1);
    paramMap1.putAll(paramMap2);
    return paramMap1;
  }
  
  private void persistCachedAttributes()
  {
    HashMap localHashMap = new HashMap(this.cachedAttributes);
    SharedPreferences.Editor localEditor = this.prefs.edit();
    e locale = this.gson;
    Class localClass = localHashMap.getClass();
    StringWriter localStringWriter = new StringWriter();
    locale.a(localHashMap, localClass, localStringWriter);
    localEditor.putString("CachedAttributes", localStringWriter.toString()).putLong("EarliestUpdateAt", this.earliestUpdateAt).apply();
  }
  
  long getEarliestUpdateAt()
  {
    return this.earliestUpdateAt;
  }
  
  Map<String, Object> getMap()
  {
    return this.cachedAttributes;
  }
  
  public void readPersistedCachedAttributes()
  {
    Object localObject;
    if ((this.prefs.contains("CachedAttributes")) && (this.prefs.contains("EarliestUpdateAt"))) {
      localObject = this.prefs.getString("CachedAttributes", "{}");
    }
    try
    {
      localObject = (Map)this.gson.d((String)localObject, Map.class);
      this.cachedAttributes.putAll((Map)localObject);
      this.earliestUpdateAt = this.prefs.getLong("EarliestUpdateAt", 0L);
      return;
    }
    catch (p localp) {}
  }
  
  public void reset()
  {
    this.cachedAttributes.clear();
    this.earliestUpdateAt = 0L;
    persistCachedAttributes();
  }
  
  void setEarliestUpdateAt(long paramLong)
  {
    this.earliestUpdateAt = paramLong;
  }
  
  public boolean shouldUpdateUser(Map<String, Object> paramMap)
  {
    if ((paramMap.isEmpty()) || (containsOnlyEmptyCustomAttributes(paramMap))) {}
    while ((!hasNewAttributeValues(paramMap)) && (!isEmpty()) && (!hasExpiredCache())) {
      return false;
    }
    return true;
  }
  
  public void update(Map<String, ?> paramMap)
  {
    if (hasExpiredCache())
    {
      this.cachedAttributes.clear();
      setEarliestUpdateAt(TimeProvider.SYSTEM.currentTimeMillis());
    }
    if (this.earliestUpdateAt == 0L) {
      setEarliestUpdateAt(TimeProvider.SYSTEM.currentTimeMillis());
    }
    Map localMap1 = getCustomAttributes(this.cachedAttributes);
    Map localMap2 = getCustomAttributes(paramMap);
    this.cachedAttributes.putAll(paramMap);
    if ((localMap1 != null) && (localMap2 != null)) {
      this.cachedAttributes.put("custom_attributes", mergeMaps(localMap1, localMap2));
    }
    persistCachedAttributes();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/api/DeDuper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */