.class public final enum Landroid/media/dlna/Constants$NodeType;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/dlna/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NodeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/media/dlna/Constants$NodeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/media/dlna/Constants$NodeType;

.field public static final enum BRANCH:Landroid/media/dlna/Constants$NodeType;

.field public static final enum LEAF:Landroid/media/dlna/Constants$NodeType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 114
    new-instance v0, Landroid/media/dlna/Constants$NodeType;

    const-string v1, "BRANCH"

    invoke-direct {v0, v1, v2}, Landroid/media/dlna/Constants$NodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/dlna/Constants$NodeType;->BRANCH:Landroid/media/dlna/Constants$NodeType;

    .line 115
    new-instance v0, Landroid/media/dlna/Constants$NodeType;

    const-string v1, "LEAF"

    invoke-direct {v0, v1, v3}, Landroid/media/dlna/Constants$NodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/dlna/Constants$NodeType;->LEAF:Landroid/media/dlna/Constants$NodeType;

    .line 113
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/media/dlna/Constants$NodeType;

    sget-object v1, Landroid/media/dlna/Constants$NodeType;->BRANCH:Landroid/media/dlna/Constants$NodeType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/media/dlna/Constants$NodeType;->LEAF:Landroid/media/dlna/Constants$NodeType;

    aput-object v1, v0, v3

    sput-object v0, Landroid/media/dlna/Constants$NodeType;->$VALUES:[Landroid/media/dlna/Constants$NodeType;

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
    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/media/dlna/Constants$NodeType;
    .locals 1
    .parameter "name"

    .prologue
    .line 113
    const-class v0, Landroid/media/dlna/Constants$NodeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/media/dlna/Constants$NodeType;

    return-object v0
.end method

.method public static values()[Landroid/media/dlna/Constants$NodeType;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Landroid/media/dlna/Constants$NodeType;->$VALUES:[Landroid/media/dlna/Constants$NodeType;

    invoke-virtual {v0}, [Landroid/media/dlna/Constants$NodeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/dlna/Constants$NodeType;

    return-object v0
.end method
