package android.support.v4.view;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;

public abstract class o
{
  public final DataSetObservable FN = new DataSetObservable();
  private DataSetObserver FO;
  
  public Object a(ViewGroup paramViewGroup, int paramInt)
  {
    throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
  }
  
  final void a(DataSetObserver paramDataSetObserver)
  {
    try
    {
      this.FO = paramDataSetObserver;
      return;
    }
    finally {}
  }
  
  public abstract boolean a(View paramView, Object paramObject);
  
  public CharSequence aw(int paramInt)
  {
    return null;
  }
  
  public void c(ViewGroup paramViewGroup) {}
  
  public void cU() {}
  
  public abstract int getCount();
  
  public final void notifyDataSetChanged()
  {
    try
    {
      if (this.FO != null) {
        this.FO.onChanged();
      }
      this.FN.notifyChanged();
      return;
    }
    finally {}
  }
  
  public void o(Object paramObject)
  {
    throw new UnsupportedOperationException("Required method destroyItem was not overridden");
  }
  
  public void p(Object paramObject) {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/view/o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */