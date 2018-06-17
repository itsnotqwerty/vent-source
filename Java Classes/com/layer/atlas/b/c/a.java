package com.layer.atlas.b.c;

import android.app.Activity;
import android.app.ActivityOptions;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build.VERSION;
import android.support.v4.widget.ContentLoadingProgressBar;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.c.a.ae;
import com.c.a.e;
import com.c.a.t;
import com.c.a.w.a;
import com.c.a.x;
import com.layer.atlas.b.d;
import com.layer.atlas.b.e;
import com.layer.atlas.b.f;
import com.layer.atlas.b.i;
import com.layer.atlas.b.a.c;
import com.layer.atlas.util.imagepopup.AtlasImagePopupActivity;
import com.layer.sdk.LayerClient;
import com.layer.sdk.messaging.Message;
import com.layer.sdk.messaging.MessagePart;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;

public class a
  extends com.layer.atlas.b.a<a, b>
  implements View.OnClickListener
{
  private static final String boP = a.class.getSimpleName();
  private static final int boQ = b.e.atlas_message_item_cell_placeholder;
  private final t bmA;
  private final LayerClient bmU;
  private final ae boS;
  private final WeakReference<Activity> bpa;
  
  public a(Activity paramActivity, LayerClient paramLayerClient, t paramt)
  {
    this.bpa = new WeakReference(paramActivity);
    this.bmU = paramLayerClient;
    this.bmA = paramt;
    this.boS = new com.layer.atlas.util.b.b.a(paramActivity.getResources().getDimension(b.d.atlas_message_item_cell_radius));
  }
  
  public static String at(Context paramContext)
  {
    return paramContext.getString(b.i.atlas_message_preview_image);
  }
  
  public static boolean d(Message paramMessage)
  {
    if (paramMessage == null) {
      return false;
    }
    paramMessage = paramMessage.getMessageParts().iterator();
    while (paramMessage.hasNext()) {
      if (((MessagePart)paramMessage.next()).getMimeType().startsWith("image/")) {
        return true;
      }
    }
    return false;
  }
  
  public void a(final a parama, b paramb, Message paramMessage, com.layer.atlas.b.a.b paramb1)
  {
    parama.boV.setTag(paramb);
    parama.boV.setOnClickListener(this);
    parama.boW.show();
    paramb = this.bmA.k(paramb.bpd).al(boP).ee(boQ);
    paramMessage = paramb.bOR;
    if (paramMessage.bOI) {
      throw new IllegalStateException("Center inside can not be used after calling centerCrop");
    }
    paramMessage.bOJ = true;
    paramb = paramb.aE(paramb1.maxWidth, paramb1.maxHeight);
    paramMessage = paramb.bOR;
    if ((paramMessage.bOH == 0) && (paramMessage.bOG == 0)) {
      throw new IllegalStateException("onlyScaleDown can not be applied without resize");
    }
    paramMessage.bOK = true;
    paramb.a(this.boS).a(parama.boV, new e()
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
    AtlasImagePopupActivity.b(this.bmU);
    Activity localActivity = (Activity)this.bpa.get();
    if (localActivity == null) {
      return;
    }
    Intent localIntent = new Intent(localActivity, AtlasImagePopupActivity.class);
    localIntent.putExtra("fullId", ((b)paramView.getTag()).bpd);
    if (Build.VERSION.SDK_INT >= 21)
    {
      localActivity.startActivity(localIntent, ActivityOptions.makeSceneTransitionAnimation(localActivity, paramView, "image").toBundle());
      return;
    }
    localActivity.startActivity(localIntent);
  }
  
  public static final class a
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
  
  public static final class b
    implements a.c
  {
    public final Uri bpd;
    
    public b(Uri paramUri)
    {
      this.bpd = paramUri;
    }
    
    public final int wm()
    {
      return this.bpd.toString().getBytes().length;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/atlas/b/c/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */