.class public Lio/intercom/android/sdk/views/IntercomToolbar;
.super Landroid/support/v7/widget/Toolbar;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/views/IntercomToolbar$Listener;
    }
.end annotation


# static fields
.field private static final TITLE_FADE_DURATION_MS:I = 0x96


# instance fields
.field private final activeStateView:Landroid/view/View;

.field private final avatar:Landroid/widget/ImageView;

.field private final backButton:Landroid/widget/ImageButton;

.field private final backButtonCountDrawable:Lio/intercom/android/sdk/views/BackButtonCountDrawable;

.field private final close:Landroid/widget/ImageButton;

.field private listener:Lio/intercom/android/sdk/views/IntercomToolbar$Listener;

.field private final subtitle:Landroid/widget/TextView;

.field final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/intercom/android/sdk/views/IntercomToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget v0, Lio/intercom/android/sdk/R$layout;->intercom_toolbar:I

    invoke-static {p1, v0, p0}, Lio/intercom/android/sdk/views/IntercomToolbar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_toolbar_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->title:Landroid/widget/TextView;

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_toolbar_subtitle:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->subtitle:Landroid/widget/TextView;

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_toolbar_close:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->close:Landroid/widget/ImageButton;

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_toolbar_inbox:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->backButton:Landroid/widget/ImageButton;

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_toolbar_avatar:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->avatar:Landroid/widget/ImageView;

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_toolbar_avatar_active_state:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->activeStateView:Landroid/view/View;

    new-instance v0, Lio/intercom/android/sdk/views/BackButtonCountDrawable;

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/IntercomToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/views/BackButtonCountDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->backButtonCountDrawable:Lio/intercom/android/sdk/views/BackButtonCountDrawable;

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->backButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->backButtonCountDrawable:Lio/intercom/android/sdk/views/BackButtonCountDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->close:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public fadeOutTitle(I)V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lio/intercom/android/sdk/views/IntercomToolbar$1;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/views/IntercomToolbar$1;-><init>(Lio/intercom/android/sdk/views/IntercomToolbar;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->listener:Lio/intercom/android/sdk/views/IntercomToolbar$Listener;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lio/intercom/android/sdk/R$id;->intercom_toolbar_close:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->listener:Lio/intercom/android/sdk/views/IntercomToolbar$Listener;

    invoke-interface {v0}, Lio/intercom/android/sdk/views/IntercomToolbar$Listener;->onCloseClicked()V

    goto :goto_0

    :cond_2
    sget v1, Lio/intercom/android/sdk/R$id;->intercom_toolbar_inbox:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->listener:Lio/intercom/android/sdk/views/IntercomToolbar$Listener;

    invoke-interface {v0}, Lio/intercom/android/sdk/views/IntercomToolbar$Listener;->onInboxClicked()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->listener:Lio/intercom/android/sdk/views/IntercomToolbar$Listener;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lio/intercom/android/sdk/R$id;->intercom_toolbar:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->listener:Lio/intercom/android/sdk/views/IntercomToolbar$Listener;

    invoke-interface {v0}, Lio/intercom/android/sdk/views/IntercomToolbar$Listener;->onToolbarClicked()V

    goto :goto_0
.end method

.method public setCloseButtonVisibility(I)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->close:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public setInboxButtonVisibility(I)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public setListener(Lio/intercom/android/sdk/views/IntercomToolbar$Listener;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->listener:Lio/intercom/android/sdk/views/IntercomToolbar$Listener;

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->subtitle:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setSubtitleVisibility(I)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x96

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/views/IntercomToolbar;->fadeOutTitle(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->title:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTitleAnimated(Ljava/lang/CharSequence;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x96

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/views/IntercomToolbar;->fadeOutTitle(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public setUnreadCount(Ljava/lang/Integer;)V
    .locals 2

    iget-object v1, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->backButtonCountDrawable:Lio/intercom/android/sdk/views/BackButtonCountDrawable;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lio/intercom/android/sdk/views/BackButtonCountDrawable;->setText(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUpNoteToolbar(Lio/intercom/android/sdk/models/Participant;ZLio/intercom/android/sdk/views/ActiveStatePresenter;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/IntercomToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lio/intercom/android/sdk/R$color;->intercom_note_title_grey:I

    invoke-static {v1, v2}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/IntercomToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lio/intercom/android/sdk/R$color;->intercom_note_grey:I

    invoke-static {v1, v2}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->close:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/IntercomToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lio/intercom/android/sdk/R$color;->intercom_grey_500:I

    invoke-static {v1, v2}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->backButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->activeStateView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->title:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->subtitle:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_toolbar_divider:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/views/IntercomToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Participant;->getAvatar()Lio/intercom/android/sdk/models/Avatar;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->avatar:Landroid/widget/ImageView;

    invoke-static {v0, v1, p4, p5}, Lio/intercom/android/sdk/utilities/AvatarUtils;->loadAvatarIntoView(Lio/intercom/android/sdk/models/Avatar;Landroid/widget/ImageView;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->activeStateView:Landroid/view/View;

    invoke-virtual {p3, p2, v0, p4}, Lio/intercom/android/sdk/views/ActiveStatePresenter;->presentStateDot(ZLandroid/view/View;Lio/intercom/android/sdk/identity/AppConfig;)V

    return-void
.end method

.method public setUpPostToolbar(Lio/intercom/android/sdk/models/Participant;ZLio/intercom/android/sdk/views/ActiveStatePresenter;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V
    .locals 3

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lio/intercom/android/sdk/views/IntercomToolbar;->setBackgroundColor(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->close:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->backButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->activeStateView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->title:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->subtitle:Landroid/widget/TextView;

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_toolbar_divider:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/views/IntercomToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Participant;->getAvatar()Lio/intercom/android/sdk/models/Avatar;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->avatar:Landroid/widget/ImageView;

    invoke-static {v0, v1, p4, p5}, Lio/intercom/android/sdk/utilities/AvatarUtils;->loadAvatarIntoView(Lio/intercom/android/sdk/models/Avatar;Landroid/widget/ImageView;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomToolbar;->activeStateView:Landroid/view/View;

    invoke-virtual {p3, p2, v0, p4}, Lio/intercom/android/sdk/views/ActiveStatePresenter;->presentStateDot(ZLandroid/view/View;Lio/intercom/android/sdk/identity/AppConfig;)V

    return-void
.end method
