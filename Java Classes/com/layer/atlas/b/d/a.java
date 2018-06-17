package com.layer.atlas.b.d;

import android.view.View;
import android.view.View.OnLongClickListener;
import android.widget.TextView;
import android.widget.Toast;
import com.layer.atlas.b.f;
import com.layer.atlas.b.i;
import com.layer.atlas.b.a.c;
import com.layer.atlas.util.c;
import com.layer.sdk.messaging.Message;
import com.layer.sdk.messaging.MessagePart;
import java.util.List;

public class a
  extends com.layer.atlas.b.a<a, b>
  implements View.OnLongClickListener
{
  public static boolean d(Message paramMessage)
  {
    if (paramMessage == null) {
      return false;
    }
    return ((MessagePart)paramMessage.getMessageParts().get(0)).getMimeType().equals("text/plain");
  }
  
  public static String f(Message paramMessage)
  {
    paramMessage = (MessagePart)paramMessage.getMessageParts().get(0);
    if (paramMessage.isContentReady()) {
      return new String(paramMessage.getData());
    }
    return "";
  }
  
  public void a(a parama, b paramb)
  {
    parama.pg.setText(paramb.boO);
    parama.pg.setTag(paramb);
    parama.pg.setOnLongClickListener(this);
  }
  
  public final boolean a(Message paramMessage)
  {
    return d(paramMessage);
  }
  
  public boolean onLongClick(View paramView)
  {
    Object localObject = (b)paramView.getTag();
    localObject = ((b)localObject).bpe + ((b)localObject).boO;
    c.c(paramView.getContext(), b.i.atlas_text_cell_factory_clipboard_description, (String)localObject);
    Toast.makeText(paramView.getContext(), b.i.atlas_text_cell_factory_copied_to_clipboard, 0).show();
    return true;
  }
  
  public static final class a
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
    public final String boO;
    final String bpe;
    
    public b(String paramString1, String paramString2)
    {
      this.boO = paramString1;
      this.bpe = paramString2;
      this.ai = (this.boO.getBytes().length + this.bpe.getBytes().length);
    }
    
    public final int wm()
    {
      return this.ai;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/atlas/b/d/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */