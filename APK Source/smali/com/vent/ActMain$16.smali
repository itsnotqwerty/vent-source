.class final Lcom/vent/ActMain$16;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActMain;->a(Landroid/support/v7/app/d;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic bXk:Landroid/support/v7/app/d;

.field final synthetic bXl:Z


# direct methods
.method constructor <init>(Landroid/support/v7/app/d;Z)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActMain$16;->bXk:Landroid/support/v7/app/d;

    iput-boolean p2, p0, Lcom/vent/ActMain$16;->bXl:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/vent/ActMain$16;->bXk:Landroid/support/v7/app/d;

    iget-boolean v1, p0, Lcom/vent/ActMain$16;->bXl:Z

    invoke-static {v0, v1}, Lcom/vent/ActMain;->a(Landroid/support/v7/app/d;Z)V

    return-void
.end method
