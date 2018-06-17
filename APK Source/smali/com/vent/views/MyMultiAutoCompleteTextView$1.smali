.class final Lcom/vent/views/MyMultiAutoCompleteTextView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/views/MyMultiAutoCompleteTextView;->onTextContextMenuItem(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic coD:Lcom/vent/views/MyMultiAutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/vent/views/MyMultiAutoCompleteTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/views/MyMultiAutoCompleteTextView$1;->coD:Lcom/vent/views/MyMultiAutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/vent/views/MyMultiAutoCompleteTextView$1;->coD:Lcom/vent/views/MyMultiAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/vent/views/MyMultiAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f00e1

    invoke-static {v0, v1}, Lcom/vent/d/c;->v(Landroid/content/Context;I)Landroid/support/v7/app/c;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/views/MyMultiAutoCompleteTextView$1;->coD:Lcom/vent/views/MyMultiAutoCompleteTextView;

    new-instance v2, Lcom/vent/views/MyMultiAutoCompleteTextView$1$1;

    invoke-direct {v2, p0, v0}, Lcom/vent/views/MyMultiAutoCompleteTextView$1$1;-><init>(Lcom/vent/views/MyMultiAutoCompleteTextView$1;Landroid/support/v7/app/c;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Lcom/vent/views/MyMultiAutoCompleteTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
