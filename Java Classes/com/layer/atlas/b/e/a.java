package com.layer.atlas.b.e;

import android.app.Activity;
import android.app.ActivityOptions;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.widget.ContentLoadingProgressBar;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup.LayoutParams;
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
import com.layer.atlas.util.c;
import com.layer.atlas.util.imagepopup.AtlasImagePopupActivity;
import com.layer.sdk.LayerClient;
import com.layer.sdk.messaging.Message;
import com.layer.sdk.messaging.MessagePart;
import java.lang.ref.WeakReference;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

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
    paramMessage = paramMessage.getMessageParts();
    return (paramMessage.size() == 3) && (((MessagePart)paramMessage.get(0)).getMimeType().startsWith("image/")) && (((MessagePart)paramMessage.get(1)).getMimeType().equals("image/jpeg+preview")) && (((MessagePart)paramMessage.get(2)).getMimeType().equals("application/json+imageSize"));
  }
  
  private static b g(Message paramMessage)
  {
    try
    {
      b localb = new b();
      JSONObject localJSONObject = new JSONObject(new String(b.h(paramMessage).getData()));
      localb.orientation = localJSONObject.getInt("orientation");
      localb.width = localJSONObject.getInt("width");
      localb.height = localJSONObject.getInt("height");
      localb.bpj = b.i(paramMessage).getId();
      localb.bpi = b.j(paramMessage).getId();
      return localb;
    }
    catch (JSONException paramMessage)
    {
      if (com.layer.atlas.util.b.dm(6)) {
        com.layer.atlas.util.b.e(paramMessage.getMessage(), paramMessage);
      }
    }
    return null;
  }
  
  public void a(final a parama, b paramb, final Message paramMessage, com.layer.atlas.b.a.b paramb1)
  {
    parama.boV.setTag(paramb);
    parama.boV.setOnClickListener(this);
    Object localObject = b.i(paramMessage);
    paramb1 = c.i(paramb.width, paramb.height, paramb1.maxWidth, paramb1.maxHeight);
    ViewGroup.LayoutParams localLayoutParams = parama.boV.getLayoutParams();
    localLayoutParams.width = paramb1[0];
    localLayoutParams.height = paramb1[1];
    parama.boW.show();
    localObject = this.bmA.k(((MessagePart)localObject).getId()).al(boP).ee(boQ);
    switch (paramb.orientation)
    {
    default: 
      ((x)localObject).aE(paramb1[1], paramb1[0]).B(90.0F);
    }
    for (;;)
    {
      ((x)localObject).a(this.boS).a(parama.boV, new e()
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
      parama.boV.setOnLongClickListener(new View.OnLongClickListener()
      {
        public final boolean onLongClick(View paramAnonymousView)
        {
          paramAnonymousView = b.j(paramMessage);
          MessagePart localMessagePart1 = b.i(paramMessage);
          MessagePart localMessagePart2 = b.h(paramMessage);
          BitmapFactory.Options localOptions = new BitmapFactory.Options();
          localOptions.inJustDecodeBounds = true;
          BitmapFactory.decodeStream(paramAnonymousView.getDataStream(), null, localOptions);
          com.layer.atlas.util.b.du("Full size: " + localOptions.outWidth + "x" + localOptions.outHeight);
          BitmapFactory.decodeStream(localMessagePart1.getDataStream(), null, localOptions);
          com.layer.atlas.util.b.du("Preview size: " + localOptions.outWidth + "x" + localOptions.outHeight);
          com.layer.atlas.util.b.du("Info: " + new String(localMessagePart2.getData()));
          return false;
        }
      });
      return;
      ((x)localObject).aE(paramb1[0], paramb1[1]);
      continue;
      ((x)localObject).aE(paramb1[1], paramb1[0]).B(-90.0F);
      continue;
      ((x)localObject).aE(paramb1[0], paramb1[1]).B(180.0F);
    }
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
    b localb = (b)paramView.getTag();
    Intent localIntent = new Intent(localActivity, AtlasImagePopupActivity.class);
    localIntent.putExtra("previewId", localb.bpj);
    localIntent.putExtra("fullId", localb.bpi);
    localIntent.putExtra("info", localb);
    if (Build.VERSION.SDK_INT >= 21)
    {
      localActivity.startActivity(localIntent, ActivityOptions.makeSceneTransitionAnimation(localActivity, paramView, "image").toBundle());
      return;
    }
    localActivity.startActivity(localIntent);
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
  
  public static final class b
    implements Parcelable, a.c
  {
    public static final Parcelable.Creator<b> CREATOR = new Parcelable.Creator() {};
    public Uri bpi;
    public Uri bpj;
    public int height;
    public int orientation;
    public int width;
    
    public final int describeContents()
    {
      return 0;
    }
    
    public final int wm()
    {
      return this.bpi.toString().getBytes().length + 12 + this.bpj.toString().getBytes().length;
    }
    
    public final void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeInt(this.orientation);
      paramParcel.writeInt(this.width);
      paramParcel.writeInt(this.height);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/atlas/b/e/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */