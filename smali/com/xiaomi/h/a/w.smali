.class public final enum Lcom/xiaomi/h/a/w;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/h/a/w;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/h/a/w;

.field public static final enum b:Lcom/xiaomi/h/a/w;

.field public static final enum c:Lcom/xiaomi/h/a/w;

.field public static final enum d:Lcom/xiaomi/h/a/w;

.field public static final enum e:Lcom/xiaomi/h/a/w;

.field public static final enum f:Lcom/xiaomi/h/a/w;

.field private static final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/h/a/w;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic j:[Lcom/xiaomi/h/a/w;


# instance fields
.field private final h:S

.field private final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/xiaomi/h/a/w;

    const-string v1, "DEBUG"

    const/4 v2, 0x0

    const-string v3, "debug"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/xiaomi/h/a/w;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/h/a/w;->a:Lcom/xiaomi/h/a/w;

    new-instance v0, Lcom/xiaomi/h/a/w;

    const-string v1, "TARGET"

    const-string v2, "target"

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/xiaomi/h/a/w;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/h/a/w;->b:Lcom/xiaomi/h/a/w;

    new-instance v0, Lcom/xiaomi/h/a/w;

    const-string v1, "ID"

    const-string v2, "id"

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/xiaomi/h/a/w;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/h/a/w;->c:Lcom/xiaomi/h/a/w;

    new-instance v0, Lcom/xiaomi/h/a/w;

    const-string v1, "APP_ID"

    const-string v2, "appId"

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/xiaomi/h/a/w;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/h/a/w;->d:Lcom/xiaomi/h/a/w;

    new-instance v0, Lcom/xiaomi/h/a/w;

    const-string v1, "FEEDBACKS"

    const-string v2, "feedbacks"

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/xiaomi/h/a/w;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/h/a/w;->e:Lcom/xiaomi/h/a/w;

    new-instance v0, Lcom/xiaomi/h/a/w;

    const-string v1, "CATEGORY"

    const/4 v2, 0x6

    const-string v3, "category"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/xiaomi/h/a/w;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/h/a/w;->f:Lcom/xiaomi/h/a/w;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/xiaomi/h/a/w;

    const/4 v1, 0x0

    sget-object v2, Lcom/xiaomi/h/a/w;->a:Lcom/xiaomi/h/a/w;

    aput-object v2, v0, v1

    sget-object v1, Lcom/xiaomi/h/a/w;->b:Lcom/xiaomi/h/a/w;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/h/a/w;->c:Lcom/xiaomi/h/a/w;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/h/a/w;->d:Lcom/xiaomi/h/a/w;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/h/a/w;->e:Lcom/xiaomi/h/a/w;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/h/a/w;->f:Lcom/xiaomi/h/a/w;

    aput-object v1, v0, v8

    sput-object v0, Lcom/xiaomi/h/a/w;->j:[Lcom/xiaomi/h/a/w;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/h/a/w;->g:Ljava/util/Map;

    const-class v0, Lcom/xiaomi/h/a/w;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/h/a/w;

    sget-object v2, Lcom/xiaomi/h/a/w;->g:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xiaomi/h/a/w;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-short p3, p0, Lcom/xiaomi/h/a/w;->h:S

    iput-object p4, p0, Lcom/xiaomi/h/a/w;->i:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/h/a/w;
    .locals 1

    const-class v0, Lcom/xiaomi/h/a/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/h/a/w;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/h/a/w;
    .locals 1

    sget-object v0, Lcom/xiaomi/h/a/w;->j:[Lcom/xiaomi/h/a/w;

    invoke-virtual {v0}, [Lcom/xiaomi/h/a/w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/h/a/w;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/h/a/w;->i:Ljava/lang/String;

    return-object v0
.end method