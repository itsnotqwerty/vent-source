.class final Lcom/vent/ActEmotions$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/SearchView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActEmotions;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/vent/ActEmotions$1;->bVw:Lcom/vent/ActEmotions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iF()Z
    .locals 1

    iget-object v0, p0, Lcom/vent/ActEmotions$1;->bVw:Lcom/vent/ActEmotions;

    invoke-static {v0}, Lcom/vent/d/c;->t(Landroid/app/Activity;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final onQueryTextChange(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/vent/ActEmotions$1;->bVw:Lcom/vent/ActEmotions;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v1, v0, Lcom/vent/ActEmotions;->bVr:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object p1, v0, Lcom/vent/ActEmotions;->bVr:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/vent/ActEmotions;->Bs()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
