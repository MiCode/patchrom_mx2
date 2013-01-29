.class public final enum Lcom/meizu/video/client/common/Constant$InterfaceType;
.super Ljava/lang/Enum;
.source "Constant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/common/Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InterfaceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/video/client/common/Constant$InterfaceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/video/client/common/Constant$InterfaceType;

.field public static final enum AREAYEARORDERTYPE:Lcom/meizu/video/client/common/Constant$InterfaceType;

.field public static final enum CHANNEL:Lcom/meizu/video/client/common/Constant$InterfaceType;

.field public static final enum CHANNELDETAIL:Lcom/meizu/video/client/common/Constant$InterfaceType;

.field public static final enum CHANNELPROGRAMDETAIL:Lcom/meizu/video/client/common/Constant$InterfaceType;

.field public static final enum RECOMMEND:Lcom/meizu/video/client/common/Constant$InterfaceType;

.field public static final enum SEARCH:Lcom/meizu/video/client/common/Constant$InterfaceType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    new-instance v0, Lcom/meizu/video/client/common/Constant$InterfaceType;

    const-string v1, "CHANNEL"

    invoke-direct {v0, v1, v3}, Lcom/meizu/video/client/common/Constant$InterfaceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/video/client/common/Constant$InterfaceType;->CHANNEL:Lcom/meizu/video/client/common/Constant$InterfaceType;

    .line 42
    new-instance v0, Lcom/meizu/video/client/common/Constant$InterfaceType;

    const-string v1, "CHANNELDETAIL"

    invoke-direct {v0, v1, v4}, Lcom/meizu/video/client/common/Constant$InterfaceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/video/client/common/Constant$InterfaceType;->CHANNELDETAIL:Lcom/meizu/video/client/common/Constant$InterfaceType;

    .line 43
    new-instance v0, Lcom/meizu/video/client/common/Constant$InterfaceType;

    const-string v1, "CHANNELPROGRAMDETAIL"

    invoke-direct {v0, v1, v5}, Lcom/meizu/video/client/common/Constant$InterfaceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/video/client/common/Constant$InterfaceType;->CHANNELPROGRAMDETAIL:Lcom/meizu/video/client/common/Constant$InterfaceType;

    .line 44
    new-instance v0, Lcom/meizu/video/client/common/Constant$InterfaceType;

    const-string v1, "RECOMMEND"

    invoke-direct {v0, v1, v6}, Lcom/meizu/video/client/common/Constant$InterfaceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/video/client/common/Constant$InterfaceType;->RECOMMEND:Lcom/meizu/video/client/common/Constant$InterfaceType;

    .line 45
    new-instance v0, Lcom/meizu/video/client/common/Constant$InterfaceType;

    const-string v1, "SEARCH"

    invoke-direct {v0, v1, v7}, Lcom/meizu/video/client/common/Constant$InterfaceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/video/client/common/Constant$InterfaceType;->SEARCH:Lcom/meizu/video/client/common/Constant$InterfaceType;

    .line 46
    new-instance v0, Lcom/meizu/video/client/common/Constant$InterfaceType;

    const-string v1, "AREAYEARORDERTYPE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/meizu/video/client/common/Constant$InterfaceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/video/client/common/Constant$InterfaceType;->AREAYEARORDERTYPE:Lcom/meizu/video/client/common/Constant$InterfaceType;

    .line 40
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/meizu/video/client/common/Constant$InterfaceType;

    sget-object v1, Lcom/meizu/video/client/common/Constant$InterfaceType;->CHANNEL:Lcom/meizu/video/client/common/Constant$InterfaceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/video/client/common/Constant$InterfaceType;->CHANNELDETAIL:Lcom/meizu/video/client/common/Constant$InterfaceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/video/client/common/Constant$InterfaceType;->CHANNELPROGRAMDETAIL:Lcom/meizu/video/client/common/Constant$InterfaceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/meizu/video/client/common/Constant$InterfaceType;->RECOMMEND:Lcom/meizu/video/client/common/Constant$InterfaceType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/meizu/video/client/common/Constant$InterfaceType;->SEARCH:Lcom/meizu/video/client/common/Constant$InterfaceType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/meizu/video/client/common/Constant$InterfaceType;->AREAYEARORDERTYPE:Lcom/meizu/video/client/common/Constant$InterfaceType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/video/client/common/Constant$InterfaceType;->$VALUES:[Lcom/meizu/video/client/common/Constant$InterfaceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/video/client/common/Constant$InterfaceType;
    .locals 1
    .parameter

    .prologue
    .line 40
    const-class v0, Lcom/meizu/video/client/common/Constant$InterfaceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/common/Constant$InterfaceType;

    return-object v0
.end method

.method public static values()[Lcom/meizu/video/client/common/Constant$InterfaceType;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/meizu/video/client/common/Constant$InterfaceType;->$VALUES:[Lcom/meizu/video/client/common/Constant$InterfaceType;

    invoke-virtual {v0}, [Lcom/meizu/video/client/common/Constant$InterfaceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/video/client/common/Constant$InterfaceType;

    return-object v0
.end method
