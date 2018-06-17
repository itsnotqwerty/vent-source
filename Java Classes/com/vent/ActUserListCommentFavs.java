package com.vent;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.vent.a.d;

public final class ActUserListCommentFavs
  extends e
{
  private d bYL;
  
  public static void a(Activity paramActivity, d paramd)
  {
    Intent localIntent = new Intent(paramActivity, ActUserListCommentFavs.class);
    localIntent.putExtra("title", paramActivity.getString(2131689580));
    localIntent.putExtra("comment", paramd);
    localIntent.putExtra("gaTag", "CommentFavourites");
    paramActivity.startActivityForResult(localIntent, 7);
  }
  
  protected final void onCreate(Bundle paramBundle)
  {
    this.bYL = ((d)getIntent().getParcelableExtra("comment"));
    super.onCreate(paramBundle);
    ((FrgFollowsList)this.bWr).a("comment_favourites", null, null, 2131689679);
    ((FrgFollowsList)this.bWr).c(true, false, false);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/ActUserListCommentFavs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */