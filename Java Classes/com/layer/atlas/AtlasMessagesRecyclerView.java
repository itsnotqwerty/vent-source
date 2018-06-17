package com.layer.atlas;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.a;
import android.support.v7.widget.RecyclerView.n;
import android.util.AttributeSet;
import android.view.View;
import com.c.a.t;
import com.layer.atlas.a.a.f;
import com.layer.atlas.b.d;
import com.layer.atlas.b.d.a;
import com.layer.sdk.LayerClient;
import java.util.Iterator;
import java.util.Set;

public final class AtlasMessagesRecyclerView
  extends RecyclerView
{
  public com.layer.atlas.a.a bnm;
  private LinearLayoutManager bnn;
  private d bno;
  
  public AtlasMessagesRecyclerView(Context paramContext)
  {
    super(paramContext);
  }
  
  public AtlasMessagesRecyclerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public AtlasMessagesRecyclerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    Context localContext = getContext();
    paramAttributeSet = localContext.getTheme().obtainStyledAttributes(paramAttributeSet, b.j.AtlasMessagesRecyclerView, b.b.AtlasMessagesRecyclerView, paramInt);
    d.a locala = new d.a();
    locala.myTextColor = paramAttributeSet.getColor(b.j.AtlasMessagesRecyclerView_myTextColor, localContext.getResources().getColor(b.c.atlas_text_black));
    paramInt = paramAttributeSet.getInt(b.j.AtlasMessagesRecyclerView_myTextStyle, 0);
    locala.myTextStyle = paramInt;
    paramContext = paramAttributeSet.getString(b.j.AtlasMessagesRecyclerView_myTextTypeface);
    if (paramContext != null) {}
    for (paramContext = Typeface.create(paramContext, paramInt);; paramContext = null)
    {
      locala.boH = paramContext;
      locala.boG = paramAttributeSet.getDimensionPixelSize(b.j.AtlasMessagesRecyclerView_myTextSize, localContext.getResources().getDimensionPixelSize(b.d.atlas_text_size_message_item));
      locala.boJ = paramAttributeSet.getColor(b.j.AtlasMessagesRecyclerView_theirTextColor, localContext.getResources().getColor(b.c.atlas_color_primary_blue));
      paramInt = paramAttributeSet.getInt(b.j.AtlasMessagesRecyclerView_theirTextStyle, 0);
      locala.boK = paramInt;
      String str = paramAttributeSet.getString(b.j.AtlasMessagesRecyclerView_theirTextTypeface);
      paramContext = (Context)localObject;
      if (str != null) {
        paramContext = Typeface.create(str, paramInt);
      }
      locala.boM = paramContext;
      locala.boL = paramAttributeSet.getDimensionPixelSize(b.j.AtlasMessagesRecyclerView_theirTextSize, localContext.getResources().getDimensionPixelSize(b.d.atlas_text_size_message_item));
      locala.myBubbleColor = paramAttributeSet.getColor(b.j.AtlasMessagesRecyclerView_myBubbleColor, localContext.getResources().getColor(b.c.atlas_color_primary_blue));
      locala.boI = paramAttributeSet.getColor(b.j.AtlasMessagesRecyclerView_theirBubbleColor, localContext.getResources().getColor(b.c.atlas_color_primary_gray));
      paramAttributeSet.recycle();
      this.bno = new d(locala, (byte)0);
      return;
    }
  }
  
  public final AtlasMessagesRecyclerView a(LayerClient paramLayerClient, t paramt)
  {
    this.bnn = new LinearLayoutManager(getContext(), 1, false);
    this.bnn.W(true);
    setLayoutManager(this.bnn);
    paramLayerClient = new com.layer.atlas.a.a(getContext(), paramLayerClient, paramt);
    paramLayerClient.YZ = this;
    this.bnm = paramLayerClient.a(new a.f()
    {
      public final void wh()
      {
        AtlasMessagesRecyclerView.this.wg();
      }
    });
    this.bnm.bno = this.bno;
    super.setAdapter(this.bnm);
    setItemAnimator(new com.layer.atlas.util.a.a());
    a(new RecyclerView.n()
    {
      public final void onScrollStateChanged(RecyclerView paramAnonymousRecyclerView, int paramAnonymousInt)
      {
        paramAnonymousRecyclerView = AtlasMessagesRecyclerView.this.bnm.wj().iterator();
        while (paramAnonymousRecyclerView.hasNext()) {
          ((com.layer.atlas.b.a)paramAnonymousRecyclerView.next()).bJ(paramAnonymousInt);
        }
      }
    });
    return this;
  }
  
  public final View getFooterView()
  {
    return this.bnm.bnH;
  }
  
  protected final void onVisibilityChanged(View paramView, int paramInt)
  {
    super.onVisibilityChanged(paramView, paramInt);
    if (paramInt != 0) {}
    while (this.bnm == null) {
      return;
    }
    this.bnm.refresh();
  }
  
  public final void setAdapter(RecyclerView.a parama)
  {
    throw new RuntimeException("AtlasMessagesRecyclerView sets its own Adapter");
  }
  
  public final void wg()
  {
    int i = this.bnm.getItemCount() - 1;
    if (i <= 0) {}
    while (this.bnn.hs() < i - 3) {
      return;
    }
    bA(i);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/atlas/AtlasMessagesRecyclerView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */