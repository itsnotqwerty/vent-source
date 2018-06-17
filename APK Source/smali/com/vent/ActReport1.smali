.class public final Lcom/vent/ActReport1;
.super Lcom/vent/a;

# interfaces
.implements Landroid/support/v4/widget/n$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/ActReport1$a;
    }
.end annotation


# instance fields
.field bXB:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vent/a/u;",
            ">;"
        }
    .end annotation
.end field

.field bXC:Lcom/vent/ActReport1$a;

.field bXD:Landroid/os/Parcelable;

.field bXE:Lcom/vent/a/x;

.field bXF:Landroid/support/v4/widget/n;

.field type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a;-><init>()V

    return-void
.end method

.method private Cf()V
    .locals 3

    iget-object v0, p0, Lcom/vent/ActReport1;->bXF:Landroid/support/v4/widget/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActReport1;->bXF:Landroid/support/v4/widget/n;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/n;->setRefreshing(Z)V

    :cond_0
    new-instance v0, Lcom/vent/ActReport1$1;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "api/v1/report_reasons.json?q%5bobject_type_eq%5d="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/vent/ActReport1;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET"

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/vent/ActReport1$1;-><init>(Lcom/vent/ActReport1;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;ILcom/vent/a/x;Landroid/os/Parcelable;)V
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActReport1;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "user"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "data"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0x16

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method public final em()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/ActReport1;->Cf()V

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Lcom/vent/a;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-ne p2, v0, :cond_0

    invoke-virtual {p0, v0, p3}, Lcom/vent/ActReport1;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/vent/ActReport1;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/vent/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b0033

    invoke-virtual {p0, v0}, Lcom/vent/ActReport1;->setContentView(I)V

    invoke-virtual {p0}, Lcom/vent/ActReport1;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/vent/ActReport1;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    const v1, 0x7f0f00fd

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->setTitle(I)V

    invoke-virtual {p0}, Lcom/vent/ActReport1;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    iput-object v0, p0, Lcom/vent/ActReport1;->bXE:Lcom/vent/a/x;

    invoke-virtual {p0}, Lcom/vent/ActReport1;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActReport1;->bXD:Landroid/os/Parcelable;

    invoke-virtual {p0}, Lcom/vent/ActReport1;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vent/ActReport1;->type:I

    new-instance v0, Lcom/vent/ActReport1$a;

    invoke-direct {v0, p0}, Lcom/vent/ActReport1$a;-><init>(Lcom/vent/ActReport1;)V

    iput-object v0, p0, Lcom/vent/ActReport1;->bXC:Lcom/vent/ActReport1$a;

    const v0, 0x7f09029d

    invoke-virtual {p0, v0}, Lcom/vent/ActReport1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/n;

    iput-object v0, p0, Lcom/vent/ActReport1;->bXF:Landroid/support/v4/widget/n;

    iget-object v0, p0, Lcom/vent/ActReport1;->bXF:Landroid/support/v4/widget/n;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/n;->setOnRefreshListener(Landroid/support/v4/widget/n$b;)V

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/vent/ActReport1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    iget-object v1, p0, Lcom/vent/ActReport1;->bXC:Lcom/vent/ActReport1$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$i;)V

    new-instance v1, Lcom/vent/views/a;

    invoke-direct {v1, p0}, Lcom/vent/views/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$h;)V

    invoke-direct {p0}, Lcom/vent/ActReport1;->Cf()V

    return-void
.end method

.method protected final onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/ActReport1;->bXF:Landroid/support/v4/widget/n;

    iput-object v0, p0, Lcom/vent/ActReport1;->bXC:Lcom/vent/ActReport1$a;

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
    invoke-virtual {p0}, Lcom/vent/ActReport1;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/vent/a;->onResume()V

    const-string v0, "ReportSelectReason"

    invoke-static {p0, v0}, Lcom/vent/ax;->v(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
