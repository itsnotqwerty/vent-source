package io.intercom.android.sdk.models;

public class LinkResponse
  extends BaseResponse
{
  private final Link link;
  
  LinkResponse(Builder paramBuilder)
  {
    super(paramBuilder);
    if (paramBuilder.article == null) {}
    for (paramBuilder = new Link.Builder().build();; paramBuilder = paramBuilder.article.build())
    {
      this.link = paramBuilder;
      return;
    }
  }
  
  public Link getLink()
  {
    return this.link;
  }
  
  public static final class Builder
    extends BaseResponse.Builder
  {
    Link.Builder article;
    
    public final LinkResponse build()
    {
      return new LinkResponse(this);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/LinkResponse.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */