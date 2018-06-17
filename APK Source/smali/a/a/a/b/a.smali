.class public abstract La/a/a/b/a;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/b/d;


# static fields
.field protected static final coH:Ljava/util/logging/Logger;


# instance fields
.field private final name:Ljava/lang/String;

.field private final priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, La/a/a/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, La/a/a/b/a;->coH:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/b/a;->name:Ljava/lang/String;

    iput p2, p0, La/a/a/b/a;->priority:I

    return-void
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, La/a/a/b/d;

    iget v0, p0, La/a/a/b/a;->priority:I

    invoke-interface {p1}, La/a/a/b/d;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/b/a;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriority()I
    .locals 1

    iget v0, p0, La/a/a/b/a;->priority:I

    return v0
.end method
