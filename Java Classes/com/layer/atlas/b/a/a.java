package com.layer.atlas.b.a;

import android.view.View;
import android.widget.TextView;
import com.layer.atlas.b.f;
import com.layer.atlas.b.a.c;
import com.layer.sdk.messaging.Message;

public class a
  extends com.layer.atlas.b.a<a, b>
{
  public void a(a parama, b paramb, Message paramMessage, com.layer.atlas.b.a.b paramb1)
  {
    parama.pg.setText(paramb.toString());
  }
  
  public final boolean a(Message paramMessage)
  {
    return true;
  }
  
  public final class a
    extends com.layer.atlas.b.a.a
  {
    public final TextView pg;
    
    public a(View paramView)
    {
      this.pg = ((TextView)paramView.findViewById(b.f.cell_text));
    }
  }
  
  public static final class b
    implements a.c
  {
    private final int ai;
    private final String boO;
    
    public b(String paramString)
    {
      this.boO = paramString;
      this.ai = this.boO.getBytes().length;
    }
    
    public final String toString()
    {
      return this.boO;
    }
    
    public final int wm()
    {
      return this.ai;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/atlas/b/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */