package io.intercom.android.sdk.api;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class UserUpdateRequest
{
  private static final String CUSTOM_ATTRIBUTES = "custom_attributes";
  private final Map<String, Object> attributes = new HashMap();
  private final int batchSize;
  private final boolean internalUpdate;
  private final boolean newSession;
  private final boolean sentFromBackground;
  
  public UserUpdateRequest()
  {
    this(false, true, null, 0, false);
  }
  
  UserUpdateRequest(boolean paramBoolean1, boolean paramBoolean2, Map<String, Object> paramMap, int paramInt, boolean paramBoolean3)
  {
    if (paramMap != null) {
      this.attributes.putAll(paramMap);
    }
    this.sentFromBackground = paramBoolean2;
    this.newSession = paramBoolean1;
    this.batchSize = paramInt;
    this.internalUpdate = paramBoolean3;
  }
  
  public UserUpdateRequest(boolean paramBoolean1, boolean paramBoolean2, Map<String, Object> paramMap, boolean paramBoolean3)
  {
    this(paramBoolean1, paramBoolean2, paramMap, 1, paramBoolean3);
  }
  
  public UserUpdateRequest(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    this(paramBoolean1, paramBoolean2, null, 1, paramBoolean3);
  }
  
  private boolean attributesWillOverwriteExistingAttributes(Map<String, Object> paramMap)
  {
    Object localObject2 = getCustomAttributes(this.attributes);
    Object localObject1 = getCustomAttributes(paramMap);
    Object localObject3;
    if ((localObject2 != null) && (localObject1 != null))
    {
      localObject2 = ((Map)localObject2).entrySet().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (Map.Entry)((Iterator)localObject2).next();
        Object localObject4 = ((Map)localObject1).get(((Map.Entry)localObject3).getKey());
        if ((localObject4 != null) && (!localObject4.equals(((Map.Entry)localObject3).getValue()))) {
          return true;
        }
      }
    }
    localObject1 = this.attributes.entrySet().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (Map.Entry)((Iterator)localObject1).next();
      if (!"custom_attributes".equals(((Map.Entry)localObject2).getKey()))
      {
        localObject3 = paramMap.get(((Map.Entry)localObject2).getKey());
        if ((localObject3 != null) && (!localObject3.equals(((Map.Entry)localObject2).getValue()))) {
          return true;
        }
      }
    }
    return false;
  }
  
  private static Map<String, Object> getCustomAttributes(Map<String, Object> paramMap)
  {
    paramMap = paramMap.get("custom_attributes");
    if ((paramMap instanceof Map)) {
      return (Map)paramMap;
    }
    return null;
  }
  
  private static Map<String, Object> mergeAttributes(Map<String, Object> paramMap1, Map<String, Object> paramMap2)
  {
    HashMap localHashMap = new HashMap(paramMap1);
    Map localMap1 = getCustomAttributes(localHashMap);
    Map localMap2 = getCustomAttributes(paramMap2);
    localHashMap.putAll(paramMap2);
    if ((localMap2 != null) && (!localMap2.isEmpty()))
    {
      paramMap1 = localMap1;
      if (localMap1 == null) {
        paramMap1 = new HashMap();
      }
      paramMap1.putAll(localMap2);
      localHashMap.put("custom_attributes", paramMap1);
      return localHashMap;
    }
    if (localMap1 != null)
    {
      localHashMap.put("custom_attributes", localMap1);
      return localHashMap;
    }
    localHashMap.remove("custom_attributes");
    return localHashMap;
  }
  
  public boolean canMergeUpdate(UserUpdateRequest paramUserUpdateRequest)
  {
    return (!attributesWillOverwriteExistingAttributes(paramUserUpdateRequest.attributes)) && ((!this.newSession) || (!paramUserUpdateRequest.newSession));
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (this == paramObject) {
      bool1 = true;
    }
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                return bool1;
                bool1 = bool2;
              } while (paramObject == null);
              bool1 = bool2;
            } while (getClass() != paramObject.getClass());
            paramObject = (UserUpdateRequest)paramObject;
            bool1 = bool2;
          } while (this.newSession != ((UserUpdateRequest)paramObject).newSession);
          bool1 = bool2;
        } while (this.batchSize != ((UserUpdateRequest)paramObject).batchSize);
        bool1 = bool2;
      } while (this.sentFromBackground != ((UserUpdateRequest)paramObject).sentFromBackground);
      bool1 = bool2;
    } while (this.internalUpdate != ((UserUpdateRequest)paramObject).internalUpdate);
    return this.attributes.equals(((UserUpdateRequest)paramObject).attributes);
  }
  
  public Map<String, Object> getAttributes()
  {
    return this.attributes;
  }
  
  public int getBatchSize()
  {
    return this.batchSize;
  }
  
  public int hashCode()
  {
    int k = 1;
    int m = this.attributes.hashCode();
    int i;
    int n;
    int j;
    if (this.newSession)
    {
      i = 1;
      n = this.batchSize;
      if (!this.sentFromBackground) {
        break label73;
      }
      j = 1;
      label37:
      if (!this.internalUpdate) {
        break label78;
      }
    }
    for (;;)
    {
      return (j + ((i + m * 31) * 31 + n) * 31) * 31 + k;
      i = 0;
      break;
      label73:
      j = 0;
      break label37;
      label78:
      k = 0;
    }
  }
  
  public boolean isInternalUpdate()
  {
    return this.internalUpdate;
  }
  
  public boolean isNewSession()
  {
    return this.newSession;
  }
  
  public boolean isSentFromBackground()
  {
    return this.sentFromBackground;
  }
  
  public boolean isValidUpdate()
  {
    return (this.internalUpdate) || (!this.attributes.isEmpty());
  }
  
  public UserUpdateRequest merge(UserUpdateRequest paramUserUpdateRequest)
  {
    boolean bool3 = true;
    boolean bool1;
    boolean bool2;
    label36:
    Map localMap;
    if ((this.internalUpdate) || (paramUserUpdateRequest.internalUpdate))
    {
      bool1 = true;
      if ((!this.newSession) && (!paramUserUpdateRequest.newSession)) {
        break label94;
      }
      bool2 = true;
      localMap = mergeAttributes(this.attributes, paramUserUpdateRequest.attributes);
      if ((!this.sentFromBackground) || (!paramUserUpdateRequest.sentFromBackground)) {
        break label100;
      }
    }
    for (;;)
    {
      int i = this.batchSize;
      return new UserUpdateRequest(bool2, bool3, localMap, paramUserUpdateRequest.batchSize + i, bool1);
      bool1 = false;
      break;
      label94:
      bool2 = false;
      break label36;
      label100:
      bool3 = false;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/api/UserUpdateRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */