.class final Lcom/vent/b/a$1;
.super Lcom/vent/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/b/a;->s(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic bXe:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/b/a$1;->bXe:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/vent/b/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final aQ(Z)V
    .locals 1

    iget-object v0, p0, Lcom/vent/b/a$1;->bXe:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/b/a;->f(Landroid/app/Application;)V

    return-void
.end method
