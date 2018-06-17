package com.intercom.composer.d;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;

public final class b
  implements TextWatcher
{
  private final a blV;
  
  public b(a parama)
  {
    this.blV = parama;
  }
  
  public final void afterTextChanged(Editable paramEditable)
  {
    a locala = this.blV;
    if (!TextUtils.isEmpty(paramEditable.toString().trim())) {}
    for (boolean bool = true;; bool = false)
    {
      locala.aI(bool);
      return;
    }
  }
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/intercom/composer/d/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */