package io.intercom.android.sdk.models;

import io.intercom.android.sdk.blocks.models.Block;
import java.util.List;

public class GifResponse
{
  private final List<Block> results;
  
  GifResponse(List<Block> paramList)
  {
    this.results = paramList;
  }
  
  public List<Block> results()
  {
    return this.results;
  }
  
  public static final class Builder
  {
    List<Block> results;
    
    public final GifResponse build()
    {
      return new GifResponse(this.results);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/GifResponse.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */