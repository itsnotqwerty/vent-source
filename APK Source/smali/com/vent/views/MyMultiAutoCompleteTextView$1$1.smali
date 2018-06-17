.class final Lcom/vent/views/MyMultiAutoCompleteTextView$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/views/MyMultiAutoCompleteTextView$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bTM:Landroid/support/v7/app/c;

.field final synthetic coE:Lcom/vent/views/MyMultiAutoCompleteTextView$1;


# direct methods
.method constructor <init>(Lcom/vent/views/MyMultiAutoCompleteTextView$1;Landroid/support/v7/app/c;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/views/MyMultiAutoCompleteTextView$1$1;->coE:Lcom/vent/views/MyMultiAutoCompleteTextView$1;

    iput-object p2, p0, Lcom/vent/views/MyMultiAutoCompleteTextView$1$1;->bTM:Landroid/support/v7/app/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/vent/views/MyMultiAutoCompleteTextView$1$1;->coE:Lcom/vent/views/MyMultiAutoCompleteTextView$1;

    iget-object v0, v0, Lcom/vent/views/MyMultiAutoCompleteTextView$1;->coD:Lcom/vent/views/MyMultiAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/vent/views/MyMultiAutoCompleteTextView;->FG()V

    iget-object v0, p0, Lcom/vent/views/MyMultiAutoCompleteTextView$1$1;->bTM:Landroid/support/v7/app/c;

    invoke-static {v0}, Lcom/vent/d/c;->a(Landroid/support/v7/app/l;)V

    return-void
.end method
