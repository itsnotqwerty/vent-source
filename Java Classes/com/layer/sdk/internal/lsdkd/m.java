package com.layer.sdk.internal.lsdkd;

import android.content.UriMatcher;
import android.net.Uri;
import android.net.Uri.Builder;
import com.layer.b.d.c;
import com.layer.b.d.h;
import com.layer.b.f.c.d;
import com.layer.b.f.c.e;
import com.layer.sdk.messaging.LayerObject.Type;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class m
{
  static final UriMatcher brk = new UriMatcher(-1);
  
  static
  {
    a[] arrayOfa = a.values();
    int j = arrayOfa.length;
    int i = 0;
    while (i < j)
    {
      a locala = arrayOfa[i];
      brk.addURI("", locala.a(), locala.c());
      i += 1;
    }
  }
  
  public static Uri a()
  {
    return a(UUID.randomUUID());
  }
  
  public static Uri a(Uri paramUri, Integer paramInteger)
  {
    return paramUri.buildUpon().appendPath("parts").appendPath(String.valueOf(paramInteger)).build();
  }
  
  public static Uri a(c paramc)
  {
    if (paramc.bCE != e.bDq) {
      throw new IllegalArgumentException("Cannot create a message ID from: " + paramc.bCE);
    }
    if (paramc.yq() == null) {
      throw new IllegalArgumentException("Null client ID provided in message event");
    }
    return b(paramc.d());
  }
  
  public static Uri a(h paramh)
  {
    if (paramh.za() == null) {
      throw new IllegalArgumentException("Null client ID provided in stream");
    }
    return a(paramh.c());
  }
  
  public static Uri a(String paramString)
  {
    Uri localUri = Uri.parse(paramString);
    a locala = b(localUri);
    if ((locala != a.a) && (locala != a.b)) {
      throw new IllegalArgumentException("Not a valid Layer App ID");
    }
    if (locala.a(paramString) == null) {
      throw new IllegalArgumentException("Not a valid Layer App ID");
    }
    return localUri;
  }
  
  public static Uri a(UUID paramUUID)
  {
    return new Uri.Builder().scheme("layer").authority("").appendPath("conversations").appendPath(paramUUID.toString()).build();
  }
  
  public static Uri a(UUID paramUUID, boolean paramBoolean)
  {
    Uri.Builder localBuilder = new Uri.Builder().scheme("layer").authority("").appendPath("apps");
    if (paramBoolean) {}
    for (String str = "production";; str = "staging") {
      return localBuilder.appendPath(str).appendPath(paramUUID.toString()).build();
    }
  }
  
  public static UUID a(Uri paramUri)
  {
    return UUID.fromString(paramUri.getLastPathSegment());
  }
  
  public static Uri b()
  {
    return b(UUID.randomUUID());
  }
  
  public static Uri b(c paramc)
  {
    if (paramc.bCE != e.bDq) {
      throw new IllegalArgumentException("Cannot create a announcement ID from: " + paramc.bCE);
    }
    if (paramc.yq() == null) {
      throw new IllegalArgumentException("Null client ID provided in announcement event");
    }
    return c(paramc.d());
  }
  
  public static Uri b(String paramString)
  {
    return a(UUID.fromString(paramString));
  }
  
  public static Uri b(UUID paramUUID)
  {
    return new Uri.Builder().scheme("layer").authority("").appendPath("messages").appendPath(paramUUID.toString()).build();
  }
  
  public static a b(Uri paramUri)
  {
    if (!"layer".equals(paramUri.getScheme())) {
      throw new IllegalArgumentException("Invalid scheme: " + paramUri.toString());
    }
    if (!"".equals(paramUri.getAuthority())) {
      throw new IllegalArgumentException("Invalid authority: " + paramUri.toString());
    }
    int i = brk.match(paramUri);
    if (i == -1) {
      throw new IllegalArgumentException("Invalid URI: " + paramUri.toString());
    }
    return a.a(i);
  }
  
  public static Uri c(String paramString)
  {
    return new Uri.Builder().scheme("layer").authority("").appendPath("identities").appendPath(paramString).build();
  }
  
  public static Uri c(UUID paramUUID)
  {
    return new Uri.Builder().scheme("layer").authority("").appendPath("announcements").appendPath(paramUUID.toString()).build();
  }
  
  public static UUID c(Uri paramUri)
  {
    return d(paramUri.toString());
  }
  
  private static UUID d(String paramString)
  {
    return UUID.fromString(paramString.substring(paramString.lastIndexOf('/') + 1));
  }
  
  public static enum a
  {
    private final String j;
    private final Pattern k;
    private final LayerObject.Type l;
    
    private a(String paramString, Pattern paramPattern, LayerObject.Type paramType)
    {
      this.j = paramString;
      this.k = paramPattern;
      this.l = paramType;
    }
    
    public static a a(int paramInt)
    {
      return values()[(paramInt - 1)];
    }
    
    public final String a()
    {
      return this.j;
    }
    
    public final String[] a(String paramString)
    {
      Matcher localMatcher = this.k.matcher(paramString);
      if (!localMatcher.find()) {
        return null;
      }
      String[] arrayOfString = new String[localMatcher.groupCount()];
      int n = 0;
      while (n < localMatcher.groupCount())
      {
        int i1 = n + 1;
        arrayOfString[n] = paramString.substring(localMatcher.start(i1), localMatcher.end(i1));
        n += 1;
      }
      return arrayOfString;
    }
    
    public final LayerObject.Type b()
    {
      return this.l;
    }
    
    public final int c()
    {
      return ordinal() + 1;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkd/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */