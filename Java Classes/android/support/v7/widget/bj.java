package android.support.v7.widget;

import android.app.SearchManager;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.Resources.Theme;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.support.v4.content.a;
import android.support.v4.widget.m;
import android.support.v7.a.a.a;
import android.support.v7.a.a.f;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.WeakHashMap;

final class bj
  extends m
  implements View.OnClickListener
{
  private final SearchableInfo ahB;
  private final WeakHashMap<String, Drawable.ConstantState> ahG;
  private final SearchView ahS;
  private final SearchManager aiL = (SearchManager)this.mContext.getSystemService("search");
  private final Context aiM;
  private final int aiN;
  int aiO = 1;
  private ColorStateList aiP;
  private int aiQ = -1;
  private int aiR = -1;
  private int aiS = -1;
  private int aiT = -1;
  private int aiU = -1;
  private int aiV = -1;
  private boolean mClosed = false;
  
  public bj(Context paramContext, SearchView paramSearchView, SearchableInfo paramSearchableInfo, WeakHashMap<String, Drawable.ConstantState> paramWeakHashMap)
  {
    super(paramContext, paramSearchView.getSuggestionRowLayout());
    this.ahS = paramSearchView;
    this.ahB = paramSearchableInfo;
    this.aiN = paramSearchView.getSuggestionCommitIconResId();
    this.aiM = paramContext;
    this.ahG = paramWeakHashMap;
  }
  
  private Drawable H(String paramString)
  {
    Object localObject1;
    if ((paramString == null) || (paramString.isEmpty()) || ("0".equals(paramString))) {
      localObject1 = null;
    }
    for (;;)
    {
      return (Drawable)localObject1;
      try
      {
        int i = Integer.parseInt(paramString);
        String str = "android.resource://" + this.aiM.getPackageName() + "/" + i;
        localDrawable = I(str);
        localObject1 = localDrawable;
        if (localDrawable == null)
        {
          localObject1 = a.a(this.aiM, i);
          a(str, (Drawable)localObject1);
          return (Drawable)localObject1;
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
        Drawable localDrawable = I(paramString);
        Object localObject2 = localDrawable;
        if (localDrawable == null)
        {
          localObject2 = g(Uri.parse(paramString));
          a(paramString, (Drawable)localObject2);
          return (Drawable)localObject2;
        }
      }
      catch (Resources.NotFoundException localNotFoundException)
      {
        Log.w("SuggestionsAdapter", "Icon resource not found: " + paramString);
      }
    }
    return null;
  }
  
  private Drawable I(String paramString)
  {
    paramString = (Drawable.ConstantState)this.ahG.get(paramString);
    if (paramString == null) {
      return null;
    }
    return paramString.newDrawable();
  }
  
  private static String a(Cursor paramCursor, int paramInt)
  {
    if (paramInt == -1) {
      return null;
    }
    try
    {
      paramCursor = paramCursor.getString(paramInt);
      return paramCursor;
    }
    catch (Exception paramCursor)
    {
      Log.e("SuggestionsAdapter", "unexpected error retrieving valid column from cursor, did the remote process die?", paramCursor);
    }
    return null;
  }
  
  private static void a(ImageView paramImageView, Drawable paramDrawable, int paramInt)
  {
    paramImageView.setImageDrawable(paramDrawable);
    if (paramDrawable == null)
    {
      paramImageView.setVisibility(paramInt);
      return;
    }
    paramImageView.setVisibility(0);
    paramDrawable.setVisible(false, false);
    paramDrawable.setVisible(true, false);
  }
  
  private static void a(TextView paramTextView, CharSequence paramCharSequence)
  {
    paramTextView.setText(paramCharSequence);
    if (TextUtils.isEmpty(paramCharSequence))
    {
      paramTextView.setVisibility(8);
      return;
    }
    paramTextView.setVisibility(0);
  }
  
  private void a(String paramString, Drawable paramDrawable)
  {
    if (paramDrawable != null) {
      this.ahG.put(paramString, paramDrawable.getConstantState());
    }
  }
  
  private static void b(Cursor paramCursor)
  {
    if (paramCursor != null) {}
    for (paramCursor = paramCursor.getExtras();; paramCursor = null)
    {
      if ((paramCursor != null) && (paramCursor.getBoolean("in_progress"))) {}
      return;
    }
  }
  
  public static String e(Cursor paramCursor, String paramString)
  {
    return a(paramCursor, paramCursor.getColumnIndex(paramString));
  }
  
  private Drawable g(Uri paramUri)
  {
    try
    {
      boolean bool = "android.resource".equals(paramUri.getScheme());
      if (bool) {
        try
        {
          Drawable localDrawable1 = h(paramUri);
          return localDrawable1;
        }
        catch (Resources.NotFoundException localNotFoundException)
        {
          throw new FileNotFoundException("Resource does not exist: " + paramUri);
        }
      }
      localInputStream = this.aiM.getContentResolver().openInputStream(paramUri);
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      Log.w("SuggestionsAdapter", "Icon not found: " + paramUri + ", " + localFileNotFoundException.getMessage());
      return null;
    }
    InputStream localInputStream;
    if (localInputStream == null) {
      throw new FileNotFoundException("Failed to open " + paramUri);
    }
    try
    {
      Drawable localDrawable2 = Drawable.createFromStream(localInputStream, null);
      try
      {
        localInputStream.close();
        return localDrawable2;
      }
      catch (IOException localIOException1)
      {
        Log.e("SuggestionsAdapter", "Error closing icon stream for " + paramUri, localIOException1);
        return localDrawable2;
      }
      try
      {
        localIOException1.close();
        throw ((Throwable)localObject);
      }
      catch (IOException localIOException2)
      {
        for (;;)
        {
          Log.e("SuggestionsAdapter", "Error closing icon stream for " + paramUri, localIOException2);
        }
      }
    }
    finally {}
  }
  
  private Drawable getActivityIcon(ComponentName paramComponentName)
  {
    Object localObject = this.mContext.getPackageManager();
    ActivityInfo localActivityInfo;
    int i;
    try
    {
      localActivityInfo = ((PackageManager)localObject).getActivityInfo(paramComponentName, 128);
      i = localActivityInfo.getIconResource();
      if (i == 0) {
        return null;
      }
    }
    catch (PackageManager.NameNotFoundException paramComponentName)
    {
      Log.w("SuggestionsAdapter", paramComponentName.toString());
      return null;
    }
    localObject = ((PackageManager)localObject).getDrawable(paramComponentName.getPackageName(), i, localActivityInfo.applicationInfo);
    if (localObject == null)
    {
      Log.w("SuggestionsAdapter", "Invalid icon resource " + i + " for " + paramComponentName.flattenToShortString());
      return null;
    }
    return (Drawable)localObject;
  }
  
  private Drawable h(Uri paramUri)
    throws FileNotFoundException
  {
    String str = paramUri.getAuthority();
    if (TextUtils.isEmpty(str)) {
      throw new FileNotFoundException("No authority: " + paramUri);
    }
    Resources localResources;
    List localList;
    try
    {
      localResources = this.mContext.getPackageManager().getResourcesForApplication(str);
      localList = paramUri.getPathSegments();
      if (localList == null) {
        throw new FileNotFoundException("No path: " + paramUri);
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      throw new FileNotFoundException("No package found for authority: " + paramUri);
    }
    int i = localList.size();
    if (i == 1) {}
    for (;;)
    {
      try
      {
        i = Integer.parseInt((String)localList.get(0));
        if (i != 0) {
          break;
        }
        throw new FileNotFoundException("No resource found for: " + paramUri);
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw new FileNotFoundException("Single path segment is not a resource ID: " + paramUri);
      }
      if (i == 2) {
        i = localResources.getIdentifier((String)localList.get(1), (String)localList.get(0), localNumberFormatException);
      } else {
        throw new FileNotFoundException("More than two path segments: " + paramUri);
      }
    }
    return localResources.getDrawable(i);
  }
  
  public final void a(View paramView, Cursor paramCursor)
  {
    Object localObject2 = null;
    a locala = (a)paramView.getTag();
    if (this.aiV != -1) {}
    for (int i = paramCursor.getInt(this.aiV);; i = 0)
    {
      if (locala.aiW != null)
      {
        paramView = a(paramCursor, this.aiQ);
        a(locala.aiW, paramView);
      }
      Object localObject1;
      if (locala.aiX != null)
      {
        localObject1 = a(paramCursor, this.aiS);
        if (localObject1 != null)
        {
          if (this.aiP == null)
          {
            paramView = new TypedValue();
            this.mContext.getTheme().resolveAttribute(a.a.textColorSearchUrl, paramView, true);
            this.aiP = this.mContext.getResources().getColorStateList(paramView.resourceId);
          }
          paramView = new SpannableString((CharSequence)localObject1);
          paramView.setSpan(new TextAppearanceSpan(null, 0, 0, this.aiP, null), 0, ((CharSequence)localObject1).length(), 33);
          if (!TextUtils.isEmpty(paramView)) {
            break label345;
          }
          if (locala.aiW != null)
          {
            locala.aiW.setSingleLine(false);
            locala.aiW.setMaxLines(2);
          }
          label201:
          a(locala.aiX, paramView);
        }
      }
      else
      {
        if (locala.aiY != null)
        {
          ImageView localImageView = locala.aiY;
          if (this.aiT != -1) {
            break label374;
          }
          paramView = null;
          label235:
          a(localImageView, paramView, 4);
        }
        if (locala.aiZ != null)
        {
          localObject1 = locala.aiZ;
          if (this.aiU != -1) {
            break label519;
          }
        }
      }
      label345:
      label374:
      label519:
      for (paramView = (View)localObject2;; paramView = H(paramCursor.getString(this.aiU)))
      {
        a((ImageView)localObject1, paramView, 8);
        if ((this.aiO != 2) && ((this.aiO != 1) || ((i & 0x1) == 0))) {
          break label537;
        }
        locala.aja.setVisibility(0);
        locala.aja.setTag(locala.aiW.getText());
        locala.aja.setOnClickListener(this);
        return;
        paramView = a(paramCursor, this.aiR);
        break;
        if (locala.aiW == null) {
          break label201;
        }
        locala.aiW.setSingleLine(true);
        locala.aiW.setMaxLines(1);
        break label201;
        localObject1 = H(paramCursor.getString(this.aiT));
        paramView = (View)localObject1;
        if (localObject1 != null) {
          break label235;
        }
        paramView = this.ahB.getSearchActivity();
        String str = paramView.flattenToShortString();
        if (this.ahG.containsKey(str))
        {
          paramView = (Drawable.ConstantState)this.ahG.get(str);
          if (paramView == null) {}
          for (localObject1 = null;; localObject1 = paramView.newDrawable(this.aiM.getResources()))
          {
            paramView = (View)localObject1;
            if (localObject1 != null) {
              break;
            }
            paramView = this.mContext.getPackageManager().getDefaultActivityIcon();
            break;
          }
        }
        localObject1 = getActivityIcon(paramView);
        if (localObject1 == null) {}
        for (paramView = null;; paramView = ((Drawable)localObject1).getConstantState())
        {
          this.ahG.put(str, paramView);
          break;
        }
      }
      label537:
      locala.aja.setVisibility(8);
      return;
    }
  }
  
  public final void changeCursor(Cursor paramCursor)
  {
    if (this.mClosed)
    {
      Log.w("SuggestionsAdapter", "Tried to change cursor after adapter was closed.");
      if (paramCursor != null) {
        paramCursor.close();
      }
    }
    for (;;)
    {
      return;
      try
      {
        super.changeCursor(paramCursor);
        if (paramCursor != null)
        {
          this.aiQ = paramCursor.getColumnIndex("suggest_text_1");
          this.aiR = paramCursor.getColumnIndex("suggest_text_2");
          this.aiS = paramCursor.getColumnIndex("suggest_text_2_url");
          this.aiT = paramCursor.getColumnIndex("suggest_icon_1");
          this.aiU = paramCursor.getColumnIndex("suggest_icon_2");
          this.aiV = paramCursor.getColumnIndex("suggest_flags");
          return;
        }
      }
      catch (Exception paramCursor)
      {
        Log.e("SuggestionsAdapter", "error changing cursor and caching columns", paramCursor);
      }
    }
  }
  
  public final CharSequence convertToString(Cursor paramCursor)
  {
    if (paramCursor == null) {}
    do
    {
      do
      {
        return null;
        String str = e(paramCursor, "suggest_intent_query");
        if (str != null) {
          return str;
        }
        if (this.ahB.shouldRewriteQueryFromData())
        {
          str = e(paramCursor, "suggest_intent_data");
          if (str != null) {
            return str;
          }
        }
      } while (!this.ahB.shouldRewriteQueryFromText());
      paramCursor = e(paramCursor, "suggest_text_1");
    } while (paramCursor == null);
    return paramCursor;
  }
  
  public final View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    try
    {
      paramView = super.getDropDownView(paramInt, paramView, paramViewGroup);
      return paramView;
    }
    catch (RuntimeException paramView)
    {
      Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", paramView);
      paramViewGroup = newDropDownView(this.mContext, this.Jc, paramViewGroup);
      if (paramViewGroup != null) {
        ((a)paramViewGroup.getTag()).aiW.setText(paramView.toString());
      }
    }
    return paramViewGroup;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    try
    {
      paramView = super.getView(paramInt, paramView, paramViewGroup);
      return paramView;
    }
    catch (RuntimeException paramView)
    {
      Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", paramView);
      paramViewGroup = newView(this.mContext, this.Jc, paramViewGroup);
      if (paramViewGroup != null) {
        ((a)paramViewGroup.getTag()).aiW.setText(paramView.toString());
      }
    }
    return paramViewGroup;
  }
  
  public final boolean hasStableIds()
  {
    return false;
  }
  
  public final View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    paramContext = super.newView(paramContext, paramCursor, paramViewGroup);
    paramContext.setTag(new a(paramContext));
    ((ImageView)paramContext.findViewById(a.f.edit_query)).setImageResource(this.aiN);
    return paramContext;
  }
  
  public final void notifyDataSetChanged()
  {
    super.notifyDataSetChanged();
    b(getCursor());
  }
  
  public final void notifyDataSetInvalidated()
  {
    super.notifyDataSetInvalidated();
    b(getCursor());
  }
  
  public final void onClick(View paramView)
  {
    paramView = paramView.getTag();
    if ((paramView instanceof CharSequence)) {
      this.ahS.setQuery((CharSequence)paramView);
    }
  }
  
  public final Cursor runQueryOnBackgroundThread(CharSequence paramCharSequence)
  {
    if (paramCharSequence == null) {}
    for (paramCharSequence = ""; (this.ahS.getVisibility() != 0) || (this.ahS.getWindowVisibility() != 0); paramCharSequence = paramCharSequence.toString()) {
      return null;
    }
    Object localObject1;
    for (;;)
    {
      try
      {
        localObject1 = this.ahB;
        if (localObject1 != null) {
          break label77;
        }
        paramCharSequence = null;
        if (paramCharSequence != null)
        {
          paramCharSequence.getCount();
          return paramCharSequence;
        }
      }
      catch (RuntimeException paramCharSequence)
      {
        Log.w("SuggestionsAdapter", "Search suggestions query threw an exception.", paramCharSequence);
      }
      return null;
      label77:
      localObject2 = ((SearchableInfo)localObject1).getSuggestAuthority();
      if (localObject2 != null) {
        break;
      }
      paramCharSequence = null;
    }
    Object localObject2 = new Uri.Builder().scheme("content").authority((String)localObject2).query("").fragment("");
    String str = ((SearchableInfo)localObject1).getSuggestPath();
    if (str != null) {
      ((Uri.Builder)localObject2).appendEncodedPath(str);
    }
    ((Uri.Builder)localObject2).appendPath("search_suggest_query");
    str = ((SearchableInfo)localObject1).getSuggestSelection();
    if (str != null)
    {
      localObject1 = new String[1];
      localObject1[0] = paramCharSequence;
    }
    for (paramCharSequence = (CharSequence)localObject1;; paramCharSequence = null)
    {
      ((Uri.Builder)localObject2).appendQueryParameter("limit", "50");
      localObject1 = ((Uri.Builder)localObject2).build();
      paramCharSequence = this.mContext.getContentResolver().query((Uri)localObject1, null, str, paramCharSequence, null);
      break;
      ((Uri.Builder)localObject2).appendPath(paramCharSequence);
    }
  }
  
  private static final class a
  {
    public final TextView aiW;
    public final TextView aiX;
    public final ImageView aiY;
    public final ImageView aiZ;
    public final ImageView aja;
    
    public a(View paramView)
    {
      this.aiW = ((TextView)paramView.findViewById(16908308));
      this.aiX = ((TextView)paramView.findViewById(16908309));
      this.aiY = ((ImageView)paramView.findViewById(16908295));
      this.aiZ = ((ImageView)paramView.findViewById(16908296));
      this.aja = ((ImageView)paramView.findViewById(a.f.edit_query));
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/bj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */