.class public final Lcom/vent/ActStore;
.super Lcom/vent/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/ActStore$a;
    }
.end annotation


# instance fields
.field bVI:Lcom/vent/a/x;

.field bVp:I

.field bVq:I

.field private bYr:Lcom/vent/ActStore$a;

.field bYs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/vent/a/m;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field bYt:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vent/a/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a;-><init>()V

    return-void
.end method

.method public static a(Lcom/vent/a;Lcom/vent/a/x;)V
    .locals 6

    sget-object v0, Lcom/vent/bb;->ciO:Ljava/util/Map;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lcom/vent/ActStore$1;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "api/v1/users/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/vent/a/x;->cjy:Lcom/vent/a/m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/received_emotion_category_ids"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GET"

    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/vent/ActStore$1;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/vent/a;Lcom/vent/a/x;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActStore;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x2a

    invoke-virtual {p0, v0, v1}, Lcom/vent/a;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/vent/a;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :pswitch_0
    if-eqz p3, :cond_1

    const-string v1, "closeStore"

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/vent/ActStore;->finish()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/vent/ActStore;->bYr:Lcom/vent/ActStore$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActStore;->bYr:Lcom/vent/ActStore$a;

    invoke-virtual {v0}, Lcom/vent/ActStore$a;->notifyDataSetChanged()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_0
    .end packed-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/vent/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b003b

    invoke-virtual {p0, v0}, Lcom/vent/ActStore;->setContentView(I)V

    const v0, 0x7f0902b5

    invoke-virtual {p0, v0}, Lcom/vent/ActStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/vent/ActStore;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/vent/ActStore;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    sget-object v0, Lcom/vent/bb;->ciP:Ljava/util/Map;

    invoke-static {v0}, Lcom/vent/d/c;->l(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/ActStore;->finish()V

    :goto_0
    return-void

    :cond_0
    const v0, -0x7f7f80

    iput v0, p0, Lcom/vent/ActStore;->bVp:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/vent/ActStore;->bVq:I

    invoke-virtual {p0}, Lcom/vent/ActStore;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_gift"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    iput-object v0, p0, Lcom/vent/ActStore;->bVI:Lcom/vent/a/x;

    invoke-virtual {p0}, Lcom/vent/ActStore;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "emotion_category_ids"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActStore;->bYt:Ljava/util/ArrayList;

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/vent/ActStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$i;)V

    if-nez p1, :cond_1

    sget-object v0, Lcom/vent/bb;->ciT:Ljava/util/Map;

    iput-object v0, p0, Lcom/vent/ActStore;->bYs:Ljava/util/Map;

    invoke-static {}, Lcom/vent/bb;->EG()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/vent/bb;->ciT:Ljava/util/Map;

    invoke-static {}, Lcom/vent/bb;->EC()V

    goto :goto_0

    :cond_1
    const-string v0, "emotCatHashes_prev"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/vent/ActStore;->bYs:Ljava/util/Map;

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Lcom/vent/a/m;

    invoke-direct {v4, v0}, Lcom/vent/a/m;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method protected final onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/ActStore;->bYr:Lcom/vent/ActStore$a;

    invoke-super {p0}, Lcom/vent/a;->onDestroy()V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/vent/a;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/vent/ActStore;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/vent/a;->onResume()V

    iget-object v0, p0, Lcom/vent/ActStore;->bYr:Lcom/vent/ActStore$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vent/ActStore$a;

    invoke-direct {v0, p0, p0}, Lcom/vent/ActStore$a;-><init>(Lcom/vent/ActStore;Lcom/vent/a;)V

    iput-object v0, p0, Lcom/vent/ActStore;->bYr:Lcom/vent/ActStore$a;

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/vent/ActStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/vent/ActStore;->bYr:Lcom/vent/ActStore$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    :cond_0
    return-void
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/vent/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v3, "emotCatHashes_prev"

    iget-object v0, p0, Lcom/vent/ActStore;->bYs:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/a/m;

    invoke-virtual {v1}, Lcom/vent/a/m;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method
