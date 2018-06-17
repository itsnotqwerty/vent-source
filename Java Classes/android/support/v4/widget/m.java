package android.support.v4.widget;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public abstract class m
  extends f
{
  private int JP;
  private int JQ;
  private LayoutInflater JR;
  
  @Deprecated
  public m(Context paramContext, int paramInt)
  {
    super(paramContext);
    this.JQ = paramInt;
    this.JP = paramInt;
    this.JR = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
  }
  
  public final View newDropDownView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    return this.JR.inflate(this.JQ, paramViewGroup, false);
  }
  
  public View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    return this.JR.inflate(this.JP, paramViewGroup, false);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/widget/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */