.class final Lcom/vent/ActMain$13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActMain;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic bXe:Landroid/app/Activity;

.field final synthetic bXf:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActMain$13;->bXe:Landroid/app/Activity;

    iput-object p2, p0, Lcom/vent/ActMain$13;->bXf:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/vent/ActMain$13;->bXe:Landroid/app/Activity;

    iget-object v1, p0, Lcom/vent/ActMain$13;->bXf:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/vent/ActMain;->b(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method
