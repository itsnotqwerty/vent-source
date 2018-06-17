package com.layer.atlas.util.b.a;

import android.net.Uri;
import com.c.a.t.d;
import com.c.a.w;
import com.c.a.y;
import com.c.a.y.a;
import com.layer.atlas.util.c;
import com.layer.sdk.LayerClient;
import com.layer.sdk.messaging.MessagePart;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.TimeUnit;

public final class a
  extends y
{
  private final LayerClient bmU;
  
  public a(LayerClient paramLayerClient)
  {
    this.bmU = paramLayerClient;
  }
  
  public final y.a a(w paramw, int paramInt)
    throws IOException
  {
    paramw = this.bmU.get(paramw.uri);
    if (!(paramw instanceof MessagePart)) {
      return null;
    }
    paramw = (MessagePart)paramw;
    if (paramw.isContentReady()) {
      return new y.a(paramw.getDataStream(), t.d.bOo);
    }
    if (!c.a(paramw, TimeUnit.MINUTES)) {
      return null;
    }
    return new y.a(paramw.getDataStream(), t.d.bOp);
  }
  
  public final boolean a(w paramw)
  {
    paramw = paramw.uri;
    if (!"layer".equals(paramw.getScheme())) {
      return false;
    }
    paramw = paramw.getPathSegments();
    if (paramw.size() != 4) {
      return false;
    }
    return ((String)paramw.get(2)).equals("parts");
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/atlas/util/b/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */