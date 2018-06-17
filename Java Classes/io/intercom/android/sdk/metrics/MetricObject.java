package io.intercom.android.sdk.metrics;

import io.intercom.a.b.a.a.c;
import io.intercom.android.sdk.commons.utilities.TimeProvider;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

public class MetricObject
{
  static final String KEY_ACTION = "action";
  private static final String KEY_ANDROID_INSTALLER_PACKAGE_NAME = "android_installer_package_name";
  private static final String KEY_ANDROID_IS_DEBUG_BUILD = "android_is_debug_build";
  static final String KEY_APP_VERSION = "app_version";
  static final String KEY_CONTEXT = "context";
  static final String KEY_OBJECT = "object";
  static final String KEY_OWNER = "owner";
  static final String KEY_PLACE = "place";
  static final String KEY_SDK_VERSION = "sdk_version";
  static final String KEY_USER_ID = "user_id";
  @c("created_at")
  private final long createdAt;
  private final String id;
  private final Map<String, Object> metadata = new HashMap();
  private final String name;
  
  MetricObject(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, TimeProvider paramTimeProvider, String paramString9, String paramString10)
  {
    this.name = paramString1;
    this.createdAt = TimeUnit.MILLISECONDS.toSeconds(paramTimeProvider.currentTimeMillis());
    this.id = paramString3;
    this.metadata.put("action", paramString5);
    this.metadata.put("object", paramString6);
    this.metadata.put("place", paramString7);
    this.metadata.put("context", paramString8);
    this.metadata.put("owner", paramString2);
    if (!paramString4.isEmpty()) {
      this.metadata.put("user_id", paramString4);
    }
    this.metadata.put("sdk_version", paramString10);
    this.metadata.put("app_version", paramString9);
  }
  
  MetricObject addInstallerPackageName(String paramString)
  {
    addMetaData("android_installer_package_name", paramString);
    return this;
  }
  
  MetricObject addIsDebugBuild(boolean paramBoolean)
  {
    addMetaData("android_is_debug_build", Boolean.valueOf(paramBoolean));
    return this;
  }
  
  MetricObject addMetaData(String paramString, Object paramObject)
  {
    this.metadata.put(paramString, paramObject);
    return this;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (MetricObject)paramObject;
      if (this.createdAt != ((MetricObject)paramObject).createdAt) {
        return false;
      }
      if (!this.metadata.equals(((MetricObject)paramObject).metadata)) {
        return false;
      }
      if (this.id != null) {
        return this.id.equals(((MetricObject)paramObject).id);
      }
    } while (((MetricObject)paramObject).id == null);
    return false;
  }
  
  public long getCreatedAt()
  {
    return this.createdAt;
  }
  
  public String getId()
  {
    return this.id;
  }
  
  public Map<String, Object> getMetadata()
  {
    return this.metadata;
  }
  
  public int hashCode()
  {
    int j = this.metadata.hashCode();
    if (this.id != null) {}
    for (int i = this.id.hashCode();; i = 0) {
      return (i + j * 31) * 31 + (int)(this.createdAt ^ this.createdAt >>> 32);
    }
  }
  
  public String toString()
  {
    return "MetricObject{metadata=" + this.metadata + ", id='" + this.id + '\'' + ", createdAt=" + this.createdAt + '}';
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/metrics/MetricObject.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */