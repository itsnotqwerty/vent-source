.class final Lcom/vent/views/MyFragmentTabHost$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/views/MyFragmentTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field final coB:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field final coC:Landroid/os/Bundle;

.field final tag:Ljava/lang/String;

.field wD:Landroid/support/v4/app/i;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vent/views/MyFragmentTabHost$c;->tag:Ljava/lang/String;

    iput-object p2, p0, Lcom/vent/views/MyFragmentTabHost$c;->coB:Ljava/lang/Class;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/views/MyFragmentTabHost$c;->coC:Landroid/os/Bundle;

    return-void
.end method
