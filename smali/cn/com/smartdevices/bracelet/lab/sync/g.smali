.class public Lcn/com/smartdevices/bracelet/lab/sync/G;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    invoke-static {p0}, Lcn/com/smartdevices/bracelet/E;->m(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcn/com/smartdevices/bracelet/lab/sync/SyncSportDataService;->a(Landroid/content/Context;J)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcn/com/smartdevices/bracelet/a/b;)V
    .locals 2

    invoke-static {}, Lcn/com/smartdevices/bracelet/config/b;->f()Lcn/com/smartdevices/bracelet/config/b;

    move-result-object v0

    iget-object v0, v0, Lcn/com/smartdevices/bracelet/config/b;->g:Lcn/com/smartdevices/bracelet/config/a/b;

    iget-object v0, v0, Lcn/com/smartdevices/bracelet/config/a/b;->ENABLE_RUNNING:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Sync"

    const-string v1, "syncServerTwoWayIfNeeded !Config.getInstance().RUNNER.ENABLE"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    invoke-static {p0}, Lcn/com/smartdevices/bracelet/E;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/sync/SyncSportDataService;->a(Landroid/content/Context;)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x4

    const/4 v1, 0x1

    invoke-static {}, Lcn/com/smartdevices/bracelet/config/b;->f()Lcn/com/smartdevices/bracelet/config/b;

    move-result-object v2

    iget-object v2, v2, Lcn/com/smartdevices/bracelet/config/b;->g:Lcn/com/smartdevices/bracelet/config/a/b;

    iget-object v2, v2, Lcn/com/smartdevices/bracelet/config/a/b;->ENABLE_RUNNING:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "Sync"

    const-string v2, "isNeedSyncToServer !Config.getInstance().RUNNER.ENABLE"

    invoke-static {v1, v2}, Lcn/com/smartdevices/bracelet/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    invoke-static {}, Lcn/com/smartdevices/bracelet/s;->a()Lcn/com/smartdevices/bracelet/s;

    move-result-object v2

    new-instance v3, Lcn/com/smartdevices/bracelet/w;

    invoke-direct {v3, v1}, Lcn/com/smartdevices/bracelet/w;-><init>(I)V

    invoke-virtual {v2, v3}, Lcn/com/smartdevices/bracelet/s;->a(Lcn/com/smartdevices/bracelet/w;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    new-instance v3, Lcn/com/smartdevices/bracelet/w;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcn/com/smartdevices/bracelet/w;-><init>(I)V

    invoke-virtual {v2, v3}, Lcn/com/smartdevices/bracelet/s;->a(Lcn/com/smartdevices/bracelet/w;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcn/com/smartdevices/bracelet/gps/a/b;->c(Landroid/content/Context;)Lcn/com/smartdevices/bracelet/gps/a/e;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcn/com/smartdevices/bracelet/gps/a/e;->n()Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-static {p0, v5}, Lcn/com/smartdevices/bracelet/gps/a/b;->c(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    invoke-static {p0, v5}, Lcn/com/smartdevices/bracelet/gps/a/b;->e(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    invoke-static {p0, v5}, Lcn/com/smartdevices/bracelet/gps/a/b;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;ILjava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcn/com/smartdevices/bracelet/w;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    invoke-static {p0}, Lcn/com/smartdevices/bracelet/E;->m(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcn/com/smartdevices/bracelet/lab/sync/SyncSportDataService;->a(Landroid/content/Context;ILjava/util/ArrayList;)Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lcn/com/smartdevices/bracelet/a/b;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcn/com/smartdevices/bracelet/config/b;->f()Lcn/com/smartdevices/bracelet/config/b;

    move-result-object v1

    iget-object v1, v1, Lcn/com/smartdevices/bracelet/config/b;->g:Lcn/com/smartdevices/bracelet/config/a/b;

    iget-object v1, v1, Lcn/com/smartdevices/bracelet/config/a/b;->ENABLE_RUNNING:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Sync"

    const-string v2, "syncToServerSyncedIfNeeded !Config.getInstance().RUNNER.ENABLE"

    invoke-static {v1, v2}, Lcn/com/smartdevices/bracelet/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    invoke-static {p0}, Lcn/com/smartdevices/bracelet/E;->m(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/lab/sync/SyncSportDataService;->c(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method
