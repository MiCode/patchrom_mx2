.class final enum Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;
.super Ljava/lang/Enum;
.source "MovieActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MovieActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NetWorkInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;

.field public static final enum NO_CONNECT:Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;

.field public static final enum ONLY_WIFI:Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;

.field public static final enum WIFI_MOBILE:Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 124
    new-instance v0, Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;

    const-string v1, "NO_CONNECT"

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;->NO_CONNECT:Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;

    .line 125
    new-instance v0, Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;

    const-string v1, "ONLY_WIFI"

    invoke-direct {v0, v1, v3}, Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;->ONLY_WIFI:Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;

    .line 126
    new-instance v0, Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;

    const-string v1, "WIFI_MOBILE"

    invoke-direct {v0, v1, v4}, Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;->WIFI_MOBILE:Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;

    .line 123
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;

    sget-object v1, Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;->NO_CONNECT:Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;->ONLY_WIFI:Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;->WIFI_MOBILE:Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;->$VALUES:[Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;

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
    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;
    .locals 1
    .parameter

    .prologue
    .line 123
    const-class v0, Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;

    return-object v0
.end method

.method public static values()[Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;->$VALUES:[Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;

    invoke-virtual {v0}, [Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/gallery3d/app/MovieActivity$NetWorkInfo;

    return-object v0
.end method
