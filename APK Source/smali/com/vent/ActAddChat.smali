.class public final Lcom/vent/ActAddChat;
.super Lcom/vent/a;

# interfaces
.implements Landroid/support/v4/widget/n$b;
.implements Landroid/text/TextWatcher;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field bTl:Lcom/vent/p;

.field bTm:Ljava/lang/String;

.field bTn:Ljava/lang/String;

.field q:Ljava/lang/String;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a;-><init>()V

    return-void
.end method

.method public static l(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActAddChat;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final em()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/vent/ActAddChat;->f(ZZ)V

    return-void
.end method

.method final f(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/vent/ActAddChat;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vent/ActAddChat$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/vent/ActAddChat$2;-><init>(Lcom/vent/ActAddChat;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/vent/a;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string v0, "cmd"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "user"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vent/ActAddChat;->bTl:Lcom/vent/p;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vent/ActAddChat;->bTl:Lcom/vent/p;

    iget-object v1, v1, Lcom/vent/p;->cbg:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vent/ActAddChat;->bTl:Lcom/vent/p;

    iget-object v1, v1, Lcom/vent/p;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Lcom/vent/a/x;->EN()Lcom/vent/a/c;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    iget-object v2, p0, Lcom/vent/ActAddChat;->bTl:Lcom/vent/p;

    iget-object v2, v2, Lcom/vent/p;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vent/ActAddChat;->bTl:Lcom/vent/p;

    invoke-virtual {v0, v1}, Lcom/vent/p;->notifyItemChanged(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/vent/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/vent/ActAddChat;->setContentView(I)V

    invoke-virtual {p0}, Lcom/vent/ActAddChat;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/vent/ActAddChat;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    const v1, 0x7f0f00c0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->setTitle(I)V

    iget-object v0, p0, Lcom/vent/ActAddChat;->bTl:Lcom/vent/p;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vent/ActAddChat$1;

    invoke-direct {v0, p0, p0}, Lcom/vent/ActAddChat$1;-><init>(Lcom/vent/ActAddChat;Lcom/vent/a;)V

    iput-object v0, p0, Lcom/vent/ActAddChat;->bTl:Lcom/vent/p;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/vent/ActAddChat;->bTl:Lcom/vent/p;

    const-string v1, "adapter"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vent/p;->t(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/vent/ActAddChat;->bTl:Lcom/vent/p;

    invoke-virtual {v0}, Lcom/vent/p;->notifyDataSetChanged()V

    const-string v0, "url_requested"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActAddChat;->bTm:Ljava/lang/String;

    const-string v0, "q"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActAddChat;->q:Ljava/lang/String;

    const-string v0, "q2"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActAddChat;->bTn:Ljava/lang/String;

    :goto_0
    const v0, 0x7f09025f

    invoke-virtual {p0, v0}, Lcom/vent/ActAddChat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/vent/ActAddChat;->bTl:Lcom/vent/p;

    const v0, 0x7f09029d

    invoke-virtual {p0, v0}, Lcom/vent/ActAddChat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/n;

    iput-object v0, v1, Lcom/vent/p;->cbb:Landroid/support/v4/widget/n;

    iget-object v0, p0, Lcom/vent/ActAddChat;->bTl:Lcom/vent/p;

    iget-object v0, v0, Lcom/vent/p;->cbb:Landroid/support/v4/widget/n;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/n;->setOnRefreshListener(Landroid/support/v4/widget/n$b;)V

    iget-object v0, p0, Lcom/vent/ActAddChat;->bTl:Lcom/vent/p;

    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/vent/ActAddChat;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/vent/p;->cba:Landroid/view/View;

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/vent/ActAddChat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/vent/ActAddChat;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/vent/ActAddChat;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    iget-object v0, p0, Lcom/vent/ActAddChat;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/vent/ActAddChat;->bTl:Lcom/vent/p;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    iget-object v0, p0, Lcom/vent/ActAddChat;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$i;)V

    iget-object v0, p0, Lcom/vent/ActAddChat;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/vent/views/a;

    invoke-direct {v1, p0}, Lcom/vent/views/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$h;)V

    iget-object v0, p0, Lcom/vent/ActAddChat;->bTl:Lcom/vent/p;

    invoke-virtual {v0, v2, v2}, Lcom/vent/p;->g(ZZ)V

    return-void

    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/vent/ActAddChat;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vent/ActAddChat;->bTn:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vent/ActAddChat;->bTm:Ljava/lang/String;

    goto :goto_0
.end method

.method protected final onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/ActAddChat;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/vent/ActAddChat;->bTl:Lcom/vent/p;

    invoke-super {p0}, Lcom/vent/a;->onDestroy()V

    return-void
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Lcom/vent/a;->onResume()V

    iget-object v0, p0, Lcom/vent/ActAddChat;->bTl:Lcom/vent/p;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/ActAddChat;->bTl:Lcom/vent/p;

    iget-object v0, v0, Lcom/vent/p;->cbg:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/vent/ActAddChat;->bTl:Lcom/vent/p;

    iget-wide v2, v2, Lcom/vent/p;->bZY:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/vent/d/c;->bE(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vent/ActAddChat;->f(ZZ)V

    :cond_1
    const-string v0, "StartNewChat"

    invoke-static {p0, v0}, Lcom/vent/ax;->v(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vent/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "adapter"

    iget-object v1, p0, Lcom/vent/ActAddChat;->bTl:Lcom/vent/p;

    invoke-virtual {v1}, Lcom/vent/p;->CG()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "url_requested"

    iget-object v1, p0, Lcom/vent/ActAddChat;->bTm:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "q"

    iget-object v1, p0, Lcom/vent/ActAddChat;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "q2"

    iget-object v1, p0, Lcom/vent/ActAddChat;->bTn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/ActAddChat;->q:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/vent/ActAddChat;->q:Ljava/lang/String;

    invoke-virtual {p0, v2, v2}, Lcom/vent/ActAddChat;->f(ZZ)V

    :cond_0
    return-void
.end method
