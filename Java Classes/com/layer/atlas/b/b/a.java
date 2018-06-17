package com.layer.atlas.b.b;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.support.v4.widget.ContentLoadingProgressBar;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.c.a.ae;
import com.c.a.e;
import com.c.a.t;
import com.c.a.x;
import com.layer.atlas.b.d;
import com.layer.atlas.b.e;
import com.layer.atlas.b.f;
import com.layer.atlas.b.i;
import com.layer.atlas.b.a.c;
import com.layer.atlas.util.b;
import com.layer.atlas.util.c;
import com.layer.sdk.messaging.Message;
import com.layer.sdk.messaging.MessagePart;
import java.net.URLEncoder;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class a
  extends com.layer.atlas.b.a<a, b>
  implements View.OnClickListener
{
  private static final String boP = a.class.getSimpleName();
  private static final int boQ = b.e.atlas_message_item_cell_placeholder;
  private static final double boR = (1.0D + Math.sqrt(5.0D)) / 2.0D;
  private final t bmA;
  private final ae boS;
  
  public a(Context paramContext, t paramt)
  {
    this.bmA = paramt;
    this.boS = new com.layer.atlas.util.b.b.a(paramContext.getResources().getDimension(b.d.atlas_message_item_cell_radius));
  }
  
  public static String at(Context paramContext)
  {
    return paramContext.getString(b.i.atlas_message_preview_location);
  }
  
  public static boolean d(Message paramMessage)
  {
    if (paramMessage == null) {
      return false;
    }
    return ((MessagePart)paramMessage.getMessageParts().get(0)).getMimeType().equals("location/coordinate");
  }
  
  private static b e(Message paramMessage)
  {
    try
    {
      paramMessage = new JSONObject(new String(((MessagePart)paramMessage.getMessageParts().get(0)).getData()));
      b localb = new b();
      localb.boX = paramMessage.optDouble("lat", 0.0D);
      localb.boY = paramMessage.optDouble("lon", 0.0D);
      localb.boZ = paramMessage.optString("label", null);
      return localb;
    }
    catch (JSONException paramMessage)
    {
      if (b.dm(6)) {
        b.e(paramMessage.getMessage(), paramMessage);
      }
    }
    return null;
  }
  
  public void a(final a parama, b paramb, Message paramMessage, com.layer.atlas.b.a.b paramb1)
  {
    parama.boV.setTag(paramb);
    parama.boV.setOnClickListener(this);
    int i = Math.min(640, paramb1.maxWidth);
    int j = (int)Math.round(i / boR);
    paramMessage = c.i(paramb1.maxWidth, (int)Math.round(paramb1.maxWidth / boR), paramb1.maxWidth, paramb1.maxHeight);
    paramb1 = parama.boV.getLayoutParams();
    paramb1.width = paramMessage[0];
    paramb1.height = paramMessage[1];
    parama.boW.show();
    this.bmA.dO("https://maps.googleapis.com/maps/api/staticmap?zoom=16&maptype=roadmap&scale=2&center=" + paramb.boX + "," + paramb.boY + "&markers=color:red%7C" + paramb.boX + "," + paramb.boY + "&size=" + i + "x" + j).al(boP).ee(boQ).aE(paramMessage[0], paramMessage[1]).a(this.boS).a(parama.boV, new e()
    {
      public final void onError()
      {
        parama.boW.hide();
      }
      
      public final void onSuccess()
      {
        parama.boW.hide();
      }
    });
  }
  
  public final boolean a(Message paramMessage)
  {
    return d(paramMessage);
  }
  
  public final void bJ(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 1: 
      this.bmA.ai(boP);
      return;
    }
    this.bmA.aj(boP);
  }
  
  public void onClick(View paramView)
  {
    b localb = (b)paramView.getTag();
    if (localb.boZ == null) {}
    for (Object localObject = URLEncoder.encode("Shared Marker");; localObject = URLEncoder.encode(localb.boZ))
    {
      localObject = new Intent("android.intent.action.VIEW", Uri.parse("geo:0,0?q=" + localb.boX + "," + localb.boY + "(" + (String)localObject + ")&z=16"));
      paramView.getContext().startActivity((Intent)localObject);
      return;
    }
  }
  
  protected static final class a
    extends com.layer.atlas.b.a.a
  {
    public final ImageView boV;
    final ContentLoadingProgressBar boW;
    
    public a(View paramView)
    {
      this.boV = ((ImageView)paramView.findViewById(b.f.cell_image));
      this.boW = ((ContentLoadingProgressBar)paramView.findViewById(b.f.cell_progress));
    }
  }
  
  protected static final class b
    implements a.c
  {
    double boX;
    double boY;
    String boZ;
    
    public final int wm()
    {
      if (this.boZ == null) {}
      for (int i = 0;; i = this.boZ.getBytes().length) {
        return i + 16;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/atlas/b/b/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */