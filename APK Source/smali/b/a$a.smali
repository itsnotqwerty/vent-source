.class final Lb/a$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Okio Watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/a$a;->setDaemon(Z)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lb/a;->KT()Lb/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/a;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
