.class final Lcom/vent/ActEmotions$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/SearchView$b;


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

    iput-object p1, p0, Lcom/vent/ActEmotions$2;->bVw:Lcom/vent/ActEmotions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClose()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/ActEmotions$2;->bVw:Lcom/vent/ActEmotions;

    invoke-virtual {v0, v1}, Lcom/vent/ActEmotions;->aV(Z)V

    return v1
.end method
