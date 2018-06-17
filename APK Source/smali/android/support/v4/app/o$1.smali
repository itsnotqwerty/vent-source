.class final Landroid/support/v4/app/o$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yb:Landroid/support/v4/app/o;


# direct methods
.method constructor <init>(Landroid/support/v4/app/o;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/o$1;->yb:Landroid/support/v4/app/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/o$1;->yb:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->execPendingActions()Z

    return-void
.end method
