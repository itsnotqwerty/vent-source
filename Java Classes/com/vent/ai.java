package com.vent;

import android.graphics.Canvas;
import android.os.Bundle;
import android.os.Handler;
import android.support.design.widget.FloatingActionButton;
import android.support.v4.app.j;
import android.support.v4.widget.n;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.x;
import android.support.v7.widget.a.a.a;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.vent.a.y;
import com.vent.d.c;
import com.vent.d.e;
import java.util.ArrayList;

public final class ai
  extends am<f, com.vent.a.f>
{
  android.support.v7.widget.a.a cdV;
  RecyclerView cdW;
  private ba.a cek;
  ba cel;
  
  final void BZ()
  {
    this.handler.post(new Runnable()
    {
      public final void run()
      {
        int i = 0;
        if ((ai.this.ceE == null) || (((f)ai.this.ceE).cbb == null)) {}
        ba localba;
        boolean bool;
        do
        {
          return;
          localba = ai.this.Bc();
          if (((f)ai.this.ceE).cbb != null)
          {
            localObject = ((f)ai.this.ceE).cbb;
            if ((localba == null) || ((localba.state >= 6) && (!localba.chc) && ((!localba.chf) || (((f)ai.this.ceE).bZH)))) {
              break;
            }
            bool = true;
            ((n)localObject).setRefreshing(bool);
          }
        } while (((f)ai.this.ceE).cba == null);
        Object localObject = ((f)ai.this.ceE).cba;
        if ((localba != null) && (localba.state == 6) && (!localba.chc) && (!localba.chf) && (bb.EI() == 0) && (!((f)ai.this.ceE).bZH)) {}
        for (;;)
        {
          ((View)localObject).setVisibility(i);
          return;
          bool = false;
          break;
          i = 8;
        }
      }
    });
  }
  
  final ba Bc()
  {
    j localj = getActivity();
    if ((localj instanceof a)) {
      return ((a)localj).Bc();
    }
    return null;
  }
  
  public final void Dt()
  {
    if (this.cel == null)
    {
      ??? = Bc();
      if (??? != null)
      {
        this.cel = ((ba)???);
        synchronized (this.cel.chh)
        {
          this.cel.chh.add(this.cek);
          return;
        }
      }
    }
  }
  
  public final void Du()
  {
    if (((bb.ccH == null) || (bb.ciM == 0L)) && (c.bE(getActivity()))) {
      f(true, false);
    }
  }
  
  public final void f(boolean paramBoolean1, boolean paramBoolean2)
  {
    ba localba = Bc();
    if (localba != null) {
      localba.bv(getContext());
    }
  }
  
  public final void invalidate()
  {
    if (Bc() != null) {
      ba.invalidate();
    }
  }
  
  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.ceE = new f((a)getActivity(), this)
    {
      final void CE()
      {
        ba localba = Bc();
        if (localba != null) {
          localba.g(ai.this.getActivity(), false);
        }
      }
    };
    this.cek = new ba.a()
    {
      public final void BX()
      {
        ((f)ai.this.ceE).notifyDataSetChanged();
        ai.this.Du();
        ai.this.BZ();
      }
      
      public final void BY() {}
      
      public final void BZ()
      {
        ai.this.BZ();
      }
      
      public final void Ca()
      {
        ai.this.BZ();
      }
      
      public final void aZ(boolean paramAnonymousBoolean)
      {
        ((f)ai.this.ceE).bb(paramAnonymousBoolean);
      }
      
      public final void done()
      {
        ai.this.unregister();
        ai.this.BZ();
      }
      
      public final void en(int paramAnonymousInt)
      {
        paramAnonymousInt += ((f)ai.this.ceE).CL();
        int i = ((f)ai.this.ceE).getItemCount();
        if (paramAnonymousInt < i)
        {
          i = Math.min(i - paramAnonymousInt, 1);
          if (i > 0) {
            ((f)ai.this.ceE).notifyItemRangeRemoved(paramAnonymousInt, i);
          }
        }
      }
      
      public final void eo(int paramAnonymousInt)
      {
        paramAnonymousInt += ((f)ai.this.ceE).CL();
        int i = ((f)ai.this.ceE).getItemCount();
        if (paramAnonymousInt < i)
        {
          i = Math.min(i - paramAnonymousInt, 1);
          if (i > 0)
          {
            ((f)ai.this.ceE).notifyItemRangeChanged(paramAnonymousInt, i);
            if ((ai.this.recyclerView != null) && (paramAnonymousInt == 0)) {
              ai.this.recyclerView.bA(paramAnonymousInt);
            }
          }
        }
      }
      
      public final void notifyDataSetChanged()
      {
        ((f)ai.this.ceE).notifyDataSetChanged();
      }
    };
    Dt();
  }
  
  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2131427432, paramViewGroup, false);
    if ((getActivity() instanceof ActMain)) {
      paramLayoutInflater.setBackgroundResource(2131099769);
    }
    if (this.ceE != null)
    {
      ((f)this.ceE).cbb = ((n)paramLayoutInflater.findViewById(2131296925));
      ((f)this.ceE).cbb.setOnRefreshListener(this);
      ((f)this.ceE).cba = paramLayoutInflater.findViewById(16908292);
    }
    this.recyclerView = ((RecyclerView)paramLayoutInflater.findViewById(16908298));
    this.recyclerView.setDescendantFocusability(393216);
    this.recyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));
    this.recyclerView.a(new com.vent.views.a(getActivity()));
    this.cdW = new RecyclerView(getActivity());
    this.cdV = new android.support.v7.widget.a.a(new a.a()
    {
      public final void a(Canvas paramAnonymousCanvas, RecyclerView paramAnonymousRecyclerView, RecyclerView.x paramAnonymousx, float paramAnonymousFloat1, float paramAnonymousFloat2, int paramAnonymousInt, boolean paramAnonymousBoolean) {}
      
      public final void d(RecyclerView.x paramAnonymousx, int paramAnonymousInt)
      {
        int j = 0;
        int i;
        if ((paramAnonymousx instanceof f.a))
        {
          paramAnonymousx = (f.a)paramAnonymousx;
          TextView localTextView = paramAnonymousx.bZM;
          if (paramAnonymousInt != 4) {
            break label87;
          }
          i = 0;
          localTextView.setVisibility(i);
          paramAnonymousx = paramAnonymousx.bZN;
          if (paramAnonymousInt != 4) {
            break label93;
          }
        }
        label87:
        label93:
        for (paramAnonymousInt = j;; paramAnonymousInt = 8)
        {
          paramAnonymousx.setVisibility(paramAnonymousInt);
          ai.this.cdV.g(ai.this.cdW);
          ai.this.cdV.g(ai.this.recyclerView);
          return;
          i = 8;
          break;
        }
      }
      
      public final boolean jh()
      {
        return false;
      }
      
      public final int v(RecyclerView.x paramAnonymousx)
      {
        if ((paramAnonymousx instanceof f.a)) {
          return ck(12);
        }
        return ck(0);
      }
      
      public final void y(RecyclerView.x paramAnonymousx) {}
    });
    this.cdV.g(this.recyclerView);
    this.recyclerView.setAdapter(this.ceE);
    BZ();
    ((TextView)paramLayoutInflater.findViewById(16908308)).setText(e.a(getContext(), 2131689671, new int[] { 2131230916 }, true));
    return paramLayoutInflater;
  }
  
  public final void onDestroy()
  {
    unregister();
    super.onDestroy();
  }
  
  public final void onDestroyView()
  {
    this.cdW = null;
    super.onDestroyView();
  }
  
  public final void onResume()
  {
    int i = 0;
    super.onResume();
    Object localObject;
    if ((this.ceE != null) && (((f)this.ceE).cbb != null))
    {
      localObject = ((f)this.ceE).cbb;
      if ((bb.ceP == null) || ((!bb.ceP.Fg()) && (c.f(bb.ccH)))) {
        break label161;
      }
    }
    label161:
    for (boolean bool = true;; bool = false)
    {
      ((n)localObject).setEnabled(bool);
      Dt();
      localObject = Bc();
      if (localObject != null) {
        ((ba)localObject).El();
      }
      Du();
      localObject = (ActMain)getActivity();
      if (localObject != null)
      {
        ((ActMain)localObject).BM();
        ((ActMain)localObject).bWG.setVisibility(8);
        FloatingActionButton localFloatingActionButton = ((ActMain)localObject).bWH;
        if (bb.ceP == null) {
          i = 8;
        }
        localFloatingActionButton.setVisibility(i);
        ((ActMain)localObject).BQ();
      }
      if (this.ceE != null) {
        ((f)this.ceE).notifyDataSetChanged();
      }
      BZ();
      return;
    }
  }
  
  final void unregister()
  {
    if (this.cel != null) {}
    synchronized (this.cel.chh)
    {
      this.cel.chh.remove(this.cek);
      this.cel = null;
      return;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/ai.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */