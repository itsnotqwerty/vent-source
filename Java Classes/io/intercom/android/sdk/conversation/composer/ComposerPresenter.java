package io.intercom.android.sdk.conversation.composer;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.i;
import android.support.v4.app.n;
import android.support.v4.app.t;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import com.intercom.composer.ComposerView;
import com.intercom.composer.b.b.e;
import com.intercom.composer.c;
import com.intercom.composer.f;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.id;
import io.intercom.android.sdk.actions.Actions;
import io.intercom.android.sdk.conversation.composer.galleryinput.GalleryInputManager;
import io.intercom.android.sdk.conversation.composer.textinput.TextInputManager;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.identity.UserIdentity;
import io.intercom.android.sdk.metrics.MetricTracker;
import io.intercom.android.sdk.nexus.NexusClient;
import io.intercom.android.sdk.state.State;
import io.intercom.android.sdk.store.Store;
import java.util.ArrayList;
import java.util.List;

public class ComposerPresenter
  implements f
{
  private static final int SELECT_INPUT_DELAY_MS = 100;
  private final com.intercom.composer.b composerFragment;
  private final FrameLayout composerLayout;
  private String conversationId;
  private final Runnable defaultInputRunnable = new Runnable()
  {
    public void run()
    {
      com.intercom.composer.b localb = ComposerPresenter.this.composerFragment;
      com.intercom.composer.b.b localb1 = localb.ds("text_input");
      if (localb1 != null) {
        localb.bkD.a(localb1, true, true);
      }
    }
  };
  private final GalleryInputManager galleryInputManager;
  private final Handler handler = new Handler(Looper.getMainLooper());
  private final InputDrawableManager inputDrawableManager;
  private InputProvider inputProvider;
  private final MetricTracker metricTracker;
  private final Store<State> store;
  private final TextInputManager textInputManager;
  
  public ComposerPresenter(Listener paramListener, FrameLayout paramFrameLayout, n paramn, LayoutInflater paramLayoutInflater, NexusClient paramNexusClient, UserIdentity paramUserIdentity, Provider<AppConfig> paramProvider, MetricTracker paramMetricTracker, String paramString1, String paramString2, Store<State> paramStore, Context paramContext, int paramInt)
  {
    this.store = paramStore;
    this.composerLayout = paramFrameLayout;
    this.metricTracker = paramMetricTracker;
    this.conversationId = paramString1;
    this.inputDrawableManager = new InputDrawableManager(paramContext, ((AppConfig)paramProvider.get()).getBaseColor());
    paramFrameLayout = paramn.w(com.intercom.composer.b.class.getName());
    if ((paramFrameLayout instanceof com.intercom.composer.b))
    {
      this.composerFragment = ((com.intercom.composer.b)paramFrameLayout);
      this.composerFragment.bkB = new c()
      {
        public List<com.intercom.composer.b.b> getInputs()
        {
          return ComposerPresenter.this.inputProvider.getInputs();
        }
      };
      this.composerFragment.bkC = this;
      this.textInputManager = new TextInputManager(paramContext, paramLayoutInflater, paramUserIdentity, paramNexusClient, paramMetricTracker, paramString1, paramString2, this.inputDrawableManager, paramStore, paramListener);
      this.galleryInputManager = new GalleryInputManager(paramContext, this.inputDrawableManager, paramListener, paramMetricTracker, paramString1);
      boolean bool2 = true;
      bool1 = bool2;
      if (Build.VERSION.SDK_INT >= 16)
      {
        bool1 = bool2;
        if (Build.VERSION.SDK_INT < 23) {
          if (android.support.v4.content.a.c(paramContext, "android.permission.READ_EXTERNAL_STORAGE") != 0) {
            break label264;
          }
        }
      }
    }
    label264:
    for (boolean bool1 = true;; bool1 = false)
    {
      setUpInputs(paramn, bool1);
      return;
      this.composerFragment = com.intercom.composer.b.dj(paramInt);
      paramn.cG().b(R.id.composer_container, this.composerFragment, com.intercom.composer.b.class.getName()).commit();
      break;
    }
  }
  
  private void addInputsToProvider(List paramList)
  {
    this.inputProvider.addInputs(paramList);
  }
  
  private void setUpInputs(n paramn, boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(this.textInputManager.createInput());
    localArrayList.add(this.galleryInputManager.createGifInput());
    if (paramBoolean) {
      localArrayList.add(this.galleryInputManager.createGalleryInput());
    }
    i locali = paramn.w(InputProvider.class.getName());
    if (locali == null)
    {
      this.inputProvider = new InputProvider();
      addInputsToProvider(localArrayList);
      paramn.cG().a(this.inputProvider, InputProvider.class.getName()).commit();
    }
    do
    {
      return;
      this.inputProvider = ((InputProvider)locali);
    } while (!this.inputProvider.getInputs().isEmpty());
    addInputsToProvider(localArrayList);
  }
  
  public void cleanup()
  {
    this.textInputManager.cleanup();
  }
  
  public void hideComposer()
  {
    this.composerLayout.setVisibility(8);
  }
  
  public boolean isOpen()
  {
    com.intercom.composer.b.b localb = this.composerFragment.bkD.getSelectedInput();
    if (localb != null)
    {
      i = 1;
      if (i == 0) {
        break label46;
      }
      if ((localb instanceof com.intercom.composer.b.c.b)) {
        break label41;
      }
    }
    label41:
    for (int i = 1;; i = 0)
    {
      if (i == 0) {
        break label46;
      }
      return true;
      i = 0;
      break;
    }
    label46:
    return false;
  }
  
  public void onBackPressed()
  {
    ComposerView localComposerView = this.composerFragment.bkD;
    Object localObject = localComposerView.getSelectedInput();
    if ((localObject != null) && (!localObject.equals(localComposerView.inputs.get(0)))) {
      localComposerView.a((com.intercom.composer.b.b)localComposerView.inputs.get(0), false, false);
    }
    for (;;)
    {
      localComposerView.bkS.vX();
      return;
      localObject = localComposerView.bkR;
      ((e)localObject).blF = null;
      ((e)localObject).notifyDataSetChanged();
    }
  }
  
  public void onInputSelected(com.intercom.composer.b.b paramb)
  {
    this.store.dispatch(Actions.composerInputChanged());
    this.metricTracker.clickedInput(this.conversationId, paramb.getUniqueIdentifier());
  }
  
  public void requestFocus()
  {
    this.textInputManager.requestFocus();
  }
  
  public void returnToDefaultInput()
  {
    this.handler.postDelayed(this.defaultInputRunnable, 100L);
  }
  
  public void setConversationId(String paramString)
  {
    this.conversationId = paramString;
    this.textInputManager.setConversationId(paramString);
    this.galleryInputManager.setConversationId(paramString);
  }
  
  public void setHint(int paramInt)
  {
    this.textInputManager.setHint(paramInt);
  }
  
  public void showComposer()
  {
    this.composerLayout.setVisibility(0);
  }
  
  public void updateMaxLines()
  {
    this.textInputManager.updateMaxLines();
  }
  
  public static abstract interface Listener
  {
    public abstract void onRemoteImageSelected(com.intercom.input.gallery.b paramb);
    
    public abstract void onSendButtonPressed(CharSequence paramCharSequence);
    
    public abstract void onUploadImageSelected(com.intercom.input.gallery.b paramb);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/conversation/composer/ComposerPresenter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */