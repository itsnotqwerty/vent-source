package android.support.v7.widget;

import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.support.v4.view.a;
import android.support.v4.view.r;
import android.support.v4.widget.f;
import android.support.v7.a.a.a;
import android.support.v7.a.a.d;
import android.support.v7.a.a.f;
import android.support.v7.a.a.g;
import android.support.v7.a.a.h;
import android.support.v7.a.a.j;
import android.support.v7.view.c;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.KeyEvent.DispatcherState;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.View.OnKeyListener;
import android.view.View.OnLayoutChangeListener;
import android.view.ViewConfiguration;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

public class SearchView
  extends at
  implements c
{
  static final a ahD = new a();
  private final AdapterView.OnItemSelectedListener Mo = new AdapterView.OnItemSelectedListener()
  {
    public final void onItemSelected(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
    {
      paramAnonymousAdapterView = SearchView.this;
      if ((paramAnonymousAdapterView.ahn == null) || (!paramAnonymousAdapterView.ahn.iG()))
      {
        paramAnonymousView = paramAnonymousAdapterView.agP.getText();
        Object localObject = paramAnonymousAdapterView.ahr.getCursor();
        if (localObject != null)
        {
          if (!((Cursor)localObject).moveToPosition(paramAnonymousInt)) {
            break label86;
          }
          localObject = paramAnonymousAdapterView.ahr.convertToString((Cursor)localObject);
          if (localObject == null) {
            break label80;
          }
          paramAnonymousAdapterView.setQuery((CharSequence)localObject);
        }
      }
      return;
      label80:
      paramAnonymousAdapterView.setQuery(paramAnonymousView);
      return;
      label86:
      paramAnonymousAdapterView.setQuery(paramAnonymousView);
    }
    
    public final void onNothingSelected(AdapterView<?> paramAnonymousAdapterView) {}
  };
  final SearchAutoComplete agP;
  private final View agQ;
  final View agR;
  private final View agS;
  final ImageView agT;
  final ImageView agU;
  final ImageView agV;
  final ImageView agW;
  final View agX;
  private f agY;
  private Rect agZ = new Rect();
  private int ahA;
  SearchableInfo ahB;
  Bundle ahC;
  private final Runnable ahE = new Runnable()
  {
    public final void run()
    {
      SearchView.this.iz();
    }
  };
  private Runnable ahF = new Runnable()
  {
    public final void run()
    {
      if ((SearchView.this.ahr != null) && ((SearchView.this.ahr instanceof bj))) {
        SearchView.this.ahr.changeCursor(null);
      }
    }
  };
  private final WeakHashMap<String, Drawable.ConstantState> ahG = new WeakHashMap();
  private final View.OnClickListener ahH = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      Object localObject3 = null;
      Object localObject1 = null;
      if (paramAnonymousView == SearchView.this.agT) {
        SearchView.this.iC();
      }
      SearchView localSearchView;
      SearchableInfo localSearchableInfo;
      do
      {
        do
        {
          return;
          if (paramAnonymousView == SearchView.this.agV)
          {
            SearchView.this.onCloseClicked();
            return;
          }
          if (paramAnonymousView == SearchView.this.agU)
          {
            SearchView.this.iB();
            return;
          }
          if (paramAnonymousView != SearchView.this.agW) {
            break;
          }
          localSearchView = SearchView.this;
        } while (localSearchView.ahB == null);
        localSearchableInfo = localSearchView.ahB;
        for (;;)
        {
          try
          {
            if (!localSearchableInfo.getVoiceSearchLaunchWebSearch()) {
              break;
            }
            localObject2 = new Intent(localSearchView.ahh);
            paramAnonymousView = localSearchableInfo.getSearchActivity();
            if (paramAnonymousView == null)
            {
              paramAnonymousView = (View)localObject1;
              ((Intent)localObject2).putExtra("calling_package", paramAnonymousView);
              localSearchView.getContext().startActivity((Intent)localObject2);
              return;
            }
          }
          catch (ActivityNotFoundException paramAnonymousView)
          {
            Log.w("SearchView", "Could not find voice search activity");
            return;
          }
          paramAnonymousView = paramAnonymousView.flattenToShortString();
        }
      } while (!localSearchableInfo.getVoiceSearchLaunchRecognizer());
      paramAnonymousView = localSearchView.ahi;
      ComponentName localComponentName = localSearchableInfo.getSearchActivity();
      localObject1 = new Intent("android.intent.action.SEARCH");
      ((Intent)localObject1).setComponent(localComponentName);
      PendingIntent localPendingIntent = PendingIntent.getActivity(localSearchView.getContext(), 0, (Intent)localObject1, 1073741824);
      Bundle localBundle = new Bundle();
      if (localSearchView.ahC != null) {
        localBundle.putParcelable("app_data", localSearchView.ahC);
      }
      Intent localIntent = new Intent(paramAnonymousView);
      int i = 1;
      Object localObject2 = localSearchView.getResources();
      if (localSearchableInfo.getVoiceLanguageModeId() != 0) {}
      for (paramAnonymousView = ((Resources)localObject2).getString(localSearchableInfo.getVoiceLanguageModeId());; paramAnonymousView = "free_form")
      {
        if (localSearchableInfo.getVoicePromptTextId() != 0) {}
        for (localObject1 = ((Resources)localObject2).getString(localSearchableInfo.getVoicePromptTextId());; localObject1 = null)
        {
          if (localSearchableInfo.getVoiceLanguageId() != 0) {}
          for (localObject2 = ((Resources)localObject2).getString(localSearchableInfo.getVoiceLanguageId());; localObject2 = null)
          {
            if (localSearchableInfo.getVoiceMaxResults() != 0) {
              i = localSearchableInfo.getVoiceMaxResults();
            }
            localIntent.putExtra("android.speech.extra.LANGUAGE_MODEL", paramAnonymousView);
            localIntent.putExtra("android.speech.extra.PROMPT", (String)localObject1);
            localIntent.putExtra("android.speech.extra.LANGUAGE", (String)localObject2);
            localIntent.putExtra("android.speech.extra.MAX_RESULTS", i);
            if (localComponentName == null) {}
            for (paramAnonymousView = (View)localObject3;; paramAnonymousView = localComponentName.flattenToShortString())
            {
              localIntent.putExtra("calling_package", paramAnonymousView);
              localIntent.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", localPendingIntent);
              localIntent.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", localBundle);
              localSearchView.getContext().startActivity(localIntent);
              return;
            }
            if (paramAnonymousView != SearchView.this.agP) {
              break;
            }
            SearchView.this.iE();
            return;
          }
        }
      }
    }
  };
  View.OnKeyListener ahI = new View.OnKeyListener()
  {
    public final boolean onKey(View paramAnonymousView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
    {
      if (SearchView.this.ahB == null) {}
      do
      {
        return false;
        if ((SearchView.this.agP.isPopupShowing()) && (SearchView.this.agP.getListSelection() != -1)) {
          return SearchView.this.b(paramAnonymousInt, paramAnonymousKeyEvent);
        }
      } while ((SearchView.SearchAutoComplete.a(SearchView.this.agP)) || (!paramAnonymousKeyEvent.hasNoModifiers()) || (paramAnonymousKeyEvent.getAction() != 1) || (paramAnonymousInt != 66));
      paramAnonymousView.cancelLongPress();
      SearchView.this.G(SearchView.this.agP.getText().toString());
      return true;
    }
  };
  private final TextView.OnEditorActionListener ahJ = new TextView.OnEditorActionListener()
  {
    public final boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
    {
      SearchView.this.iB();
      return true;
    }
  };
  private final AdapterView.OnItemClickListener ahK = new AdapterView.OnItemClickListener()
  {
    public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
    {
      SearchView.this.bR(paramAnonymousInt);
    }
  };
  private TextWatcher ahL = new TextWatcher()
  {
    public final void afterTextChanged(Editable paramAnonymousEditable) {}
    
    public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    
    public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
    {
      SearchView.this.m(paramAnonymousCharSequence);
    }
  };
  private Rect aha = new Rect();
  private int[] ahb = new int[2];
  private int[] ahc = new int[2];
  private final ImageView ahd;
  private final Drawable ahe;
  private final int ahf;
  private final int ahg;
  final Intent ahh;
  final Intent ahi;
  private final CharSequence ahj;
  private c ahk;
  private b ahl;
  View.OnFocusChangeListener ahm;
  d ahn;
  private View.OnClickListener aho;
  boolean ahp;
  private boolean ahq;
  f ahr;
  private boolean ahs;
  private CharSequence aht;
  private boolean ahu;
  private boolean ahv;
  private boolean ahw;
  private CharSequence ahx;
  private CharSequence ahy;
  private boolean ahz;
  private int by;
  
  public SearchView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SearchView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, a.a.searchViewStyle);
  }
  
  public SearchView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramAttributeSet = bo.a(paramContext, paramAttributeSet, a.j.SearchView, paramInt, 0);
    LayoutInflater.from(paramContext).inflate(paramAttributeSet.getResourceId(a.j.SearchView_layout, a.g.abc_search_view), this, true);
    this.agP = ((SearchAutoComplete)findViewById(a.f.search_src_text));
    this.agP.setSearchView(this);
    this.agQ = findViewById(a.f.search_edit_frame);
    this.agR = findViewById(a.f.search_plate);
    this.agS = findViewById(a.f.submit_area);
    this.agT = ((ImageView)findViewById(a.f.search_button));
    this.agU = ((ImageView)findViewById(a.f.search_go_btn));
    this.agV = ((ImageView)findViewById(a.f.search_close_btn));
    this.agW = ((ImageView)findViewById(a.f.search_voice_btn));
    this.ahd = ((ImageView)findViewById(a.f.search_mag_icon));
    r.setBackground(this.agR, paramAttributeSet.getDrawable(a.j.SearchView_queryBackground));
    r.setBackground(this.agS, paramAttributeSet.getDrawable(a.j.SearchView_submitBackground));
    this.agT.setImageDrawable(paramAttributeSet.getDrawable(a.j.SearchView_searchIcon));
    this.agU.setImageDrawable(paramAttributeSet.getDrawable(a.j.SearchView_goIcon));
    this.agV.setImageDrawable(paramAttributeSet.getDrawable(a.j.SearchView_closeIcon));
    this.agW.setImageDrawable(paramAttributeSet.getDrawable(a.j.SearchView_voiceIcon));
    this.ahd.setImageDrawable(paramAttributeSet.getDrawable(a.j.SearchView_searchIcon));
    this.ahe = paramAttributeSet.getDrawable(a.j.SearchView_searchHintIcon);
    bq.a(this.agT, getResources().getString(a.h.abc_searchview_description_search));
    this.ahf = paramAttributeSet.getResourceId(a.j.SearchView_suggestionRowLayout, a.g.abc_search_dropdown_item_icons_2line);
    this.ahg = paramAttributeSet.getResourceId(a.j.SearchView_commitIcon, 0);
    this.agT.setOnClickListener(this.ahH);
    this.agV.setOnClickListener(this.ahH);
    this.agU.setOnClickListener(this.ahH);
    this.agW.setOnClickListener(this.ahH);
    this.agP.setOnClickListener(this.ahH);
    this.agP.addTextChangedListener(this.ahL);
    this.agP.setOnEditorActionListener(this.ahJ);
    this.agP.setOnItemClickListener(this.ahK);
    this.agP.setOnItemSelectedListener(this.Mo);
    this.agP.setOnKeyListener(this.ahI);
    this.agP.setOnFocusChangeListener(new View.OnFocusChangeListener()
    {
      public final void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
      {
        if (SearchView.this.ahm != null) {
          SearchView.this.ahm.onFocusChange(SearchView.this, paramAnonymousBoolean);
        }
      }
    });
    setIconifiedByDefault(paramAttributeSet.getBoolean(a.j.SearchView_iconifiedByDefault, true));
    paramInt = paramAttributeSet.getDimensionPixelSize(a.j.SearchView_android_maxWidth, -1);
    if (paramInt != -1) {
      setMaxWidth(paramInt);
    }
    this.ahj = paramAttributeSet.getText(a.j.SearchView_defaultQueryHint);
    this.aht = paramAttributeSet.getText(a.j.SearchView_queryHint);
    paramInt = paramAttributeSet.getInt(a.j.SearchView_android_imeOptions, -1);
    if (paramInt != -1) {
      setImeOptions(paramInt);
    }
    paramInt = paramAttributeSet.getInt(a.j.SearchView_android_inputType, -1);
    if (paramInt != -1) {
      setInputType(paramInt);
    }
    setFocusable(paramAttributeSet.getBoolean(a.j.SearchView_android_focusable, true));
    paramAttributeSet.ajT.recycle();
    this.ahh = new Intent("android.speech.action.WEB_SEARCH");
    this.ahh.addFlags(268435456);
    this.ahh.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
    this.ahi = new Intent("android.speech.action.RECOGNIZE_SPEECH");
    this.ahi.addFlags(268435456);
    this.agX = findViewById(this.agP.getDropDownAnchor());
    if (this.agX != null) {
      this.agX.addOnLayoutChangeListener(new View.OnLayoutChangeListener()
      {
        public final void onLayoutChange(View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3, int paramAnonymousInt4, int paramAnonymousInt5, int paramAnonymousInt6, int paramAnonymousInt7, int paramAnonymousInt8)
        {
          paramAnonymousView = SearchView.this;
          Rect localRect;
          if (paramAnonymousView.agX.getWidth() > 1)
          {
            Resources localResources = paramAnonymousView.getContext().getResources();
            paramAnonymousInt3 = paramAnonymousView.agR.getPaddingLeft();
            localRect = new Rect();
            boolean bool = bw.bj(paramAnonymousView);
            if (!paramAnonymousView.ahp) {
              break label151;
            }
            paramAnonymousInt1 = localResources.getDimensionPixelSize(a.d.abc_dropdownitem_icon_width);
            paramAnonymousInt1 = localResources.getDimensionPixelSize(a.d.abc_dropdownitem_text_padding_left) + paramAnonymousInt1;
            paramAnonymousView.agP.getDropDownBackground().getPadding(localRect);
            if (!bool) {
              break label156;
            }
          }
          label151:
          label156:
          for (paramAnonymousInt2 = -localRect.left;; paramAnonymousInt2 = paramAnonymousInt3 - (localRect.left + paramAnonymousInt1))
          {
            paramAnonymousView.agP.setDropDownHorizontalOffset(paramAnonymousInt2);
            paramAnonymousInt2 = paramAnonymousView.agX.getWidth();
            paramAnonymousInt4 = localRect.left;
            paramAnonymousInt5 = localRect.right;
            paramAnonymousView.agP.setDropDownWidth(paramAnonymousInt1 + (paramAnonymousInt2 + paramAnonymousInt4 + paramAnonymousInt5) - paramAnonymousInt3);
            return;
            paramAnonymousInt1 = 0;
            break;
          }
        }
      });
    }
    ae(this.ahp);
    iA();
  }
  
  private Intent a(Cursor paramCursor)
  {
    try
    {
      localObject3 = bj.e(paramCursor, "suggest_intent_action");
      localObject1 = localObject3;
      if (localObject3 != null) {
        break label198;
      }
      localObject1 = this.ahB.getSuggestIntentAction();
    }
    catch (RuntimeException localRuntimeException)
    {
      for (;;)
      {
        Object localObject4;
        try
        {
          Object localObject1;
          String str;
          i = paramCursor.getPosition();
          Log.w("SearchView", "Search suggestions cursor at row " + i + " returned exception.", localRuntimeException);
          return null;
        }
        catch (RuntimeException paramCursor)
        {
          int i = -1;
          continue;
        }
        label198:
        do
        {
          localObject3 = localRuntimeException;
          break;
        } while (localRuntimeException != null);
        Object localObject3 = "android.intent.action.SEARCH";
        continue;
        label210:
        if (localObject4 == null) {
          Object localObject2 = null;
        }
      }
    }
    localObject4 = bj.e(paramCursor, "suggest_intent_data");
    localObject1 = localObject4;
    if (localObject4 == null) {
      localObject1 = this.ahB.getSuggestIntentData();
    }
    localObject4 = localObject1;
    if (localObject1 != null)
    {
      str = bj.e(paramCursor, "suggest_intent_data_id");
      localObject4 = localObject1;
      if (str != null)
      {
        localObject4 = (String)localObject1 + "/" + Uri.encode(str);
        break label210;
        for (;;)
        {
          localObject4 = bj.e(paramCursor, "suggest_intent_query");
          return a((String)localObject3, (Uri)localObject1, bj.e(paramCursor, "suggest_intent_extra_data"), (String)localObject4);
          localObject1 = Uri.parse((String)localObject4);
        }
      }
    }
  }
  
  private Intent a(String paramString1, Uri paramUri, String paramString2, String paramString3)
  {
    paramString1 = new Intent(paramString1);
    paramString1.addFlags(268435456);
    if (paramUri != null) {
      paramString1.setData(paramUri);
    }
    paramString1.putExtra("user_query", this.ahy);
    if (paramString3 != null) {
      paramString1.putExtra("query", paramString3);
    }
    if (paramString2 != null) {
      paramString1.putExtra("intent_extra_data_key", paramString2);
    }
    if (this.ahC != null) {
      paramString1.putExtra("app_data", this.ahC);
    }
    paramString1.setComponent(this.ahB.getSearchActivity());
    return paramString1;
  }
  
  private void ae(boolean paramBoolean)
  {
    boolean bool2 = true;
    int j = 8;
    this.ahq = paramBoolean;
    int i;
    boolean bool1;
    if (paramBoolean)
    {
      i = 0;
      if (TextUtils.isEmpty(this.agP.getText())) {
        break label123;
      }
      bool1 = true;
      label33:
      this.agT.setVisibility(i);
      af(bool1);
      View localView = this.agQ;
      if (!paramBoolean) {
        break label129;
      }
      i = 8;
      label60:
      localView.setVisibility(i);
      i = j;
      if (this.ahd.getDrawable() != null)
      {
        if (!this.ahp) {
          break label134;
        }
        i = j;
      }
      label87:
      this.ahd.setVisibility(i);
      ix();
      if (bool1) {
        break label139;
      }
    }
    label123:
    label129:
    label134:
    label139:
    for (paramBoolean = bool2;; paramBoolean = false)
    {
      ag(paramBoolean);
      iw();
      return;
      i = 8;
      break;
      bool1 = false;
      break label33;
      i = 0;
      break label60;
      i = 0;
      break label87;
    }
  }
  
  private void af(boolean paramBoolean)
  {
    int j = 8;
    int i = j;
    if (this.ahs)
    {
      i = j;
      if (iv())
      {
        i = j;
        if (hasFocus()) {
          if (!paramBoolean)
          {
            i = j;
            if (this.ahw) {}
          }
          else
          {
            i = 0;
          }
        }
      }
    }
    this.agU.setVisibility(i);
  }
  
  private void ag(boolean paramBoolean)
  {
    int i;
    if ((this.ahw) && (!this.ahq) && (paramBoolean))
    {
      i = 0;
      this.agU.setVisibility(8);
    }
    for (;;)
    {
      this.agW.setVisibility(i);
      return;
      i = 8;
    }
  }
  
  private int getPreferredHeight()
  {
    return getContext().getResources().getDimensionPixelSize(a.d.abc_search_view_preferred_height);
  }
  
  private int getPreferredWidth()
  {
    return getContext().getResources().getDimensionPixelSize(a.d.abc_search_view_preferred_width);
  }
  
  private void iA()
  {
    Object localObject2 = getQueryHint();
    SearchAutoComplete localSearchAutoComplete = this.agP;
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = "";
    }
    localObject2 = localObject1;
    if (this.ahp)
    {
      if (this.ahe != null) {
        break label46;
      }
      localObject2 = localObject1;
    }
    for (;;)
    {
      localSearchAutoComplete.setHint((CharSequence)localObject2);
      return;
      label46:
      int i = (int)(this.agP.getTextSize() * 1.25D);
      this.ahe.setBounds(0, 0, i, i);
      localObject2 = new SpannableStringBuilder("   ");
      ((SpannableStringBuilder)localObject2).setSpan(new ImageSpan(this.ahe), 1, 2, 33);
      ((SpannableStringBuilder)localObject2).append((CharSequence)localObject1);
    }
  }
  
  private boolean iv()
  {
    return ((this.ahs) || (this.ahw)) && (!this.ahq);
  }
  
  private void iw()
  {
    int j = 8;
    int i = j;
    if (iv()) {
      if (this.agU.getVisibility() != 0)
      {
        i = j;
        if (this.agW.getVisibility() != 0) {}
      }
      else
      {
        i = 0;
      }
    }
    this.agS.setVisibility(i);
  }
  
  private void ix()
  {
    int m = 1;
    int k = 0;
    int i;
    int j;
    label44:
    label56:
    Drawable localDrawable;
    if (!TextUtils.isEmpty(this.agP.getText()))
    {
      i = 1;
      j = m;
      if (i == 0)
      {
        if ((!this.ahp) || (this.ahz)) {
          break label99;
        }
        j = m;
      }
      localObject = this.agV;
      if (j == 0) {
        break label104;
      }
      j = k;
      ((ImageView)localObject).setVisibility(j);
      localDrawable = this.agV.getDrawable();
      if (localDrawable != null) {
        if (i == 0) {
          break label110;
        }
      }
    }
    label99:
    label104:
    label110:
    for (Object localObject = ENABLED_STATE_SET;; localObject = EMPTY_STATE_SET)
    {
      localDrawable.setState((int[])localObject);
      return;
      i = 0;
      break;
      j = 0;
      break label44;
      j = 8;
      break label56;
    }
  }
  
  private void iy()
  {
    post(this.ahE);
  }
  
  static boolean m(Context paramContext)
  {
    return paramContext.getResources().getConfiguration().orientation == 2;
  }
  
  final void G(String paramString)
  {
    paramString = a("android.intent.action.SEARCH", null, null, paramString);
    getContext().startActivity(paramString);
  }
  
  final boolean b(int paramInt, KeyEvent paramKeyEvent)
  {
    if (this.ahB == null) {}
    do
    {
      do
      {
        return false;
      } while ((this.ahr == null) || (paramKeyEvent.getAction() != 0) || (!paramKeyEvent.hasNoModifiers()));
      if ((paramInt == 66) || (paramInt == 84) || (paramInt == 61)) {
        return bR(this.agP.getListSelection());
      }
      if ((paramInt == 21) || (paramInt == 22))
      {
        if (paramInt == 21) {}
        for (paramInt = 0;; paramInt = this.agP.length())
        {
          this.agP.setSelection(paramInt);
          this.agP.setListSelection(0);
          this.agP.clearListSelection();
          ahD.a(this.agP);
          return true;
        }
      }
    } while ((paramInt != 19) || (this.agP.getListSelection() != 0));
    return false;
  }
  
  final boolean bR(int paramInt)
  {
    boolean bool = false;
    Object localObject;
    if ((this.ahn == null) || (!this.ahn.iH()))
    {
      localObject = this.ahr.getCursor();
      if ((localObject != null) && (((Cursor)localObject).moveToPosition(paramInt)))
      {
        localObject = a((Cursor)localObject);
        if (localObject == null) {}
      }
    }
    try
    {
      getContext().startActivity((Intent)localObject);
      SearchAutoComplete.a(this.agP, false);
      this.agP.dismissDropDown();
      bool = true;
      return bool;
    }
    catch (RuntimeException localRuntimeException)
    {
      for (;;)
      {
        Log.e("SearchView", "Failed launch activity: " + localObject, localRuntimeException);
      }
    }
  }
  
  public void clearFocus()
  {
    this.ahv = true;
    super.clearFocus();
    this.agP.clearFocus();
    SearchAutoComplete.a(this.agP, false);
    this.ahv = false;
  }
  
  public int getImeOptions()
  {
    return this.agP.getImeOptions();
  }
  
  public int getInputType()
  {
    return this.agP.getInputType();
  }
  
  public int getMaxWidth()
  {
    return this.by;
  }
  
  public CharSequence getQuery()
  {
    return this.agP.getText();
  }
  
  public CharSequence getQueryHint()
  {
    if (this.aht != null) {
      return this.aht;
    }
    if ((this.ahB != null) && (this.ahB.getHintId() != 0)) {
      return getContext().getText(this.ahB.getHintId());
    }
    return this.ahj;
  }
  
  int getSuggestionCommitIconResId()
  {
    return this.ahg;
  }
  
  int getSuggestionRowLayout()
  {
    return this.ahf;
  }
  
  public f getSuggestionsAdapter()
  {
    return this.ahr;
  }
  
  final void iB()
  {
    Editable localEditable = this.agP.getText();
    if ((localEditable != null) && (TextUtils.getTrimmedLength(localEditable) > 0))
    {
      if (this.ahk != null)
      {
        c localc = this.ahk;
        localEditable.toString();
        localc.iF();
      }
    }
    else {
      return;
    }
    if (this.ahB != null) {
      G(localEditable.toString());
    }
    SearchAutoComplete.a(this.agP, false);
    this.agP.dismissDropDown();
  }
  
  final void iC()
  {
    ae(false);
    this.agP.requestFocus();
    SearchAutoComplete.a(this.agP, true);
    if (this.aho != null) {
      this.aho.onClick(this);
    }
  }
  
  final void iD()
  {
    ae(this.ahq);
    iy();
    if (this.agP.hasFocus()) {
      iE();
    }
  }
  
  final void iE()
  {
    a locala = ahD;
    SearchAutoComplete localSearchAutoComplete = this.agP;
    if (locala.ahN != null) {}
    try
    {
      locala.ahN.invoke(localSearchAutoComplete, new Object[0]);
      locala = ahD;
      localSearchAutoComplete = this.agP;
      if (locala.ahO != null) {}
      try
      {
        locala.ahO.invoke(localSearchAutoComplete, new Object[0]);
        return;
      }
      catch (Exception localException1) {}
    }
    catch (Exception localException2)
    {
      for (;;) {}
    }
  }
  
  final void iz()
  {
    if (this.agP.hasFocus()) {}
    for (int[] arrayOfInt = FOCUSED_STATE_SET;; arrayOfInt = EMPTY_STATE_SET)
    {
      Drawable localDrawable = this.agR.getBackground();
      if (localDrawable != null) {
        localDrawable.setState(arrayOfInt);
      }
      localDrawable = this.agS.getBackground();
      if (localDrawable != null) {
        localDrawable.setState(arrayOfInt);
      }
      invalidate();
      return;
    }
  }
  
  final void m(CharSequence paramCharSequence)
  {
    boolean bool2 = true;
    Editable localEditable = this.agP.getText();
    this.ahy = localEditable;
    if (!TextUtils.isEmpty(localEditable))
    {
      bool1 = true;
      af(bool1);
      if (bool1) {
        break label101;
      }
    }
    label101:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      ag(bool1);
      ix();
      iw();
      if ((this.ahk != null) && (!TextUtils.equals(paramCharSequence, this.ahx))) {
        this.ahk.onQueryTextChange(paramCharSequence.toString());
      }
      this.ahx = paramCharSequence.toString();
      return;
      bool1 = false;
      break;
    }
  }
  
  public final void onActionViewCollapsed()
  {
    this.agP.setText("");
    this.agP.setSelection(this.agP.length());
    this.ahy = "";
    clearFocus();
    ae(true);
    this.agP.setImeOptions(this.ahA);
    this.ahz = false;
  }
  
  public final void onActionViewExpanded()
  {
    if (this.ahz) {
      return;
    }
    this.ahz = true;
    this.ahA = this.agP.getImeOptions();
    this.agP.setImeOptions(this.ahA | 0x2000000);
    this.agP.setText("");
    setIconified(false);
  }
  
  final void onCloseClicked()
  {
    if (TextUtils.isEmpty(this.agP.getText()))
    {
      if (this.ahp)
      {
        if (this.ahl != null) {
          this.ahl.onClose();
        }
        clearFocus();
        ae(true);
      }
      return;
    }
    this.agP.setText("");
    this.agP.requestFocus();
    SearchAutoComplete.a(this.agP, true);
  }
  
  protected void onDetachedFromWindow()
  {
    removeCallbacks(this.ahE);
    post(this.ahF);
    super.onDetachedFromWindow();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramBoolean)
    {
      SearchAutoComplete localSearchAutoComplete = this.agP;
      Rect localRect = this.agZ;
      localSearchAutoComplete.getLocationInWindow(this.ahb);
      getLocationInWindow(this.ahc);
      paramInt1 = this.ahb[1] - this.ahc[1];
      paramInt3 = this.ahb[0] - this.ahc[0];
      localRect.set(paramInt3, paramInt1, localSearchAutoComplete.getWidth() + paramInt3, localSearchAutoComplete.getHeight() + paramInt1);
      this.aha.set(this.agZ.left, 0, this.agZ.right, paramInt4 - paramInt2);
      if (this.agY == null)
      {
        this.agY = new f(this.aha, this.agZ, this.agP);
        setTouchDelegate(this.agY);
      }
    }
    else
    {
      return;
    }
    this.agY.a(this.aha, this.agZ);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (this.ahq)
    {
      super.onMeasure(paramInt1, paramInt2);
      return;
    }
    int j = View.MeasureSpec.getMode(paramInt1);
    int i = View.MeasureSpec.getSize(paramInt1);
    switch (j)
    {
    default: 
      paramInt1 = i;
      i = View.MeasureSpec.getMode(paramInt2);
      paramInt2 = View.MeasureSpec.getSize(paramInt2);
      switch (i)
      {
      }
      break;
    }
    for (;;)
    {
      super.onMeasure(View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824), View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824));
      return;
      if (this.by > 0)
      {
        paramInt1 = Math.min(this.by, i);
        break;
      }
      paramInt1 = Math.min(getPreferredWidth(), i);
      break;
      paramInt1 = i;
      if (this.by <= 0) {
        break;
      }
      paramInt1 = Math.min(this.by, i);
      break;
      if (this.by > 0)
      {
        paramInt1 = this.by;
        break;
      }
      paramInt1 = getPreferredWidth();
      break;
      paramInt2 = Math.min(getPreferredHeight(), paramInt2);
      continue;
      paramInt2 = getPreferredHeight();
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof e))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    paramParcelable = (e)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.EV);
    ae(paramParcelable.ahQ);
    requestLayout();
  }
  
  protected Parcelable onSaveInstanceState()
  {
    e locale = new e(super.onSaveInstanceState());
    locale.ahQ = this.ahq;
    return locale;
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    iy();
  }
  
  public boolean requestFocus(int paramInt, Rect paramRect)
  {
    if (this.ahv) {}
    while (!isFocusable()) {
      return false;
    }
    if (!this.ahq)
    {
      boolean bool = this.agP.requestFocus(paramInt, paramRect);
      if (bool) {
        ae(false);
      }
      return bool;
    }
    return super.requestFocus(paramInt, paramRect);
  }
  
  public void setAppSearchData(Bundle paramBundle)
  {
    this.ahC = paramBundle;
  }
  
  public void setIconified(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      onCloseClicked();
      return;
    }
    iC();
  }
  
  public void setIconifiedByDefault(boolean paramBoolean)
  {
    if (this.ahp == paramBoolean) {
      return;
    }
    this.ahp = paramBoolean;
    ae(paramBoolean);
    iA();
  }
  
  public void setImeOptions(int paramInt)
  {
    this.agP.setImeOptions(paramInt);
  }
  
  public void setInputType(int paramInt)
  {
    this.agP.setInputType(paramInt);
  }
  
  public void setMaxWidth(int paramInt)
  {
    this.by = paramInt;
    requestLayout();
  }
  
  public void setOnCloseListener(b paramb)
  {
    this.ahl = paramb;
  }
  
  public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener paramOnFocusChangeListener)
  {
    this.ahm = paramOnFocusChangeListener;
  }
  
  public void setOnQueryTextListener(c paramc)
  {
    this.ahk = paramc;
  }
  
  public void setOnSearchClickListener(View.OnClickListener paramOnClickListener)
  {
    this.aho = paramOnClickListener;
  }
  
  public void setOnSuggestionListener(d paramd)
  {
    this.ahn = paramd;
  }
  
  void setQuery(CharSequence paramCharSequence)
  {
    this.agP.setText(paramCharSequence);
    SearchAutoComplete localSearchAutoComplete = this.agP;
    if (TextUtils.isEmpty(paramCharSequence)) {}
    for (int i = 0;; i = paramCharSequence.length())
    {
      localSearchAutoComplete.setSelection(i);
      return;
    }
  }
  
  public void setQueryHint(CharSequence paramCharSequence)
  {
    this.aht = paramCharSequence;
    iA();
  }
  
  public void setQueryRefinementEnabled(boolean paramBoolean)
  {
    this.ahu = paramBoolean;
    bj localbj;
    if ((this.ahr instanceof bj))
    {
      localbj = (bj)this.ahr;
      if (!paramBoolean) {
        break label35;
      }
    }
    label35:
    for (int i = 2;; i = 1)
    {
      localbj.aiO = i;
      return;
    }
  }
  
  public void setSearchableInfo(SearchableInfo paramSearchableInfo)
  {
    boolean bool = true;
    this.ahB = paramSearchableInfo;
    int i;
    if (this.ahB != null)
    {
      this.agP.setThreshold(this.ahB.getSuggestThreshold());
      this.agP.setImeOptions(this.ahB.getImeOptions());
      int j = this.ahB.getInputType();
      i = j;
      if ((j & 0xF) == 1)
      {
        j &= 0xFFFEFFFF;
        i = j;
        if (this.ahB.getSuggestAuthority() != null) {
          i = j | 0x10000 | 0x80000;
        }
      }
      this.agP.setInputType(i);
      if (this.ahr != null) {
        this.ahr.changeCursor(null);
      }
      if (this.ahB.getSuggestAuthority() != null)
      {
        this.ahr = new bj(getContext(), this, this.ahB, this.ahG);
        this.agP.setAdapter(this.ahr);
        paramSearchableInfo = (bj)this.ahr;
        if (this.ahu)
        {
          i = 2;
          paramSearchableInfo.aiO = i;
        }
      }
      else
      {
        iA();
      }
    }
    else
    {
      if ((this.ahB == null) || (!this.ahB.getVoiceSearchEnabled())) {
        break label297;
      }
      if (!this.ahB.getVoiceSearchLaunchWebSearch()) {
        break label273;
      }
      paramSearchableInfo = this.ahh;
    }
    for (;;)
    {
      label215:
      if (paramSearchableInfo != null) {
        if (getContext().getPackageManager().resolveActivity(paramSearchableInfo, 65536) == null) {}
      }
      for (;;)
      {
        this.ahw = bool;
        if (this.ahw) {
          this.agP.setPrivateImeOptions("nm");
        }
        ae(this.ahq);
        return;
        i = 1;
        break;
        label273:
        if (!this.ahB.getVoiceSearchLaunchRecognizer()) {
          break label303;
        }
        paramSearchableInfo = this.ahi;
        break label215;
        bool = false;
        continue;
        label297:
        bool = false;
      }
      label303:
      paramSearchableInfo = null;
    }
  }
  
  public void setSubmitButtonEnabled(boolean paramBoolean)
  {
    this.ahs = paramBoolean;
    ae(this.ahq);
  }
  
  public void setSuggestionsAdapter(f paramf)
  {
    this.ahr = paramf;
    this.agP.setAdapter(this.ahr);
  }
  
  public static class SearchAutoComplete
    extends g
  {
    private int ahR = getThreshold();
    private SearchView ahS;
    private boolean ahT;
    final Runnable ahU = new Runnable()
    {
      public final void run()
      {
        SearchView.SearchAutoComplete.b(SearchView.SearchAutoComplete.this);
      }
    };
    
    public SearchAutoComplete(Context paramContext)
    {
      this(paramContext, null);
    }
    
    public SearchAutoComplete(Context paramContext, AttributeSet paramAttributeSet)
    {
      this(paramContext, paramAttributeSet, a.a.autoCompleteTextViewStyle);
    }
    
    public SearchAutoComplete(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
    {
      super(paramAttributeSet, paramInt);
    }
    
    private int getSearchViewTextMinWidthDp()
    {
      Configuration localConfiguration = getResources().getConfiguration();
      int i = localConfiguration.screenWidthDp;
      int j = localConfiguration.screenHeightDp;
      if ((i >= 960) && (j >= 720) && (localConfiguration.orientation == 2)) {
        return 256;
      }
      if ((i >= 600) || ((i >= 640) && (j >= 480))) {
        return 192;
      }
      return 160;
    }
    
    private void setImeVisibility(boolean paramBoolean)
    {
      InputMethodManager localInputMethodManager = (InputMethodManager)getContext().getSystemService("input_method");
      if (!paramBoolean)
      {
        this.ahT = false;
        removeCallbacks(this.ahU);
        localInputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
        return;
      }
      if (localInputMethodManager.isActive(this))
      {
        this.ahT = false;
        removeCallbacks(this.ahU);
        localInputMethodManager.showSoftInput(this, 0);
        return;
      }
      this.ahT = true;
    }
    
    public boolean enoughToFilter()
    {
      return (this.ahR <= 0) || (super.enoughToFilter());
    }
    
    public InputConnection onCreateInputConnection(EditorInfo paramEditorInfo)
    {
      paramEditorInfo = super.onCreateInputConnection(paramEditorInfo);
      if (this.ahT)
      {
        removeCallbacks(this.ahU);
        post(this.ahU);
      }
      return paramEditorInfo;
    }
    
    protected void onFinishInflate()
    {
      super.onFinishInflate();
      DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
      setMinWidth((int)TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), localDisplayMetrics));
    }
    
    protected void onFocusChanged(boolean paramBoolean, int paramInt, Rect paramRect)
    {
      super.onFocusChanged(paramBoolean, paramInt, paramRect);
      this.ahS.iD();
    }
    
    public boolean onKeyPreIme(int paramInt, KeyEvent paramKeyEvent)
    {
      if (paramInt == 4)
      {
        KeyEvent.DispatcherState localDispatcherState;
        if ((paramKeyEvent.getAction() == 0) && (paramKeyEvent.getRepeatCount() == 0))
        {
          localDispatcherState = getKeyDispatcherState();
          if (localDispatcherState != null) {
            localDispatcherState.startTracking(paramKeyEvent, this);
          }
          return true;
        }
        if (paramKeyEvent.getAction() == 1)
        {
          localDispatcherState = getKeyDispatcherState();
          if (localDispatcherState != null) {
            localDispatcherState.handleUpEvent(paramKeyEvent);
          }
          if ((paramKeyEvent.isTracking()) && (!paramKeyEvent.isCanceled()))
          {
            this.ahS.clearFocus();
            setImeVisibility(false);
            return true;
          }
        }
      }
      return super.onKeyPreIme(paramInt, paramKeyEvent);
    }
    
    public void onWindowFocusChanged(boolean paramBoolean)
    {
      super.onWindowFocusChanged(paramBoolean);
      if ((paramBoolean) && (this.ahS.hasFocus()) && (getVisibility() == 0))
      {
        this.ahT = true;
        if (SearchView.m(getContext())) {
          SearchView.ahD.a(this);
        }
      }
    }
    
    public void performCompletion() {}
    
    protected void replaceText(CharSequence paramCharSequence) {}
    
    void setSearchView(SearchView paramSearchView)
    {
      this.ahS = paramSearchView;
    }
    
    public void setThreshold(int paramInt)
    {
      super.setThreshold(paramInt);
      this.ahR = paramInt;
    }
  }
  
  private static final class a
  {
    Method ahN;
    Method ahO;
    private Method ahP;
    
    a()
    {
      try
      {
        this.ahN = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
        this.ahN.setAccessible(true);
        try
        {
          this.ahO = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
          this.ahO.setAccessible(true);
          try
          {
            this.ahP = AutoCompleteTextView.class.getMethod("ensureImeVisible", new Class[] { Boolean.TYPE });
            this.ahP.setAccessible(true);
            return;
          }
          catch (NoSuchMethodException localNoSuchMethodException1) {}
        }
        catch (NoSuchMethodException localNoSuchMethodException2)
        {
          for (;;) {}
        }
      }
      catch (NoSuchMethodException localNoSuchMethodException3)
      {
        for (;;) {}
      }
    }
    
    final void a(AutoCompleteTextView paramAutoCompleteTextView)
    {
      if (this.ahP != null) {}
      try
      {
        this.ahP.invoke(paramAutoCompleteTextView, new Object[] { Boolean.valueOf(true) });
        return;
      }
      catch (Exception paramAutoCompleteTextView) {}
    }
  }
  
  public static abstract interface b
  {
    public abstract boolean onClose();
  }
  
  public static abstract interface c
  {
    public abstract boolean iF();
    
    public abstract boolean onQueryTextChange(String paramString);
  }
  
  public static abstract interface d
  {
    public abstract boolean iG();
    
    public abstract boolean iH();
  }
  
  static final class e
    extends a
  {
    public static final Parcelable.Creator<e> CREATOR = new Parcelable.ClassLoaderCreator() {};
    boolean ahQ;
    
    public e(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      super(paramClassLoader);
      this.ahQ = ((Boolean)paramParcel.readValue(null)).booleanValue();
    }
    
    e(Parcelable paramParcelable)
    {
      super();
    }
    
    public final String toString()
    {
      return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.ahQ + "}";
    }
    
    public final void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeValue(Boolean.valueOf(this.ahQ));
    }
  }
  
  private static final class f
    extends TouchDelegate
  {
    private final View ahW;
    private final Rect ahX;
    private final Rect ahY;
    private final Rect ahZ;
    private final int aia;
    private boolean aib;
    
    public f(Rect paramRect1, Rect paramRect2, View paramView)
    {
      super(paramView);
      this.aia = ViewConfiguration.get(paramView.getContext()).getScaledTouchSlop();
      this.ahX = new Rect();
      this.ahZ = new Rect();
      this.ahY = new Rect();
      a(paramRect1, paramRect2);
      this.ahW = paramView;
    }
    
    public final void a(Rect paramRect1, Rect paramRect2)
    {
      this.ahX.set(paramRect1);
      this.ahZ.set(paramRect1);
      this.ahZ.inset(-this.aia, -this.aia);
      this.ahY.set(paramRect2);
    }
    
    public final boolean onTouchEvent(MotionEvent paramMotionEvent)
    {
      boolean bool3 = false;
      int j = (int)paramMotionEvent.getX();
      int k = (int)paramMotionEvent.getY();
      int i;
      boolean bool1;
      label57:
      boolean bool2;
      switch (paramMotionEvent.getAction())
      {
      default: 
        i = 1;
        bool1 = false;
        bool2 = bool3;
        if (bool1)
        {
          if ((i == 0) || (this.ahY.contains(j, k))) {
            break label203;
          }
          paramMotionEvent.setLocation(this.ahW.getWidth() / 2, this.ahW.getHeight() / 2);
        }
        break;
      }
      for (;;)
      {
        bool2 = this.ahW.dispatchTouchEvent(paramMotionEvent);
        return bool2;
        if (!this.ahX.contains(j, k)) {
          break;
        }
        this.aib = true;
        i = 1;
        bool1 = true;
        break label57;
        bool2 = this.aib;
        bool1 = bool2;
        if (bool2)
        {
          bool1 = bool2;
          if (!this.ahZ.contains(j, k))
          {
            i = 0;
            bool1 = bool2;
            break label57;
            bool1 = this.aib;
            this.aib = false;
          }
        }
        i = 1;
        break label57;
        label203:
        paramMotionEvent.setLocation(j - this.ahY.left, k - this.ahY.top);
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/SearchView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */