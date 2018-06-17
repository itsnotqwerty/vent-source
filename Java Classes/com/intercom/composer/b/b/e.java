package com.intercom.composer.b.b;

import android.support.v4.app.n;
import android.support.v7.widget.RecyclerView.a;
import android.support.v7.widget.RecyclerView.x;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.intercom.composer.g.f;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

public final class e
  extends RecyclerView.a<RecyclerView.x>
{
  public final f blD;
  private final LayoutInflater blE;
  public com.intercom.composer.b.b blF;
  private final b blG;
  public final n blH;
  private final HashSet<String> blI = new HashSet();
  public List<com.intercom.composer.b.b> inputs = new ArrayList();
  
  public e(LayoutInflater paramLayoutInflater, List<com.intercom.composer.b.b> paramList, f paramf, b paramb, n paramn)
  {
    this.inputs = paramList;
    this.blD = paramf;
    this.blE = paramLayoutInflater;
    this.blG = paramb;
    this.blH = paramn;
  }
  
  public final int getItemCount()
  {
    return this.inputs.size();
  }
  
  public final int getItemViewType(int paramInt)
  {
    com.intercom.composer.b.b localb = (com.intercom.composer.b.b)this.inputs.get(paramInt);
    if (((localb instanceof com.intercom.composer.b.a.b)) || (this.blI.contains(localb.getUniqueIdentifier()))) {
      return 2;
    }
    return 1;
  }
  
  public final void onBindViewHolder(RecyclerView.x paramx, int paramInt)
  {
    com.intercom.composer.b.b localb = (com.intercom.composer.b.b)this.inputs.get(paramInt);
    if ((paramx instanceof d))
    {
      paramx = (d)paramx;
      if ((this.blF == null) || (!localb.getUniqueIdentifier().equals(this.blF.getUniqueIdentifier()))) {
        break label82;
      }
    }
    label82:
    for (boolean bool = true;; bool = false)
    {
      paramx.blB.setImageDrawable(localb.getIconDrawable(paramx.blB.getContext()));
      paramx.blB.setSelected(bool);
      return;
    }
  }
  
  public final RecyclerView.x onCreateViewHolder(ViewGroup paramViewGroup, int paramInt)
  {
    if (paramInt == 2) {
      return new a(this.blE.inflate(g.f.intercom_composer_empty_view_layout, paramViewGroup, false));
    }
    return new d(this.blE.inflate(g.f.intercom_composer_input_icon_view_layout, paramViewGroup, false), this.blG);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/intercom/composer/b/b/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */