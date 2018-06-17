.class final Lcom/vent/ActEmotions$9;
.super Lcom/vent/d/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActEmotions;->aR(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bVw:Lcom/vent/ActEmotions;


# direct methods
.method constructor <init>(Lcom/vent/ActEmotions;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActEmotions$9;->bVw:Lcom/vent/ActEmotions;

    invoke-direct {p0}, Lcom/vent/d/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/vent/ActEmotions$9;->bVw:Lcom/vent/ActEmotions;

    invoke-static {v0}, Lcom/vent/d/c;->bF(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/app/c$a;

    iget-object v1, p0, Lcom/vent/ActEmotions$9;->bVw:Lcom/vent/ActEmotions;

    invoke-direct {v0, v1}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/vent/ActEmotions$9;->bVw:Lcom/vent/ActEmotions;

    const v2, 0x7f0f004b

    invoke-virtual {v1, v2}, Lcom/vent/ActEmotions;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f0049

    new-instance v2, Lcom/vent/ActEmotions$9$1;

    invoke-direct {v2, p0}, Lcom/vent/ActEmotions$9$1;-><init>(Lcom/vent/ActEmotions$9;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    :cond_0
    return-void
.end method
