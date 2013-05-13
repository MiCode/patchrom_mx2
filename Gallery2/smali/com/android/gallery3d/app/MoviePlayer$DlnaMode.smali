.class final enum Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;
.super Ljava/lang/Enum;
.source "MoviePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DlnaMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

.field public static final enum DLNA_PLAYIN:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

.field public static final enum DLNA_PLAYOUT:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

.field public static final enum NATIVE_PLAY:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 185
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    const-string v1, "NATIVE_PLAY"

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;->NATIVE_PLAY:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    .line 186
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    const-string v1, "DLNA_PLAYOUT"

    invoke-direct {v0, v1, v3}, Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;->DLNA_PLAYOUT:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    .line 187
    new-instance v0, Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    const-string v1, "DLNA_PLAYIN"

    invoke-direct {v0, v1, v4}, Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;->DLNA_PLAYIN:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    .line 184
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    sget-object v1, Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;->NATIVE_PLAY:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;->DLNA_PLAYOUT:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;->DLNA_PLAYIN:Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;->$VALUES:[Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

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
    .line 184
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;
    .locals 1
    .parameter

    .prologue
    .line 184
    const-class v0, Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    return-object v0
.end method

.method public static values()[Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;->$VALUES:[Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    invoke-virtual {v0}, [Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/gallery3d/app/MoviePlayer$DlnaMode;

    return-object v0
.end method
