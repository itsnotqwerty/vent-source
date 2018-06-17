package io.intercom.okhttp3;

import io.intercom.b.c;
import io.intercom.b.d;
import io.intercom.b.f;
import io.intercom.okhttp3.internal.Util;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import javax.annotation.Nullable;

public final class MultipartBody
  extends RequestBody
{
  public static final MediaType ALTERNATIVE;
  private static final byte[] COLONSPACE = { 58, 32 };
  private static final byte[] CRLF = { 13, 10 };
  private static final byte[] DASHDASH = { 45, 45 };
  public static final MediaType DIGEST;
  public static final MediaType FORM;
  public static final MediaType MIXED = MediaType.parse("multipart/mixed");
  public static final MediaType PARALLEL;
  private final f boundary;
  private long contentLength = -1L;
  private final MediaType contentType;
  private final MediaType originalType;
  private final List<Part> parts;
  
  static
  {
    ALTERNATIVE = MediaType.parse("multipart/alternative");
    DIGEST = MediaType.parse("multipart/digest");
    PARALLEL = MediaType.parse("multipart/parallel");
    FORM = MediaType.parse("multipart/form-data");
  }
  
  MultipartBody(f paramf, MediaType paramMediaType, List<Part> paramList)
  {
    this.boundary = paramf;
    this.originalType = paramMediaType;
    this.contentType = MediaType.parse(paramMediaType + "; boundary=" + paramf.KE());
    this.parts = Util.immutableList(paramList);
  }
  
  static StringBuilder appendQuotedString(StringBuilder paramStringBuilder, String paramString)
  {
    paramStringBuilder.append('"');
    int i = 0;
    int j = paramString.length();
    if (i < j)
    {
      char c = paramString.charAt(i);
      switch (c)
      {
      default: 
        paramStringBuilder.append(c);
      }
      for (;;)
      {
        i += 1;
        break;
        paramStringBuilder.append("%0A");
        continue;
        paramStringBuilder.append("%0D");
        continue;
        paramStringBuilder.append("%22");
      }
    }
    paramStringBuilder.append('"');
    return paramStringBuilder;
  }
  
  private long writeOrCountBytes(@Nullable d paramd, boolean paramBoolean)
    throws IOException
  {
    long l1 = 0L;
    if (paramBoolean) {
      paramd = new c();
    }
    for (d locald = paramd;; locald = null)
    {
      int k = this.parts.size();
      int i = 0;
      Object localObject2;
      if (i < k)
      {
        localObject2 = (Part)this.parts.get(i);
        Object localObject1 = ((Part)localObject2).headers;
        localObject2 = ((Part)localObject2).body;
        paramd.G(DASHDASH);
        paramd.c(this.boundary);
        paramd.G(CRLF);
        if (localObject1 != null)
        {
          int j = 0;
          int m = ((Headers)localObject1).size();
          while (j < m)
          {
            paramd.fg(((Headers)localObject1).name(j)).G(COLONSPACE).fg(((Headers)localObject1).value(j)).G(CRLF);
            j += 1;
          }
        }
        localObject1 = ((RequestBody)localObject2).contentType();
        if (localObject1 != null) {
          paramd.fg("Content-Type: ").fg(((MediaType)localObject1).toString()).G(CRLF);
        }
        l2 = ((RequestBody)localObject2).contentLength();
        if (l2 != -1L) {
          paramd.fg("Content-Length: ").am(l2).G(CRLF);
        }
        while (!paramBoolean)
        {
          paramd.G(CRLF);
          if (!paramBoolean) {
            break label304;
          }
          l1 += l2;
          paramd.G(CRLF);
          i += 1;
          break;
        }
        locald.clear();
        l2 = -1L;
      }
      label304:
      do
      {
        return l2;
        ((RequestBody)localObject2).writeTo(paramd);
        break;
        paramd.G(DASHDASH);
        paramd.c(this.boundary);
        paramd.G(DASHDASH);
        paramd.G(CRLF);
        l2 = l1;
      } while (!paramBoolean);
      long l2 = locald.size;
      locald.clear();
      return l1 + l2;
    }
  }
  
  public final String boundary()
  {
    return this.boundary.KE();
  }
  
  public final long contentLength()
    throws IOException
  {
    long l = this.contentLength;
    if (l != -1L) {
      return l;
    }
    l = writeOrCountBytes(null, true);
    this.contentLength = l;
    return l;
  }
  
  public final MediaType contentType()
  {
    return this.contentType;
  }
  
  public final Part part(int paramInt)
  {
    return (Part)this.parts.get(paramInt);
  }
  
  public final List<Part> parts()
  {
    return this.parts;
  }
  
  public final int size()
  {
    return this.parts.size();
  }
  
  public final MediaType type()
  {
    return this.originalType;
  }
  
  public final void writeTo(d paramd)
    throws IOException
  {
    writeOrCountBytes(paramd, false);
  }
  
  public static final class Builder
  {
    private final f boundary;
    private final List<MultipartBody.Part> parts = new ArrayList();
    private MediaType type = MultipartBody.MIXED;
    
    public Builder()
    {
      this(UUID.randomUUID().toString());
    }
    
    public Builder(String paramString)
    {
      this.boundary = f.fh(paramString);
    }
    
    public final Builder addFormDataPart(String paramString1, String paramString2)
    {
      return addPart(MultipartBody.Part.createFormData(paramString1, paramString2));
    }
    
    public final Builder addFormDataPart(String paramString1, @Nullable String paramString2, RequestBody paramRequestBody)
    {
      return addPart(MultipartBody.Part.createFormData(paramString1, paramString2, paramRequestBody));
    }
    
    public final Builder addPart(@Nullable Headers paramHeaders, RequestBody paramRequestBody)
    {
      return addPart(MultipartBody.Part.create(paramHeaders, paramRequestBody));
    }
    
    public final Builder addPart(MultipartBody.Part paramPart)
    {
      if (paramPart == null) {
        throw new NullPointerException("part == null");
      }
      this.parts.add(paramPart);
      return this;
    }
    
    public final Builder addPart(RequestBody paramRequestBody)
    {
      return addPart(MultipartBody.Part.create(paramRequestBody));
    }
    
    public final MultipartBody build()
    {
      if (this.parts.isEmpty()) {
        throw new IllegalStateException("Multipart body must have at least one part.");
      }
      return new MultipartBody(this.boundary, this.type, this.parts);
    }
    
    public final Builder setType(MediaType paramMediaType)
    {
      if (paramMediaType == null) {
        throw new NullPointerException("type == null");
      }
      if (!paramMediaType.type().equals("multipart")) {
        throw new IllegalArgumentException("multipart != " + paramMediaType);
      }
      this.type = paramMediaType;
      return this;
    }
  }
  
  public static final class Part
  {
    final RequestBody body;
    @Nullable
    final Headers headers;
    
    private Part(@Nullable Headers paramHeaders, RequestBody paramRequestBody)
    {
      this.headers = paramHeaders;
      this.body = paramRequestBody;
    }
    
    public static Part create(@Nullable Headers paramHeaders, RequestBody paramRequestBody)
    {
      if (paramRequestBody == null) {
        throw new NullPointerException("body == null");
      }
      if ((paramHeaders != null) && (paramHeaders.get("Content-Type") != null)) {
        throw new IllegalArgumentException("Unexpected header: Content-Type");
      }
      if ((paramHeaders != null) && (paramHeaders.get("Content-Length") != null)) {
        throw new IllegalArgumentException("Unexpected header: Content-Length");
      }
      return new Part(paramHeaders, paramRequestBody);
    }
    
    public static Part create(RequestBody paramRequestBody)
    {
      return create(null, paramRequestBody);
    }
    
    public static Part createFormData(String paramString1, String paramString2)
    {
      return createFormData(paramString1, null, RequestBody.create(null, paramString2));
    }
    
    public static Part createFormData(String paramString1, @Nullable String paramString2, RequestBody paramRequestBody)
    {
      if (paramString1 == null) {
        throw new NullPointerException("name == null");
      }
      StringBuilder localStringBuilder = new StringBuilder("form-data; name=");
      MultipartBody.appendQuotedString(localStringBuilder, paramString1);
      if (paramString2 != null)
      {
        localStringBuilder.append("; filename=");
        MultipartBody.appendQuotedString(localStringBuilder, paramString2);
      }
      return create(Headers.of(new String[] { "Content-Disposition", localStringBuilder.toString() }), paramRequestBody);
    }
    
    public final RequestBody body()
    {
      return this.body;
    }
    
    @Nullable
    public final Headers headers()
    {
      return this.headers;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/okhttp3/MultipartBody.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */