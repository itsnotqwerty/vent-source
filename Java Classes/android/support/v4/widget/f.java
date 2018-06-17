package android.support.v4.widget;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.FilterQueryProvider;
import android.widget.Filterable;

public abstract class f
  extends BaseAdapter
  implements g.a, Filterable
{
  protected boolean Ja = false;
  protected boolean Jb = true;
  protected Cursor Jc = null;
  protected int Jd;
  protected a Je;
  protected DataSetObserver Jf;
  protected g Jg;
  protected FilterQueryProvider Jh;
  protected Context mContext;
  
  public f(Context paramContext)
  {
    this.mContext = paramContext;
    this.Jd = -1;
    this.Je = new a();
    this.Jf = new b();
  }
  
  public abstract void a(View paramView, Cursor paramCursor);
  
  public void changeCursor(Cursor paramCursor)
  {
    if (paramCursor == this.Jc) {
      paramCursor = null;
    }
    for (;;)
    {
      if (paramCursor != null) {
        paramCursor.close();
      }
      return;
      Cursor localCursor = this.Jc;
      if (localCursor != null)
      {
        if (this.Je != null) {
          localCursor.unregisterContentObserver(this.Je);
        }
        if (this.Jf != null) {
          localCursor.unregisterDataSetObserver(this.Jf);
        }
      }
      this.Jc = paramCursor;
      if (paramCursor != null)
      {
        if (this.Je != null) {
          paramCursor.registerContentObserver(this.Je);
        }
        if (this.Jf != null) {
          paramCursor.registerDataSetObserver(this.Jf);
        }
        this.Jd = paramCursor.getColumnIndexOrThrow("_id");
        this.Ja = true;
        notifyDataSetChanged();
        paramCursor = localCursor;
      }
      else
      {
        this.Jd = -1;
        this.Ja = false;
        notifyDataSetInvalidated();
        paramCursor = localCursor;
      }
    }
  }
  
  public CharSequence convertToString(Cursor paramCursor)
  {
    if (paramCursor == null) {
      return "";
    }
    return paramCursor.toString();
  }
  
  public int getCount()
  {
    if ((this.Ja) && (this.Jc != null)) {
      return this.Jc.getCount();
    }
    return 0;
  }
  
  public final Cursor getCursor()
  {
    return this.Jc;
  }
  
  public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (this.Ja)
    {
      this.Jc.moveToPosition(paramInt);
      View localView = paramView;
      if (paramView == null) {
        localView = newDropDownView(this.mContext, this.Jc, paramViewGroup);
      }
      a(localView, this.Jc);
      return localView;
    }
    return null;
  }
  
  public Filter getFilter()
  {
    if (this.Jg == null) {
      this.Jg = new g(this);
    }
    return this.Jg;
  }
  
  public Object getItem(int paramInt)
  {
    if ((this.Ja) && (this.Jc != null))
    {
      this.Jc.moveToPosition(paramInt);
      return this.Jc;
    }
    return null;
  }
  
  public long getItemId(int paramInt)
  {
    long l2 = 0L;
    long l1 = l2;
    if (this.Ja)
    {
      l1 = l2;
      if (this.Jc != null)
      {
        l1 = l2;
        if (this.Jc.moveToPosition(paramInt)) {
          l1 = this.Jc.getLong(this.Jd);
        }
      }
    }
    return l1;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (!this.Ja) {
      throw new IllegalStateException("this should only be called when the cursor is valid");
    }
    if (!this.Jc.moveToPosition(paramInt)) {
      throw new IllegalStateException("couldn't move cursor to position " + paramInt);
    }
    View localView = paramView;
    if (paramView == null) {
      localView = newView(this.mContext, this.Jc, paramViewGroup);
    }
    a(localView, this.Jc);
    return localView;
  }
  
  public boolean hasStableIds()
  {
    return true;
  }
  
  public View newDropDownView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    return newView(paramContext, paramCursor, paramViewGroup);
  }
  
  public abstract View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup);
  
  protected final void onContentChanged()
  {
    if ((this.Jb) && (this.Jc != null) && (!this.Jc.isClosed())) {
      this.Ja = this.Jc.requery();
    }
  }
  
  public Cursor runQueryOnBackgroundThread(CharSequence paramCharSequence)
  {
    if (this.Jh != null) {
      return this.Jh.runQuery(paramCharSequence);
    }
    return this.Jc;
  }
  
  private final class a
    extends ContentObserver
  {
    a()
    {
      super();
    }
    
    public final boolean deliverSelfNotifications()
    {
      return true;
    }
    
    public final void onChange(boolean paramBoolean)
    {
      f.this.onContentChanged();
    }
  }
  
  private final class b
    extends DataSetObserver
  {
    b() {}
    
    public final void onChanged()
    {
      f.this.Ja = true;
      f.this.notifyDataSetChanged();
    }
    
    public final void onInvalidated()
    {
      f.this.Ja = false;
      f.this.notifyDataSetInvalidated();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/widget/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */