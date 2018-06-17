package com.intercom.input.gallery;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.app.c.a;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.x;
import android.support.v7.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import java.util.ArrayList;
import java.util.List;

public abstract class f
  extends com.intercom.composer.b.c
  implements com.intercom.input.gallery.adapter.b, com.intercom.input.gallery.adapter.e, g
{
  private static final String ARG_EXPANDED = "expanded";
  public static final int GALLERY_FULL_SCREEN_REQUEST_CODE = 14;
  FrameLayout contentLayout;
  final d.a dataListener = new d.a()
  {
    public final void onError()
    {
      if (f.this.isAdded()) {
        f.this.showErrorScreen();
      }
    }
    
    public final void u(List<b> paramAnonymousList)
    {
      f.this.galleryImages.clear();
      f.this.galleryImages.addAll(paramAnonymousList);
      f.this.endlessRecyclerScrollListener.bmo = f.this.dataSource.getCount();
      f.this.recyclerAdapter.notifyDataSetChanged();
      if (f.this.isAdded()) {
        f.this.showEmptyOrPermissionScreen(0);
      }
    }
  };
  d dataSource;
  EmptyView emptyLayout;
  com.intercom.input.gallery.adapter.a endlessRecyclerScrollListener;
  boolean expanded;
  private final View.OnClickListener expanderClickListener = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      if (f.this.galleryInputExpandedListener != null) {
        f.this.galleryInputExpandedListener.onInputExpanded();
      }
      paramAnonymousView = GalleryInputFullScreenActivity.a(f.this.getActivity(), f.this.getClass(), f.this.getArguments());
      Bundle localBundle = android.support.v4.app.b.a(f.this.getActivity(), m.a.intercom_composer_slide_up, m.a.intercom_composer_stay).toBundle();
      f.this.startActivityForResult(paramAnonymousView, 14, localBundle);
    }
  };
  final List<b> galleryImages = new ArrayList();
  e galleryInputExpandedListener;
  i galleryOutputListener;
  private com.intercom.composer.e imageLoader;
  a injector;
  LinearLayoutManager layoutManager;
  com.intercom.input.gallery.adapter.c recyclerAdapter;
  RecyclerView recyclerView;
  
  public static Bundle createArguments(boolean paramBoolean)
  {
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("expanded", paramBoolean);
    return localBundle;
  }
  
  private void setUpAppBar(a parama, ViewGroup paramViewGroup)
  {
    parama = parama.getToolbar(paramViewGroup);
    paramViewGroup.addView(parama);
    ((android.support.v7.app.d)getActivity()).setSupportActionBar(parama);
    parama = ((android.support.v7.app.d)getActivity()).getSupportActionBar();
    if (parama != null)
    {
      parama.setDisplayHomeAsUpEnabled(true);
      parama.ep();
      parama.eq();
    }
  }
  
  private void setUpPreviewViews(a parama, ViewGroup paramViewGroup)
  {
    ImageButton localImageButton = (ImageButton)parama.getExpanderButton(this.contentLayout);
    if (localImageButton != null)
    {
      this.contentLayout.addView(localImageButton);
      localImageButton.setOnClickListener(this.expanderClickListener);
    }
    parama = parama.getSearchView(this.contentLayout);
    if (parama != null)
    {
      parama.setOnClickListener(this.expanderClickListener);
      paramViewGroup.addView(parama, 0);
    }
  }
  
  private void showPermissionPermanentlyDeniedDialog()
  {
    new c.a(getActivity()).setTitle(m.g.intercom_photo_access_denied).setMessage(m.g.intercom_go_to_device_settings).setPositiveButton(m.g.intercom_app_settings, new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface = Uri.fromParts("package", f.this.getActivity().getPackageName(), null);
        f.this.startActivity(new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", paramAnonymousDialogInterface));
      }
    }).setNegativeButton(m.g.intercom_not_now, null).show();
  }
  
  void checkPermissionAndFetchImages(boolean paramBoolean)
  {
    int i = this.dataSource.getPermissionStatus();
    switch (i)
    {
    default: 
      fetchImagesIfNotFetched();
    }
    do
    {
      do
      {
        return;
        showEmptyOrPermissionScreen(i);
      } while (!paramBoolean);
      this.dataSource.requestPermission();
      return;
      showEmptyOrPermissionScreen(i);
    } while (!paramBoolean);
    showPermissionPermanentlyDeniedDialog();
  }
  
  void fetchImagesIfNotFetched()
  {
    if (this.galleryImages.isEmpty()) {
      this.dataSource.getImages(0, null);
    }
  }
  
  public abstract a getInjector(f paramf);
  
  int getLayoutRes()
  {
    if (this.expanded) {
      return m.f.intercom_composer_fragment_composer_gallery_expanded;
    }
    return m.f.intercom_composer_fragment_composer_gallery;
  }
  
  void launchLightBoxActivity(b paramb)
  {
    android.support.v4.app.j localj = getActivity();
    startActivityForResult(GalleryLightBoxActivity.a(localj, paramb, getInjector(this).getLightBoxFragmentClass(this)), 14, android.support.v4.app.b.a(localj, m.a.intercom_composer_slide_up, m.a.intercom_composer_stay).toBundle());
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 == 14) && (paramInt2 == -1))
    {
      if (this.galleryOutputListener != null)
      {
        paramIntent = (b)paramIntent.getParcelableExtra("gallery_image");
        this.galleryOutputListener.onGalleryOutputReceived(paramIntent);
      }
      return;
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onAttach(Context paramContext)
  {
    super.onAttach(paramContext);
    if ((paramContext instanceof i)) {
      this.galleryOutputListener = ((i)paramContext);
    }
    if ((paramContext instanceof e)) {
      this.galleryInputExpandedListener = ((e)paramContext);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getArguments();
    if (paramBundle != null) {
      this.expanded = paramBundle.getBoolean("expanded", false);
    }
    int i;
    if (this.expanded) {
      i = getResources().getInteger(m.e.intercom_composer_expanded_column_count);
    }
    for (this.layoutManager = new GridLayoutManager(getContext(), i);; this.layoutManager = new LinearLayoutManager(getContext(), 0, false))
    {
      this.injector = getInjector(this);
      this.dataSource = this.injector.getDataSource(this);
      this.dataSource.setListener(this.dataListener);
      this.imageLoader = this.injector.getImageLoader(this);
      this.endlessRecyclerScrollListener = new com.intercom.input.gallery.adapter.a(this.layoutManager, this);
      this.recyclerAdapter = new com.intercom.input.gallery.adapter.c(LayoutInflater.from(getContext()), this.galleryImages, this.expanded, this, this.imageLoader);
      return;
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(getLayoutRes(), paramViewGroup, false);
    paramViewGroup = (ViewGroup)paramLayoutInflater.findViewById(m.d.gallery_root_view);
    this.recyclerView = ((RecyclerView)paramLayoutInflater.findViewById(m.d.gallery_recycler_view));
    this.emptyLayout = ((EmptyView)paramLayoutInflater.findViewById(m.d.gallery_empty_view));
    this.contentLayout = ((FrameLayout)paramLayoutInflater.findViewById(m.d.gallery_content_layout));
    if (this.expanded)
    {
      setUpAppBar(this.injector, paramViewGroup);
      this.recyclerView.a(new j(m.c.intercom_composer_toolbar_height));
    }
    for (;;)
    {
      this.emptyLayout.setActionButtonClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          switch (f.this.dataSource.getPermissionStatus())
          {
          default: 
            return;
          case 1: 
          case 3: 
            f.this.dataSource.requestPermission();
            return;
          }
          f.this.showPermissionPermanentlyDeniedDialog();
        }
      });
      this.emptyLayout.setThemeColor(this.injector.getThemeColor(getContext()));
      return paramLayoutInflater;
      setUpPreviewViews(this.injector, paramViewGroup);
    }
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    this.recyclerView.b(this.endlessRecyclerScrollListener);
    this.recyclerView.setLayoutManager(null);
  }
  
  public void onImageClicked(RecyclerView.x paramx)
  {
    int i = paramx.getAdapterPosition();
    if ((i >= 0) && (i < this.recyclerAdapter.getItemCount())) {
      launchLightBoxActivity((b)this.recyclerAdapter.galleryImages.get(i));
    }
  }
  
  public void onInputDeselected() {}
  
  public void onInputReselected() {}
  
  public void onInputSelected()
  {
    checkPermissionAndFetchImages(true);
  }
  
  public void onLoadMore()
  {
    if ((!this.galleryImages.isEmpty()) && (!this.dataSource.isLoading())) {
      this.dataSource.getImages(this.galleryImages.size(), null);
    }
  }
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    checkPermissionAndFetchImages(false);
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.recyclerView.setLayoutManager(this.layoutManager);
    this.recyclerView.setAdapter(this.recyclerAdapter);
    this.recyclerView.a(this.endlessRecyclerScrollListener);
    if (this.expanded) {
      onInputSelected();
    }
    this.endlessRecyclerScrollListener.bmo = this.dataSource.getCount();
  }
  
  protected void passDataOnViewCreated(Bundle paramBundle) {}
  
  public void setGalleryExpandedListener(e parame)
  {
    this.galleryInputExpandedListener = parame;
  }
  
  public void setGalleryListener(i parami)
  {
    this.galleryOutputListener = parami;
  }
  
  void showEmptyOrPermissionScreen(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 1: 
    case 2: 
      this.emptyLayout.setVisibility(0);
      this.emptyLayout.setTitle(m.g.intercom_photo_access_denied);
      this.emptyLayout.setSubtitle(m.g.intercom_allow_storage_access);
      this.emptyLayout.setActionButtonVisibility(0);
      this.contentLayout.setVisibility(8);
      return;
    case 3: 
      this.emptyLayout.setVisibility(0);
      this.emptyLayout.setTitle(m.g.intercom_access_photos);
      this.emptyLayout.setSubtitle(m.g.intercom_storage_access_request);
      this.emptyLayout.setActionButtonVisibility(8);
      this.contentLayout.setVisibility(8);
      return;
    }
    if (this.galleryImages.isEmpty())
    {
      this.emptyLayout.setVisibility(0);
      this.emptyLayout.setActionButtonVisibility(8);
      this.emptyLayout.setTitle(this.injector.getEmptyViewTitle(getResources()));
      this.emptyLayout.setSubtitle(this.injector.getEmptyViewSubtitle(getResources()));
      this.contentLayout.setVisibility(8);
      return;
    }
    this.emptyLayout.setVisibility(8);
    this.contentLayout.setVisibility(0);
  }
  
  void showErrorScreen()
  {
    this.emptyLayout.setVisibility(0);
    this.emptyLayout.setActionButtonVisibility(8);
    this.emptyLayout.setTitle(this.injector.getErrorViewTitle(getResources()));
    this.emptyLayout.setSubtitle(this.injector.getErrorViewSubtitle(getResources()));
    this.contentLayout.setVisibility(8);
  }
  
  public static abstract interface a
  {
    public abstract d getDataSource(f paramf);
    
    public abstract String getEmptyViewSubtitle(Resources paramResources);
    
    public abstract String getEmptyViewTitle(Resources paramResources);
    
    public abstract String getErrorViewSubtitle(Resources paramResources);
    
    public abstract String getErrorViewTitle(Resources paramResources);
    
    public abstract View getExpanderButton(ViewGroup paramViewGroup);
    
    public abstract com.intercom.composer.e getImageLoader(f paramf);
    
    public abstract Class<? extends h> getLightBoxFragmentClass(f paramf);
    
    public abstract View getSearchView(ViewGroup paramViewGroup);
    
    public abstract int getThemeColor(Context paramContext);
    
    public abstract Toolbar getToolbar(ViewGroup paramViewGroup);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/intercom/input/gallery/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */