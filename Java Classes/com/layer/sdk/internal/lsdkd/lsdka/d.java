package com.layer.sdk.internal.lsdkd.lsdka;

import com.layer.sdk.exceptions.LayerException;
import com.layer.sdk.exceptions.LayerException.Type;
import com.layer.sdk.internal.lsdkk.k;
import com.layer.sdk.internal.lsdkk.k.a;

public class d
{
  private static final k.a a = k.a(d.class);
  private Long b;
  private Long c;
  private Long d;
  private Long e;
  private String f;
  private boolean g;
  private Integer h;
  private Long i;
  
  public d() {}
  
  public d(String paramString)
  {
    if (paramString == null)
    {
      if (k.a(6)) {
        k.e(a, "Null member ID");
      }
      throw new LayerException(LayerException.Type.NULL_PARTICIPANT, "Null member ID");
    }
    if ((paramString.isEmpty()) && (k.a(5))) {
      k.d(a, "Empty member ID");
    }
    this.f = paramString;
  }
  
  public String a()
  {
    return this.f;
  }
  
  public void a(long paramLong)
  {
    this.i = Long.valueOf(paramLong);
  }
  
  public void a(Integer paramInteger)
  {
    this.h = paramInteger;
  }
  
  public void a(Long paramLong)
  {
    this.b = paramLong;
  }
  
  public void a(String paramString)
  {
    this.f = paramString;
  }
  
  public void a(boolean paramBoolean)
  {
    this.g = paramBoolean;
  }
  
  public Long b()
  {
    return this.b;
  }
  
  public void b(Long paramLong)
  {
    this.c = paramLong;
  }
  
  public Long c()
  {
    return this.c;
  }
  
  public void c(Long paramLong)
  {
    this.d = paramLong;
  }
  
  public Long d()
  {
    return this.d;
  }
  
  public void d(Long paramLong)
  {
    this.e = paramLong;
  }
  
  public Long e()
  {
    return this.e;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof d)) {}
    do
    {
      return false;
      paramObject = (d)paramObject;
    } while ((a() == null) || (((d)paramObject).a() == null));
    return a().equals(((d)paramObject).a());
  }
  
  public boolean f()
  {
    return this.g;
  }
  
  public Integer g()
  {
    return this.h;
  }
  
  public Long h()
  {
    return this.i;
  }
  
  public int hashCode()
  {
    return a().hashCode();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("participant [  mMemberId: ").append(this.f).append(", mDatabaseId: ").append(this.b).append(", mConversationDatabaseId: ").append(this.c).append(", mStreamMemberDatabaseId: ").append(this.d).append(", mMarkAsReadFromPosition: ").append(this.i).append("]");
    return localStringBuilder.toString();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkd/lsdka/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */