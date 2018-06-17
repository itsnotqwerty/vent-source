package com.layer.sdk.query;

import android.net.Uri;

public abstract interface Queryable
{
  public static final int BY_EQUALITY = 1;
  public static final int BY_INCLUSION = 2;
  public static final int BY_PATTERN = 8;
  public static final int BY_RELATIVE = 4;
  
  public abstract Uri getId();
  
  public static abstract interface Property
  {
    public abstract boolean isEqualityQueryable();
    
    public abstract boolean isInclusionQueryable();
    
    public abstract boolean isPatternQueryable();
    
    public abstract boolean isRelativeQueryable();
    
    public abstract boolean isSortable();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/query/Queryable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */