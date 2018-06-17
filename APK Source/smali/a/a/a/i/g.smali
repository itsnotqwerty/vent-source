.class public final La/a/a/i/g;
.super Ljava/lang/Object;


# static fields
.field private static cuy:Ljava/lang/Boolean;


# direct methods
.method public static Go()Z
    .locals 1

    sget-object v0, La/a/a/i/g;->cuy:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "android.Manifest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, La/a/a/i/g;->cuy:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, La/a/a/i/g;->cuy:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, La/a/a/i/g;->cuy:Ljava/lang/Boolean;

    goto :goto_0
.end method
