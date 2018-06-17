package io.intercom.android.sdk.sheets;

import java.util.Map;

public abstract interface SheetListener
{
  public abstract void onCloseSheetAction();
  
  public abstract void onSheetTitleAction(String paramString);
  
  public abstract void onSubmitSheetAction(Map<String, Object> paramMap);
  
  public abstract void onWebViewFinishedLoad();
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/sheets/SheetListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */