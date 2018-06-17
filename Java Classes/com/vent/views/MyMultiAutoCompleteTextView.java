package com.vent.views;

import android.content.ClipData;
import android.content.ClipData.Item;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.support.v7.app.c.a;
import android.support.v7.widget.s;
import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.Spanned;
import android.util.AttributeSet;
import com.vent.bb;
import com.vent.d.e;

public final class MyMultiAutoCompleteTextView
  extends s
{
  public MyMultiAutoCompleteTextView(Context paramContext)
  {
    super(paramContext);
  }
  
  public MyMultiAutoCompleteTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public MyMultiAutoCompleteTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  final void FG()
  {
    Editable localEditable = getText();
    int i = localEditable.length();
    int k;
    int j;
    if (isFocused())
    {
      i = getSelectionStart();
      k = getSelectionEnd();
      j = Math.max(0, Math.min(i, k));
      i = Math.max(0, Math.max(i, k));
    }
    for (;;)
    {
      Object localObject = (ClipboardManager)getContext().getSystemService("clipboard");
      int m;
      int n;
      if (localObject != null)
      {
        ClipData localClipData = ((ClipboardManager)localObject).getPrimaryClip();
        if (localClipData != null)
        {
          k = 0;
          m = 0;
          if (k < localClipData.getItemCount())
          {
            CharSequence localCharSequence = localClipData.getItemAt(k).coerceToText(getContext());
            n = m;
            if (localCharSequence != null)
            {
              localObject = localCharSequence;
              if ((localCharSequence instanceof Spanned)) {
                localObject = localCharSequence.toString();
              }
              localObject = e.v((CharSequence)localObject);
              if (((CharSequence)localObject).length() <= 10000) {
                break label259;
              }
              localObject = ((CharSequence)localObject).subSequence(0, 10000);
            }
          }
        }
      }
      label259:
      for (;;)
      {
        if (m == 0)
        {
          Selection.setSelection((Spannable)localEditable, i);
          ((Editable)localEditable).replace(j, i, (CharSequence)localObject);
        }
        for (n = 1;; n = m)
        {
          k += 1;
          m = n;
          break;
          ((Editable)localEditable).insert(getSelectionEnd(), "\n");
          ((Editable)localEditable).insert(getSelectionEnd(), (CharSequence)localObject);
        }
        return;
      }
      j = 0;
    }
  }
  
  public final boolean onTextContextMenuItem(int paramInt)
  {
    if ((paramInt == 16908322) || (paramInt == 16908337)) {}
    try
    {
      if (com.vent.d.c.bF(getContext()))
      {
        if (bb.cif != 2) {
          break label179;
        }
        Object localObject = (ClipboardManager)getContext().getSystemService("clipboard");
        if (localObject == null) {
          break label179;
        }
        localObject = ((ClipboardManager)localObject).getPrimaryClip();
        if (localObject == null) {
          break label179;
        }
        paramInt = 0;
        int i = 0;
        if (paramInt >= ((ClipData)localObject).getItemCount()) {
          break label179;
        }
        i += ((ClipData)localObject).getItemAt(paramInt).coerceToText(getContext()).length();
        if (i <= 1000) {
          break label172;
        }
        paramInt = 1;
      }
      else
      {
        label106:
        FG();
        break label170;
      }
      label170:
      label172:
      label179:
      label182:
      for (;;)
      {
        new c.a(getContext()).setMessage(2131689692).setNegativeButton(17039360, null).setPositiveButton(17039370, new DialogInterface.OnClickListener()
        {
          public final void onClick(final DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            paramAnonymousDialogInterface = com.vent.d.c.v(MyMultiAutoCompleteTextView.this.getContext(), 2131689697);
            MyMultiAutoCompleteTextView.this.postDelayed(new Runnable()
            {
              public final void run()
              {
                MyMultiAutoCompleteTextView.this.FG();
                com.vent.d.c.a(paramAnonymousDialogInterface);
              }
            }, 50L);
          }
        }).show();
        break label170;
        boolean bool = super.onTextContextMenuItem(paramInt);
        return bool;
        for (;;)
        {
          if (paramInt != 0) {
            break label182;
          }
          break label106;
          return true;
          paramInt += 1;
          break;
          paramInt = 0;
        }
      }
      return true;
    }
    catch (Exception localException) {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/views/MyMultiAutoCompleteTextView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */