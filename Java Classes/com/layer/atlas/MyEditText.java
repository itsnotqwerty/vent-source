package com.layer.atlas;

import android.content.ClipData;
import android.content.ClipData.Item;
import android.content.ClipboardManager;
import android.content.Context;
import android.os.Build.VERSION;
import android.support.v7.widget.s;
import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.Spanned;
import android.util.AttributeSet;

public final class MyEditText
  extends s
{
  public MyEditText(Context paramContext)
  {
    super(paramContext);
  }
  
  public MyEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public MyEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public final boolean onTextContextMenuItem(int paramInt)
  {
    int i = paramInt;
    if (paramInt == 16908322) {}
    label230:
    label241:
    for (;;)
    {
      int k;
      try
      {
        if (Build.VERSION.SDK_INT >= 23)
        {
          i = 16908337;
          return super.onTextContextMenuItem(i);
        }
        Editable localEditable = getText();
        i = localEditable.length();
        if (isFocused())
        {
          paramInt = getSelectionStart();
          i = getSelectionEnd();
          j = Math.max(0, Math.min(paramInt, i));
          i = Math.max(0, Math.max(paramInt, i));
          ClipData localClipData = ((ClipboardManager)getContext().getSystemService("clipboard")).getPrimaryClip();
          if (localClipData == null) {
            break label230;
          }
          k = 0;
          paramInt = 0;
          if (k >= localClipData.getItemCount()) {
            break label230;
          }
          Object localObject = localClipData.getItemAt(k).coerceToText(getContext());
          if (!(localObject instanceof Spanned)) {
            break label241;
          }
          localObject = ((CharSequence)localObject).toString();
          if (localObject != null) {
            if (paramInt == 0)
            {
              Selection.setSelection((Spannable)localEditable, i);
              ((Editable)localEditable).replace(j, i, (CharSequence)localObject);
              paramInt = 1;
            }
            else
            {
              ((Editable)localEditable).insert(getSelectionEnd(), "\n");
              ((Editable)localEditable).insert(getSelectionEnd(), (CharSequence)localObject);
            }
          }
        }
      }
      catch (Exception localException)
      {
        return true;
      }
      int j = 0;
      continue;
      return true;
      k += 1;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/atlas/MyEditText.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */