package com.layer.sdk.internal.lsdkd.lsdka;

import com.layer.sdk.messaging.Message.RecipientStatus;

public class l
{
  private Long a;
  private Long b;
  private String c;
  private Message.RecipientStatus d;
  private Integer e;
  
  public l() {}
  
  public l(Long paramLong1, Long paramLong2, String paramString, Message.RecipientStatus paramRecipientStatus, Integer paramInteger)
  {
    this.a = paramLong1;
    this.b = paramLong2;
    this.c = paramString;
    this.d = paramRecipientStatus;
    this.e = paramInteger;
  }
  
  public Long a()
  {
    return this.a;
  }
  
  public void a(Message.RecipientStatus paramRecipientStatus)
  {
    this.d = paramRecipientStatus;
  }
  
  public void a(Integer paramInteger)
  {
    this.e = paramInteger;
  }
  
  public void a(Long paramLong)
  {
    this.a = paramLong;
  }
  
  public void a(String paramString)
  {
    this.c = paramString;
  }
  
  public Long b()
  {
    return this.b;
  }
  
  public void b(Long paramLong)
  {
    this.b = paramLong;
  }
  
  public String c()
  {
    return this.c;
  }
  
  public Message.RecipientStatus d()
  {
    return this.d;
  }
  
  public Integer e()
  {
    return this.e;
  }
  
  public String toString()
  {
    return "MessageRecipientImpl{mDatabaseId=" + this.a + ", mMessageDatabaseId=" + this.b + ", mUserId='" + this.c + '\'' + ", mRecipientStatus=" + this.d + ", mSeq=" + this.e + '}';
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkd/lsdka/l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */