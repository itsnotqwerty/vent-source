package com.intercom.composer.b.c.a;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;

public final class b
  implements View.OnClickListener
{
  private final a blJ;
  private final EditText editText;
  
  public b(a parama, EditText paramEditText)
  {
    this.blJ = parama;
    this.editText = paramEditText;
  }
  
  public final void onClick(View paramView)
  {
    this.blJ.q(this.editText.getText());
    this.editText.setText("");
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/intercom/composer/b/c/a/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */