package com.layer.atlas;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.content.a;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.layer.atlas.b.c.a;
import com.layer.sdk.LayerClient;
import com.layer.sdk.exceptions.LayerException;
import com.layer.sdk.listeners.LayerTypingIndicatorListener.TypingIndicator;
import com.layer.sdk.messaging.Conversation;
import java.util.ArrayList;
import java.util.Iterator;

public final class AtlasMessageComposer
  extends FrameLayout
{
  public boolean HX;
  public float bmL;
  public LayerClient bmU;
  Conversation bmV;
  public EditText bmY;
  public Button bmZ;
  public ImageView bna;
  private com.layer.atlas.b.d.b bnb;
  public final ArrayList<com.layer.atlas.b.b> bnc = new ArrayList();
  private c.a bnd;
  PopupWindow bne;
  public int bnf;
  public Typeface bng;
  public int bnh;
  public int bni;
  public int bnj;
  private Drawable bnk;
  
  public AtlasMessageComposer(Context paramContext)
  {
    super(paramContext);
    a(paramContext, null, 0);
  }
  
  public AtlasMessageComposer(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public AtlasMessageComposer(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    TypedArray localTypedArray = paramContext.getTheme().obtainStyledAttributes(paramAttributeSet, b.j.AtlasMessageComposer, b.b.AtlasMessageComposer, paramInt);
    this.HX = localTypedArray.getBoolean(b.j.AtlasMessageComposer_android_enabled, true);
    this.bnf = localTypedArray.getColor(b.j.AtlasMessageComposer_inputTextColor, paramContext.getResources().getColor(b.c.atlas_text_black));
    this.bmL = localTypedArray.getDimensionPixelSize(b.j.AtlasMessageComposer_inputTextSize, paramContext.getResources().getDimensionPixelSize(b.d.atlas_text_size_input));
    this.bnh = localTypedArray.getInt(b.j.AtlasMessageComposer_inputTextStyle, 0);
    Object localObject = localTypedArray.getString(b.j.AtlasMessageComposer_inputTextTypeface);
    if (localObject != null) {}
    for (localObject = Typeface.create((String)localObject, this.bnh);; localObject = null)
    {
      this.bng = ((Typeface)localObject);
      this.bni = localTypedArray.getColor(b.j.AtlasMessageComposer_inputUnderlineColor, paramContext.getResources().getColor(b.c.atlas_color_primary_blue));
      this.bnj = localTypedArray.getColor(b.j.AtlasMessageComposer_inputCursorColor, paramContext.getResources().getColor(b.c.atlas_color_primary_blue));
      this.bnk = localTypedArray.getDrawable(b.j.AtlasMessageComposer_attachmentSendersBackground);
      if (this.bnk == null) {
        this.bnk = a.a(paramContext, b.e.atlas_popup_background);
      }
      localTypedArray.recycle();
      a(paramContext, paramAttributeSet, paramInt);
      return;
    }
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    if (this.bne != null) {
      throw new IllegalStateException("Already initialized menu");
    }
    if (paramAttributeSet == null) {}
    for (this.bne = new PopupWindow(paramContext);; this.bne = new PopupWindow(paramContext, paramAttributeSet, paramInt))
    {
      this.bne.setContentView(LayoutInflater.from(paramContext).inflate(b.g.atlas_message_composer_attachment_menu, null));
      this.bne.setWindowLayoutMode(-2, -2);
      this.bne.setOutsideTouchable(true);
      this.bne.setBackgroundDrawable(this.bnk);
      this.bne.setFocusable(true);
      return;
    }
  }
  
  public final AtlasMessageComposer a(com.layer.atlas.b.d.b paramb)
  {
    if (this.bnb != null)
    {
      this.bnb.bou = null;
      this.bnb.bmV = null;
      this.bnb.a(null, null);
    }
    this.bnb = paramb;
    if (this.bnb != null)
    {
      this.bnb.a(getContext().getApplicationContext(), this.bmU);
      this.bnb.bmV = this.bmV;
      this.bnb.bou = this.bnd;
    }
    return this;
  }
  
  public final AtlasMessageComposer b(Conversation paramConversation)
  {
    this.bmV = paramConversation;
    if (this.bnb != null) {
      this.bnb.bmV = paramConversation;
    }
    Iterator localIterator = this.bnc.iterator();
    while (localIterator.hasNext()) {
      ((com.layer.atlas.b.b)localIterator.next()).bmV = paramConversation;
    }
    return this;
  }
  
  protected final void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof a)) {
      super.onRestoreInstanceState(paramParcelable);
    }
    for (;;)
    {
      return;
      paramParcelable = (a)paramParcelable;
      super.onRestoreInstanceState(paramParcelable.getSuperState());
      Iterator localIterator = this.bnc.iterator();
      while (localIterator.hasNext())
      {
        Class localClass = ((com.layer.atlas.b.b)localIterator.next()).getClass();
        if (paramParcelable.Cs.getParcelable(localClass.getName()) == null) {}
      }
    }
  }
  
  protected final Parcelable onSaveInstanceState()
  {
    Object localObject = super.onSaveInstanceState();
    if (this.bnc.isEmpty()) {
      return (Parcelable)localObject;
    }
    localObject = new a((Parcelable)localObject);
    Iterator localIterator = this.bnc.iterator();
    while (localIterator.hasNext()) {
      localIterator.next();
    }
    return (Parcelable)localObject;
  }
  
  public final void setEnabled(boolean paramBoolean)
  {
    if (this.bna != null) {
      this.bna.setEnabled(paramBoolean);
    }
    if (this.bmY != null) {
      this.bmY.setEnabled(paramBoolean);
    }
    Button localButton;
    if (this.bmZ != null)
    {
      localButton = this.bmZ;
      if ((!paramBoolean) || (this.bmY == null) || (this.bmY.getText().length() <= 0)) {
        break label81;
      }
    }
    label81:
    for (boolean bool = true;; bool = false)
    {
      localButton.setEnabled(bool);
      super.setEnabled(paramBoolean);
      return;
    }
  }
  
  final void wf()
  {
    try
    {
      if (!this.bnb.dt(this.bmY.getText().toString())) {
        return;
      }
      this.bmY.setText("");
      this.bmZ.setEnabled(false);
      return;
    }
    catch (LayerException localLayerException)
    {
      localLayerException.printStackTrace();
    }
  }
  
  private static final class a
    extends View.BaseSavedState
  {
    public static final Parcelable.Creator<a> CREATOR = new Parcelable.Creator() {};
    Bundle Cs = new Bundle();
    
    private a(Parcel paramParcel)
    {
      super();
      this.Cs = paramParcel.readBundle();
    }
    
    public a(Parcelable paramParcelable)
    {
      super();
    }
    
    public final void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeBundle(this.Cs);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/atlas/AtlasMessageComposer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */