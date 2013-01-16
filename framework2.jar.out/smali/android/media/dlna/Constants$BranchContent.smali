.class public final enum Landroid/media/dlna/Constants$BranchContent;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/dlna/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BranchContent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/media/dlna/Constants$BranchContent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/media/dlna/Constants$BranchContent;

.field public static final enum AUDIO:Landroid/media/dlna/Constants$BranchContent;

.field public static final enum IMAGE:Landroid/media/dlna/Constants$BranchContent;

.field public static final enum VIDEO:Landroid/media/dlna/Constants$BranchContent;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 119
    new-instance v0, Landroid/media/dlna/Constants$BranchContent;

    const-string v1, "AUDIO"

    invoke-direct {v0, v1, v2}, Landroid/media/dlna/Constants$BranchContent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/dlna/Constants$BranchContent;->AUDIO:Landroid/media/dlna/Constants$BranchContent;

    .line 120
    new-instance v0, Landroid/media/dlna/Constants$BranchContent;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v3}, Landroid/media/dlna/Constants$BranchContent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/dlna/Constants$BranchContent;->IMAGE:Landroid/media/dlna/Constants$BranchContent;

    .line 121
    new-instance v0, Landroid/media/dlna/Constants$BranchContent;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v4}, Landroid/media/dlna/Constants$BranchContent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/dlna/Constants$BranchContent;->VIDEO:Landroid/media/dlna/Constants$BranchContent;

    .line 118
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/media/dlna/Constants$BranchContent;

    sget-object v1, Landroid/media/dlna/Constants$BranchContent;->AUDIO:Landroid/media/dlna/Constants$BranchContent;

    aput-object v1, v0, v2

    sget-object v1, Landroid/media/dlna/Constants$BranchContent;->IMAGE:Landroid/media/dlna/Constants$BranchContent;

    aput-object v1, v0, v3

    sget-object v1, Landroid/media/dlna/Constants$BranchContent;->VIDEO:Landroid/media/dlna/Constants$BranchContent;

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/dlna/Constants$BranchContent;->$VALUES:[Landroid/media/dlna/Constants$BranchContent;

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
    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/media/dlna/Constants$BranchContent;
    .locals 1
    .parameter "name"

    .prologue
    .line 118
    const-class v0, Landroid/media/dlna/Constants$BranchContent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/media/dlna/Constants$BranchContent;

    return-object v0
.end method

.method public static values()[Landroid/media/dlna/Constants$BranchContent;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Landroid/media/dlna/Constants$BranchContent;->$VALUES:[Landroid/media/dlna/Constants$BranchContent;

    invoke-virtual {v0}, [Landroid/media/dlna/Constants$BranchContent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/dlna/Constants$BranchContent;

    return-object v0
.end method
