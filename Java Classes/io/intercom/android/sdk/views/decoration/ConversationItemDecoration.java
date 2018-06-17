package io.intercom.android.sdk.views.decoration;

import android.content.Context;
import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.h;
import android.support.v7.widget.RecyclerView.u;
import android.view.View;
import io.intercom.android.sdk.commons.utilities.ScreenUtils;
import io.intercom.android.sdk.models.Part;
import java.util.List;

public class ConversationItemDecoration
  extends RecyclerView.h
{
  private static final int CONCAT_SPACING = 4;
  private static final int DIVIDER_BOTTOM_SPACING = 10;
  private static final int DIVIDER_TOP_SPACING = 16;
  private static final int SPACING = 24;
  private final int concatSpacing;
  private final int headerBottomSpacing;
  private final int headerTopSpacing;
  private final List<Part> parts;
  private final int spacing;
  
  public ConversationItemDecoration(Context paramContext, List<Part> paramList)
  {
    this.parts = paramList;
    this.spacing = ScreenUtils.dpToPx(24.0F, paramContext);
    this.concatSpacing = ScreenUtils.dpToPx(4.0F, paramContext);
    this.headerTopSpacing = ScreenUtils.dpToPx(16.0F, paramContext);
    this.headerBottomSpacing = ScreenUtils.dpToPx(10.0F, paramContext);
  }
  
  private boolean nextPartIsDivider(int paramInt)
  {
    return (paramInt + 1 < this.parts.size()) && ("day_divider_style".equals(((Part)this.parts.get(paramInt + 1)).getMessageStyle()));
  }
  
  private int topSpacingForPartAtPosition(int paramInt)
  {
    if (paramInt == 0) {
      return this.spacing;
    }
    return 0;
  }
  
  public void getItemOffsets(Rect paramRect, View paramView, RecyclerView paramRecyclerView, RecyclerView.u paramu)
  {
    int i = RecyclerView.aP(paramView);
    if ((i != -1) && (i < this.parts.size()))
    {
      paramView = (Part)this.parts.get(i);
      if ("day_divider_style".equals(paramView.getMessageStyle())) {
        paramRect.set(0, this.headerTopSpacing, 0, this.headerBottomSpacing);
      }
    }
    else
    {
      return;
    }
    if (shouldConcatenate(paramView, i))
    {
      paramRect.set(0, topSpacingForPartAtPosition(i), 0, this.concatSpacing);
      return;
    }
    if (nextPartIsDivider(i))
    {
      paramRect.set(0, topSpacingForPartAtPosition(i), 0, 0);
      return;
    }
    paramRect.set(0, topSpacingForPartAtPosition(i), 0, this.spacing);
  }
  
  boolean shouldConcatenate(Part paramPart, int paramInt)
  {
    if (paramInt + 1 < this.parts.size()) {
      return Part.shouldConcatenate(paramPart, (Part)this.parts.get(paramInt + 1));
    }
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/views/decoration/ConversationItemDecoration.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */