.class final Lcom/vent/ActStoreEmotCat$1;
.super Lcom/vent/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActStoreEmotCat;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bYB:Lcom/vent/ActStoreEmotCat;


# direct methods
.method constructor <init>(Lcom/vent/ActStoreEmotCat;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActStoreEmotCat$1;->bYB:Lcom/vent/ActStoreEmotCat;

    invoke-direct {p0}, Lcom/vent/b/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final aQ(Z)V
    .locals 6

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vent/ActStoreEmotCat$1;->bYB:Lcom/vent/ActStoreEmotCat;

    invoke-static {v0}, Lcom/vent/d/c;->bF(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vent/ActStoreEmotCat$1;->bYB:Lcom/vent/ActStoreEmotCat;

    invoke-virtual {v0}, Lcom/vent/ActStoreEmotCat;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/vent/b/a;->Fr()I

    move-result v0

    rsub-int/lit8 v0, v0, 0xa

    if-lez v0, :cond_0

    new-instance v0, Landroid/support/v7/app/c$a;

    iget-object v1, p0, Lcom/vent/ActStoreEmotCat$1;->bYB:Lcom/vent/ActStoreEmotCat;

    invoke-direct {v0, v1}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/vent/ActStoreEmotCat$1;->bYB:Lcom/vent/ActStoreEmotCat;

    const v2, 0x7f0f026d

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Lcom/vent/b/a;->Fr()I

    move-result v5

    rsub-int/lit8 v5, v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/vent/ActStoreEmotCat;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    new-instance v1, Lcom/vent/ActStoreEmotCat$1$1;

    invoke-direct {v1, p0}, Lcom/vent/ActStoreEmotCat$1$1;-><init>(Lcom/vent/ActStoreEmotCat$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->show()Landroid/support/v7/app/c;

    goto :goto_0
.end method
