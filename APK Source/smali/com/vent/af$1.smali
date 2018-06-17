.class final Lcom/vent/af$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/af;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cdU:Lcom/vent/af;


# direct methods
.method constructor <init>(Lcom/vent/af;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/af$1;->cdU:Lcom/vent/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/vent/af$1;->cdU:Lcom/vent/af;

    invoke-static {v0}, Lcom/vent/d/c;->a(Landroid/support/v4/app/h;)V

    return-void
.end method
