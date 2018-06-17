package com.layer.atlas.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Paint;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.a;
import android.support.v7.widget.RecyclerView.x;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Space;
import android.widget.TextView;
import com.c.a.t;
import com.layer.atlas.AtlasAvatar;
import com.layer.atlas.b.c;
import com.layer.atlas.b.f;
import com.layer.atlas.b.g;
import com.layer.atlas.b.h;
import com.layer.atlas.b.i;
import com.layer.atlas.b.d;
import com.layer.sdk.LayerClient;
import com.layer.sdk.messaging.Identity;
import com.layer.sdk.messaging.Message;
import com.layer.sdk.query.ListViewController.PreProcessCallback;
import com.layer.sdk.query.RecyclerViewController;
import com.layer.sdk.query.RecyclerViewController.Callback;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class a
  extends RecyclerView.a<g>
  implements RecyclerViewController.Callback
{
  public static final int bnN = b.g.atlas_message_item_me;
  public static final int bnO = b.g.atlas_message_item_them;
  public RecyclerView YZ;
  protected final t bmA;
  protected final LayerClient bmU;
  protected final Set<com.layer.atlas.b.a> bnA = new LinkedHashSet();
  protected final Map<Integer, b> bnB = new HashMap();
  protected final Map<com.layer.atlas.b.a, Integer> bnC = new HashMap();
  protected final Map<com.layer.atlas.b.a, Integer> bnD = new HashMap();
  private final Map<Uri, d> bnE = new HashMap();
  private final java.text.DateFormat bnF;
  private final java.text.DateFormat bnG;
  public View bnH;
  public int bnI = 0;
  private Integer bnJ;
  public boolean bnK;
  public boolean bnL;
  public a bnM;
  public d bno;
  public final RecyclerViewController<Message> bnu;
  protected final Handler bnv;
  protected f bnw;
  protected final DisplayMetrics bnx;
  private final com.layer.atlas.util.a bny;
  protected int bnz = 0;
  protected final LayoutInflater mLayoutInflater;
  
  public a(Context paramContext, LayerClient paramLayerClient, t paramt)
  {
    this.bmU = paramLayerClient;
    this.bmA = paramt;
    this.mLayoutInflater = LayoutInflater.from(paramContext);
    this.bnv = new Handler(Looper.getMainLooper());
    this.bnF = android.text.format.DateFormat.getDateFormat(paramContext);
    this.bnG = android.text.format.DateFormat.getTimeFormat(paramContext);
    this.bnx = paramContext.getResources().getDisplayMetrics();
    this.bnK = true;
    this.bnL = false;
    this.bnu = paramLayerClient.newRecyclerViewController(null, null, this);
    this.bnu.setPreProcessCallback(new ListViewController.PreProcessCallback() {});
    setHasStableIds(false);
    this.bny = new com.layer.atlas.util.a(this);
    this.bmU.registerEventListener(this.bny);
  }
  
  private void a(c paramc, int paramInt, Message paramMessage)
  {
    if ((this.bnK) && (this.bnJ != null) && (this.bnJ.intValue() == paramInt))
    {
      paramMessage = paramMessage.getRecipientStatus();
      Iterator localIterator = paramMessage.entrySet().iterator();
      paramInt = 0;
      int i = 0;
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        if (!((Identity)localEntry.getKey()).equals(this.bmU.getAuthenticatedUser()))
        {
          switch (3.bnS[((com.layer.sdk.messaging.Message.RecipientStatus)localEntry.getValue()).ordinal()])
          {
          }
          for (;;)
          {
            break;
            i += 1;
            break;
            paramInt = 1;
          }
        }
      }
      if (i > 0)
      {
        paramc.bod.setVisibility(0);
        if (paramMessage.size() > 2)
        {
          paramMessage = paramc.bod.getResources().getQuantityString(b.h.atlas_message_item_read_muliple_participants, i, new Object[] { Integer.valueOf(i) });
          paramc.bod.setText(paramMessage);
          return;
        }
        paramc.bod.setText(b.i.atlas_message_item_read);
        return;
      }
      if (paramInt != 0)
      {
        paramc.bod.setVisibility(0);
        paramc.bod.setText(b.i.atlas_message_item_delivered);
        return;
      }
      paramc.bod.setVisibility(8);
      return;
    }
    paramc.bod.setVisibility(8);
  }
  
  private void a(final Message paramMessage, final int paramInt)
  {
    this.bnv.post(new Runnable()
    {
      public final void run()
      {
        a locala1 = a.this;
        a locala2 = a.this;
        Message localMessage = paramMessage;
        int i = paramInt;
        locala1.notifyItemChanged(Integer.valueOf(locala2.bnu.getPosition(localMessage, i)).intValue());
      }
    });
  }
  
  private static boolean a(Date paramDate1, Date paramDate2)
  {
    if (paramDate1 == null) {}
    do
    {
      return true;
      if (paramDate2 == null) {
        return false;
      }
    } while (paramDate2.getTime() - paramDate1.getTime() >= 3600000L);
    return false;
  }
  
  private Message dl(int paramInt)
  {
    if ((this.bnH != null) && (paramInt == this.bnI)) {
      return null;
    }
    return (Message)this.bnu.getItem(paramInt);
  }
  
  private void wk()
  {
    Integer localInteger = this.bnJ;
    this.bnJ = Integer.valueOf(this.bnu.getItemCount() - 1);
    if (localInteger != null) {
      notifyItemChanged(localInteger.intValue());
    }
  }
  
  public final a a(f paramf)
  {
    this.bnw = paramf;
    return this;
  }
  
  public final a a(com.layer.atlas.b.a... paramVarArgs)
  {
    int i = 0;
    while (i < 5)
    {
      com.layer.atlas.b.a locala = paramVarArgs[i];
      locala.a(this.bno);
      this.bnA.add(locala);
      this.bnz += 1;
      b localb = new b(true, locala);
      this.bnB.put(Integer.valueOf(this.bnz), localb);
      this.bnC.put(locala, Integer.valueOf(this.bnz));
      this.bnz += 1;
      localb = new b(false, locala);
      this.bnB.put(Integer.valueOf(this.bnz), localb);
      this.bnD.put(locala, Integer.valueOf(this.bnz));
      i += 1;
    }
    return this;
  }
  
  public final int getItemCount()
  {
    int j = this.bnu.getItemCount();
    if (this.bnH == null) {}
    for (int i = 0;; i = 1) {
      return i + j;
    }
  }
  
  public final int getItemViewType(int paramInt)
  {
    if ((this.bnH != null) && (paramInt == this.bnI)) {
      return 0;
    }
    Object localObject1 = dl(paramInt);
    Object localObject2 = this.bmU.getAuthenticatedUser();
    if ((localObject1 != null) && (localObject2 != null) && (localObject2.equals(((Message)localObject1).getSender())))
    {
      paramInt = 1;
      localObject2 = this.bnA.iterator();
    }
    while (((Iterator)localObject2).hasNext())
    {
      com.layer.atlas.b.a locala = (com.layer.atlas.b.a)((Iterator)localObject2).next();
      if (locala.a((Message)localObject1))
      {
        if (paramInt != 0) {}
        for (localObject1 = (Integer)this.bnC.get(locala);; localObject1 = (Integer)this.bnD.get(locala))
        {
          return ((Integer)localObject1).intValue();
          paramInt = 0;
          break;
        }
      }
    }
    return -1;
  }
  
  public final void onDestroy()
  {
    this.bmU.unregisterEventListener(this.bny);
  }
  
  public final void onQueryDataSetChanged(RecyclerViewController paramRecyclerViewController)
  {
    this.bnI = this.bnu.getItemCount();
    wk();
    notifyDataSetChanged();
  }
  
  public final void onQueryItemChanged(RecyclerViewController paramRecyclerViewController, int paramInt)
  {
    notifyItemChanged(paramInt);
  }
  
  public final void onQueryItemInserted(RecyclerViewController paramRecyclerViewController, int paramInt)
  {
    this.bnI += 1;
    wk();
    notifyItemInserted(paramInt);
    if ((this.bnw != null) && (paramInt + 1 == getItemCount()))
    {
      paramRecyclerViewController = this.bnw;
      dl(paramInt);
      paramRecyclerViewController.wh();
    }
  }
  
  public final void onQueryItemMoved(RecyclerViewController paramRecyclerViewController, int paramInt1, int paramInt2)
  {
    wk();
    notifyItemMoved(paramInt1, paramInt2);
  }
  
  public final void onQueryItemRangeChanged(RecyclerViewController paramRecyclerViewController, int paramInt1, int paramInt2)
  {
    notifyItemRangeChanged(paramInt1, paramInt2);
  }
  
  public final void onQueryItemRangeInserted(RecyclerViewController paramRecyclerViewController, int paramInt1, int paramInt2)
  {
    this.bnI += paramInt2;
    wk();
    notifyItemRangeInserted(paramInt1, paramInt2);
    paramInt1 += paramInt2;
    if ((this.bnw != null) && (paramInt1 + 1 == getItemCount()))
    {
      paramRecyclerViewController = this.bnw;
      dl(paramInt1);
      paramRecyclerViewController.wh();
    }
  }
  
  public final void onQueryItemRangeRemoved(RecyclerViewController paramRecyclerViewController, int paramInt1, int paramInt2)
  {
    this.bnI -= paramInt2;
    wk();
    notifyItemRangeRemoved(paramInt1, paramInt2);
  }
  
  public final void onQueryItemRemoved(RecyclerViewController paramRecyclerViewController, int paramInt)
  {
    this.bnI -= 1;
    wk();
    notifyItemRemoved(paramInt);
  }
  
  public final void refresh()
  {
    this.bnu.execute();
  }
  
  public final Set<com.layer.atlas.b.a> wj()
  {
    return this.bnA;
  }
  
  public static abstract interface a
  {
    public abstract void wl();
  }
  
  private static final class b
  {
    protected final boolean bnT;
    protected final com.layer.atlas.b.a bnU;
    
    public b(boolean paramBoolean, com.layer.atlas.b.a parama)
    {
      this.bnT = paramBoolean;
      this.bnU = parama;
    }
    
    public final boolean equals(Object paramObject)
    {
      boolean bool2 = false;
      boolean bool1;
      if (this == paramObject) {
        bool1 = true;
      }
      do
      {
        do
        {
          do
          {
            return bool1;
            bool1 = bool2;
          } while (paramObject == null);
          bool1 = bool2;
        } while (getClass() != paramObject.getClass());
        paramObject = (b)paramObject;
        bool1 = bool2;
      } while (this.bnT != ((b)paramObject).bnT);
      return this.bnU.equals(((b)paramObject).bnU);
    }
    
    public final int hashCode()
    {
      if (this.bnT) {}
      for (int i = 1;; i = 0) {
        return i * 31 + this.bnU.hashCode();
      }
    }
  }
  
  final class c
    extends a.g
    implements View.OnClickListener
  {
    protected Message bnV;
    protected final TextView bnW;
    protected final View bnX;
    protected final TextView bnY;
    protected final TextView bnZ;
    protected final Space boa;
    protected final AtlasAvatar bob;
    protected final ViewGroup boc;
    protected final TextView bod;
    protected com.layer.atlas.b.a.a boe;
    protected com.layer.atlas.b.a.b bof;
    
    public c(View paramView, t paramt)
    {
      super();
      this.bnW = ((TextView)paramView.findViewById(b.f.sender));
      this.bnX = paramView.findViewById(b.f.time_group);
      this.bnY = ((TextView)paramView.findViewById(b.f.time_group_day));
      this.bnZ = ((TextView)paramView.findViewById(b.f.time_group_time));
      this.boa = ((Space)paramView.findViewById(b.f.cluster_space));
      this.boc = ((ViewGroup)paramView.findViewById(b.f.cell));
      this.bod = ((TextView)paramView.findViewById(b.f.receipt));
      this.bob = ((AtlasAvatar)paramView.findViewById(b.f.avatar));
      if (this.bob != null)
      {
        this$1 = this.bob;
        a.this.bmA = paramt;
        a.this.bmx.setAntiAlias(true);
        a.this.bmx.setSubpixelText(true);
        a.this.bmy.setAntiAlias(true);
        a.this.bmz.setAntiAlias(true);
        a.this.bmz.setColor(a.this.getResources().getColor(b.c.atlas_avatar_background));
        a.this.bmy.setColor(a.this.getResources().getColor(b.c.atlas_avatar_border));
        a.this.bmx.setColor(a.this.getResources().getColor(b.c.atlas_avatar_text));
        this.bob.setOnClickListener(this);
      }
    }
    
    public final void onClick(View paramView)
    {
      if ((paramView.getId() == b.f.avatar) && (a.this.bnM != null)) {
        a.this.bnM.wl();
      }
    }
  }
  
  private static final class d
  {
    public boolean bog;
    public int boh;
    public boolean boi;
    public int boj;
  }
  
  private static enum e
  {
    public static final int bok = 1;
    public static final int bol = 2;
    public static final int bom = 3;
    public static final int bon = 4;
    
    public static int a(Message paramMessage1, Message paramMessage2)
    {
      if (!paramMessage1.getSender().equals(paramMessage2.getSender())) {
        return bok;
      }
      paramMessage1 = paramMessage1.getReceivedAt();
      paramMessage2 = paramMessage2.getReceivedAt();
      if ((paramMessage1 == null) || (paramMessage2 == null)) {
        return bol;
      }
      long l = Math.abs(paramMessage2.getTime() - paramMessage1.getTime());
      if (l <= 60000L) {
        return bol;
      }
      if (l <= 3600000L) {
        return bom;
      }
      return bon;
    }
  }
  
  public static abstract interface f
  {
    public abstract void wh();
  }
  
  static class g
    extends RecyclerView.x
  {
    public static final int bop = b.g.atlas_message_item_footer;
    protected final ViewGroup boq;
    
    public g(View paramView)
    {
      super();
      this.boq = ((ViewGroup)paramView.findViewById(b.f.swipeable));
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/atlas/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */