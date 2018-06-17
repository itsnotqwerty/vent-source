.class public final Lio/intercom/a/a/a/g/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/g/b/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/g/b/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/g/b/d",
        "<TR;>;"
    }
.end annotation


# static fields
.field static final cQL:Lio/intercom/a/a/a/g/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/g/b/c",
            "<*>;"
        }
    .end annotation
.end field

.field private static final cQM:Lio/intercom/a/a/a/g/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/g/b/e",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/intercom/a/a/a/g/b/c;

    invoke-direct {v0}, Lio/intercom/a/a/a/g/b/c;-><init>()V

    sput-object v0, Lio/intercom/a/a/a/g/b/c;->cQL:Lio/intercom/a/a/a/g/b/c;

    new-instance v0, Lio/intercom/a/a/a/g/b/c$a;

    invoke-direct {v0}, Lio/intercom/a/a/a/g/b/c$a;-><init>()V

    sput-object v0, Lio/intercom/a/a/a/g/b/c;->cQM:Lio/intercom/a/a/a/g/b/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static JN()Lio/intercom/a/a/a/g/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/intercom/a/a/a/g/b/e",
            "<TR;>;"
        }
    .end annotation

    sget-object v0, Lio/intercom/a/a/a/g/b/c;->cQM:Lio/intercom/a/a/a/g/b/e;

    return-object v0
.end method

.method public static JO()Lio/intercom/a/a/a/g/b/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/intercom/a/a/a/g/b/d",
            "<TR;>;"
        }
    .end annotation

    sget-object v0, Lio/intercom/a/a/a/g/b/c;->cQL:Lio/intercom/a/a/a/g/b/c;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lio/intercom/a/a/a/g/b/d$a;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
