.class final Lio/branch/referral/l$1;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/referral/l;->b(Lio/branch/referral/l$a;Landroid/content/Context;Lio/branch/referral/l$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cxF:Lio/branch/referral/l$a;

.field final synthetic cxG:Lio/branch/referral/l$b;

.field final synthetic cxH:Lio/branch/referral/l;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lio/branch/referral/l;Lio/branch/referral/l$a;Lio/branch/referral/l$b;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lio/branch/referral/l$1;->cxH:Lio/branch/referral/l;

    iput-object p2, p0, Lio/branch/referral/l$1;->cxF:Lio/branch/referral/l$a;

    iput-object p3, p0, Lio/branch/referral/l$1;->cxG:Lio/branch/referral/l$b;

    iput-object p4, p0, Lio/branch/referral/l$1;->val$webView:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 10

    const/4 v9, -0x1

    const/4 v8, 0x0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v1, p0, Lio/branch/referral/l$1;->cxH:Lio/branch/referral/l;

    iget-object v2, p0, Lio/branch/referral/l$1;->cxF:Lio/branch/referral/l$a;

    iget-object v3, p0, Lio/branch/referral/l$1;->cxG:Lio/branch/referral/l$b;

    iget-object v4, p0, Lio/branch/referral/l$1;->val$webView:Landroid/webkit/WebView;

    iget-boolean v0, v1, Lio/branch/referral/l;->cxD:Z

    if-nez v0, :cond_2

    invoke-static {}, Lio/branch/referral/d;->Gt()Lio/branch/referral/d;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lio/branch/referral/d;->Gt()Lio/branch/referral/d;

    move-result-object v0

    iget-object v0, v0, Lio/branch/referral/d;->cwj:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-static {}, Lio/branch/referral/d;->Gt()Lio/branch/referral/d;

    move-result-object v0

    iget-object v0, v0, Lio/branch/referral/d;->cwj:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v2, Lio/branch/referral/l$a;->cxI:Ljava/lang/String;

    invoke-static {v5}, Lio/branch/referral/q;->bT(Landroid/content/Context;)Lio/branch/referral/q;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "bnc_branch_view_use_"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6}, Lio/branch/referral/q;->eO(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Lio/branch/referral/q;->setInteger(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lio/branch/referral/l;->cxC:Ljava/lang/String;

    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v4, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v6, v1, Lio/branch/referral/l;->cxE:Landroid/app/Dialog;

    if-eqz v6, :cond_1

    iget-object v6, v1, Lio/branch/referral/l;->cxE:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v3, :cond_0

    iget-object v0, v2, Lio/branch/referral/l$a;->cxJ:Ljava/lang/String;

    invoke-interface {v3, v0}, Lio/branch/referral/l$b;->eC(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v6, Landroid/app/Dialog;

    const v7, 0x103000a

    invoke-direct {v6, v0, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v6, v1, Lio/branch/referral/l;->cxE:Landroid/app/Dialog;

    iget-object v0, v1, Lio/branch/referral/l;->cxE:Landroid/app/Dialog;

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {v4, v8}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, v1, Lio/branch/referral/l;->cxE:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-static {v5}, Lio/branch/referral/l;->br(Landroid/view/View;)V

    invoke-static {v4}, Lio/branch/referral/l;->br(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lio/branch/referral/l;->cxy:Z

    iget-object v0, v1, Lio/branch/referral/l;->cxE:Landroid/app/Dialog;

    new-instance v4, Lio/branch/referral/l$2;

    invoke-direct {v4, v1, v3, v2}, Lio/branch/referral/l$2;-><init>(Lio/branch/referral/l;Lio/branch/referral/l$b;Lio/branch/referral/l$a;)V

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    :cond_2
    iput-boolean v8, v1, Lio/branch/referral/l;->cxy:Z

    if-eqz v3, :cond_0

    iget-object v0, v2, Lio/branch/referral/l$a;->cxJ:Ljava/lang/String;

    invoke-interface {v3, v0}, Lio/branch/referral/l$b;->eC(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/referral/l$1;->cxH:Lio/branch/referral/l;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/branch/referral/l;->cxD:Z

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lio/branch/referral/l$1;->cxH:Lio/branch/referral/l;

    invoke-virtual {v0, p2}, Lio/branch/referral/l;->eJ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lio/branch/referral/l$1;->cxH:Lio/branch/referral/l;

    iget-object v1, v1, Lio/branch/referral/l;->cxE:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/branch/referral/l$1;->cxH:Lio/branch/referral/l;

    iget-object v1, v1, Lio/branch/referral/l;->cxE:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method
