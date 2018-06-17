.class final Lcom/vent/bb$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    sget-object v0, Lcom/vent/bb;->cjg:Ljava/lang/String;

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/vent/bb;->cjf:J

    const/4 v1, 0x0

    sput-object v1, Lcom/vent/bb;->cjg:Ljava/lang/String;

    invoke-static {v0}, Lcom/vent/bb;->ef(Ljava/lang/String;)V

    return-void
.end method
