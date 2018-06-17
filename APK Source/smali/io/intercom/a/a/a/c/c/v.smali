.class public final Lio/intercom/a/a/a/c/c/v;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/c/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/c/c/v$a;,
        Lio/intercom/a/a/a/c/c/v$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/c/n",
        "<TModel;TModel;>;"
    }
.end annotation


# static fields
.field private static final cNo:Lio/intercom/a/a/a/c/c/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/c/v",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/intercom/a/a/a/c/c/v;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/c/v;-><init>()V

    sput-object v0, Lio/intercom/a/a/a/c/c/v;->cNo:Lio/intercom/a/a/a/c/c/v;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IS()Lio/intercom/a/a/a/c/c/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/intercom/a/a/a/c/c/v",
            "<TT;>;"
        }
    .end annotation

    sget-object v0, Lio/intercom/a/a/a/c/c/v;->cNo:Lio/intercom/a/a/a/c/c/v;

    return-object v0
.end method


# virtual methods
.method public final aw(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public final b(Ljava/lang/Object;IILio/intercom/a/a/a/c/j;)Lio/intercom/a/a/a/c/c/n$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lio/intercom/a/a/a/c/j;",
            ")",
            "Lio/intercom/a/a/a/c/c/n$a",
            "<TModel;>;"
        }
    .end annotation

    new-instance v0, Lio/intercom/a/a/a/c/c/n$a;

    new-instance v1, Lio/intercom/a/a/a/h/b;

    invoke-direct {v1, p1}, Lio/intercom/a/a/a/h/b;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lio/intercom/a/a/a/c/c/v$b;

    invoke-direct {v2, p1}, Lio/intercom/a/a/a/c/c/v$b;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lio/intercom/a/a/a/c/c/n$a;-><init>(Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/a/b;)V

    return-object v0
.end method
