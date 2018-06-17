.class public Lio/intercom/android/sdk/views/IntercomErrorView;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private actionButton:Landroid/widget/Button;

.field private subtitle:Landroid/widget/TextView;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/intercom/android/sdk/views/IntercomErrorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    sget v0, Lio/intercom/android/sdk/R$id;->empty_text_title:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/views/IntercomErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/intercom/android/sdk/views/IntercomErrorView;->titleView:Landroid/widget/TextView;

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomErrorView;->titleView:Landroid/widget/TextView;

    invoke-static {v0}, Lio/intercom/android/sdk/utilities/FontUtils;->setRobotoMediumTypeface(Landroid/widget/TextView;)V

    sget v0, Lio/intercom/android/sdk/R$id;->empty_text_subtitle:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/views/IntercomErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/intercom/android/sdk/views/IntercomErrorView;->subtitle:Landroid/widget/TextView;

    sget v0, Lio/intercom/android/sdk/R$id;->action_button:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/views/IntercomErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lio/intercom/android/sdk/views/IntercomErrorView;->actionButton:Landroid/widget/Button;

    return-void
.end method

.method public setActionButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomErrorView;->actionButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setActionButtonText(I)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomErrorView;->actionButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method public setActionButtonTextColor(I)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomErrorView;->actionButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public setActionButtonVisibility(I)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomErrorView;->actionButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomErrorView;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomErrorView;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomErrorView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
