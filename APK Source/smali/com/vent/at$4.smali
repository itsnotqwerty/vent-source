.class final Lcom/vent/at$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/at;->onViewStateRestored(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cfC:Lcom/vent/at;


# direct methods
.method constructor <init>(Lcom/vent/at;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/at$4;->cfC:Lcom/vent/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/vent/at$4;->cfC:Lcom/vent/at;

    invoke-virtual {v0}, Lcom/vent/at;->DU()V

    :cond_0
    return-void
.end method
