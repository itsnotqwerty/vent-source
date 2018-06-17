package com.layer.sdk.messaging;

import android.os.Bundle;
import com.layer.sdk.internal.lsdkk.k;
import com.layer.sdk.internal.lsdkk.k.a;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class PushNotificationPayload
{
  public static final String KEY_DATA = "data";
  public static final String KEY_LOC_ARGS = "loc-args";
  public static final String KEY_LOC_KEY = "loc-key";
  public static final String KEY_SOUND = "sound";
  public static final String KEY_TEXT = "text";
  public static final String KEY_TITLE = "title";
  public static final String KEY_TITLE_LOC_ARGS = "title-loc-args";
  public static final String KEY_TITLE_LOC_KEY = "title-loc-key";
  private static final k.a a = k.a(PushNotificationPayload.class);
  private static final Set<String> b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;
  private String[] h;
  private String i;
  private String[] j;
  private Map<String, String> k;
  private Map<String, String> l;
  
  static
  {
    HashSet localHashSet = new HashSet(7);
    b = localHashSet;
    localHashSet.add("title");
    b.add("text");
    b.add("sound");
    b.add("title-loc-key");
    b.add("title-loc-args");
    b.add("loc-key");
    b.add("loc-args");
  }
  
  private PushNotificationPayload(Builder paramBuilder)
  {
    this.c = Builder.a(paramBuilder);
    this.d = Builder.b(paramBuilder);
    this.e = Builder.c(paramBuilder);
    this.f = Builder.d(paramBuilder);
    this.g = Builder.e(paramBuilder);
    this.h = Builder.f(paramBuilder);
    this.i = Builder.g(paramBuilder);
    this.j = Builder.h(paramBuilder);
    this.k = Builder.i(paramBuilder);
    this.l = Builder.j(paramBuilder);
  }
  
  private static Map<String, String> a(Bundle paramBundle)
  {
    Object localObject2 = paramBundle.keySet();
    Object localObject1 = null;
    Iterator localIterator = ((Set)localObject2).iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (!b.contains(str))
      {
        Object localObject3 = paramBundle.get(str);
        if ((localObject3 instanceof String))
        {
          localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = new HashMap();
          }
          ((Map)localObject2).put(str, (String)localObject3);
          localObject1 = localObject2;
        }
        else if (k.a(2))
        {
          k.a(a, String.format("Skipping key '%s' because value '%s' is not a String.", new Object[] { str, localObject3 }));
        }
      }
    }
    return (Map<String, String>)localObject1;
  }
  
  public static PushNotificationPayload fromLayerPushExtras(Bundle paramBundle)
  {
    String str1 = paramBundle.getString("title-loc-key");
    String[] arrayOfString1 = paramBundle.getStringArray("title-loc-args");
    String str2 = paramBundle.getString("loc-key");
    String[] arrayOfString2 = paramBundle.getStringArray("loc-args");
    return new Builder().title(paramBundle.getString("title")).text(paramBundle.getString("text")).sound(paramBundle.getString("sound")).titleLocalization(str1, arrayOfString1).localization(str2, arrayOfString2).data(a(paramBundle)).build();
  }
  
  public Map<String, String> getApnsData()
  {
    return this.l;
  }
  
  public String getCategory()
  {
    return this.f;
  }
  
  public Map<String, String> getData()
  {
    return this.k;
  }
  
  public String[] getLocalizationArguments()
  {
    return this.j;
  }
  
  public String getLocalizationKey()
  {
    return this.i;
  }
  
  public String getSound()
  {
    return this.e;
  }
  
  public String getText()
  {
    return this.d;
  }
  
  public String getTitle()
  {
    return this.c;
  }
  
  public String[] getTitleLocalizationArguments()
  {
    return this.h;
  }
  
  public String getTitleLocalizationKey()
  {
    return this.g;
  }
  
  public String toString()
  {
    return "PushNotificationPayload{mTitle='" + this.c + '\'' + ", mText='" + this.d + '\'' + ", mSound='" + this.e + '\'' + ", mCategory='" + this.f + '\'' + ", mTitleLocalizationKey='" + this.g + '\'' + ", mTitleLocalizationArguments=" + Arrays.toString(this.h) + ", mLocalizationKey='" + this.i + '\'' + ", mLocalizationArguments=" + Arrays.toString(this.j) + ", mData=" + this.k + ", mApnsData=" + this.l + '}';
  }
  
  public static class Builder
  {
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String[] f;
    private String g;
    private String[] h;
    private Map<String, String> i;
    private Map<String, String> j;
    
    public Builder apnsData(Map<String, String> paramMap)
    {
      this.j = paramMap;
      return this;
    }
    
    public PushNotificationPayload build()
    {
      return new PushNotificationPayload(this, (byte)0);
    }
    
    public Builder category(String paramString)
    {
      this.d = paramString;
      return this;
    }
    
    public Builder data(Map<String, String> paramMap)
    {
      this.i = paramMap;
      return this;
    }
    
    public Builder localization(String paramString, String... paramVarArgs)
    {
      this.g = paramString;
      if ((paramVarArgs != null) && (paramVarArgs.length > 0)) {
        this.h = paramVarArgs;
      }
      return this;
    }
    
    public Builder sound(String paramString)
    {
      this.c = paramString;
      return this;
    }
    
    public Builder text(String paramString)
    {
      this.b = paramString;
      return this;
    }
    
    public Builder title(String paramString)
    {
      this.a = paramString;
      return this;
    }
    
    public Builder titleLocalization(String paramString, String... paramVarArgs)
    {
      this.e = paramString;
      if ((paramVarArgs != null) && (paramVarArgs.length > 0)) {
        this.f = paramVarArgs;
      }
      return this;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/messaging/PushNotificationPayload.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */