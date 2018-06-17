.class public final enum Lcom/amazonaws/util/Classes;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/util/Classes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic auN:[Lcom/amazonaws/util/Classes;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/amazonaws/util/Classes;

    sput-object v0, Lcom/amazonaws/util/Classes;->auN:[Lcom/amazonaws/util/Classes;

    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const-class v0, Ljava/lang/Object;

    if-ne p1, v0, :cond_2

    :cond_0
    move-object v0, v2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eq v1, p0, :cond_1

    if-nez v1, :cond_4

    move-object v0, v2

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/util/Classes;
    .locals 1

    const-class v0, Lcom/amazonaws/util/Classes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/util/Classes;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/util/Classes;
    .locals 1

    sget-object v0, Lcom/amazonaws/util/Classes;->auN:[Lcom/amazonaws/util/Classes;

    invoke-virtual {v0}, [Lcom/amazonaws/util/Classes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/util/Classes;

    return-object v0
.end method
