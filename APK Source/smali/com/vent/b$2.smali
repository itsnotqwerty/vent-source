.class final Lcom/vent/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/b;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bUK:Lcom/vent/b;


# direct methods
.method constructor <init>(Lcom/vent/b;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/b$2;->bUK:Lcom/vent/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/vent/b$2;->bUK:Lcom/vent/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vent/b;->aU(Z)V

    return-void
.end method
