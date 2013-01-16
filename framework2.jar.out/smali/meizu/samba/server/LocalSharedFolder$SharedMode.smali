.class public final enum Lmeizu/samba/server/LocalSharedFolder$SharedMode;
.super Ljava/lang/Enum;
.source "LocalSharedFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu/samba/server/LocalSharedFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SharedMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmeizu/samba/server/LocalSharedFolder$SharedMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmeizu/samba/server/LocalSharedFolder$SharedMode;

.field public static final enum MODE_SHARE:Lmeizu/samba/server/LocalSharedFolder$SharedMode;

.field public static final enum MODE_USER:Lmeizu/samba/server/LocalSharedFolder$SharedMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lmeizu/samba/server/LocalSharedFolder$SharedMode;

    const-string v1, "MODE_SHARE"

    invoke-direct {v0, v1, v2}, Lmeizu/samba/server/LocalSharedFolder$SharedMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmeizu/samba/server/LocalSharedFolder$SharedMode;->MODE_SHARE:Lmeizu/samba/server/LocalSharedFolder$SharedMode;

    .line 17
    new-instance v0, Lmeizu/samba/server/LocalSharedFolder$SharedMode;

    const-string v1, "MODE_USER"

    invoke-direct {v0, v1, v3}, Lmeizu/samba/server/LocalSharedFolder$SharedMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmeizu/samba/server/LocalSharedFolder$SharedMode;->MODE_USER:Lmeizu/samba/server/LocalSharedFolder$SharedMode;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lmeizu/samba/server/LocalSharedFolder$SharedMode;

    sget-object v1, Lmeizu/samba/server/LocalSharedFolder$SharedMode;->MODE_SHARE:Lmeizu/samba/server/LocalSharedFolder$SharedMode;

    aput-object v1, v0, v2

    sget-object v1, Lmeizu/samba/server/LocalSharedFolder$SharedMode;->MODE_USER:Lmeizu/samba/server/LocalSharedFolder$SharedMode;

    aput-object v1, v0, v3

    sput-object v0, Lmeizu/samba/server/LocalSharedFolder$SharedMode;->$VALUES:[Lmeizu/samba/server/LocalSharedFolder$SharedMode;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmeizu/samba/server/LocalSharedFolder$SharedMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 8
    const-class v0, Lmeizu/samba/server/LocalSharedFolder$SharedMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmeizu/samba/server/LocalSharedFolder$SharedMode;

    return-object v0
.end method

.method public static values()[Lmeizu/samba/server/LocalSharedFolder$SharedMode;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lmeizu/samba/server/LocalSharedFolder$SharedMode;->$VALUES:[Lmeizu/samba/server/LocalSharedFolder$SharedMode;

    invoke-virtual {v0}, [Lmeizu/samba/server/LocalSharedFolder$SharedMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmeizu/samba/server/LocalSharedFolder$SharedMode;

    return-object v0
.end method
