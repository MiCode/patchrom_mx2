.class public final enum Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;
.super Ljava/lang/Enum;
.source "MovieControllerOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MovieControllerOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

.field public static final enum ALLCYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

.field public static final enum LISTCYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

.field public static final enum NOMODE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

.field public static final enum SINGLECYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    new-instance v0, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    const-string v1, "NOMODE"

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->NOMODE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    .line 92
    new-instance v0, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    const-string v1, "SINGLECYCLE"

    invoke-direct {v0, v1, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->SINGLECYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    .line 93
    new-instance v0, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    const-string v1, "LISTCYCLE"

    invoke-direct {v0, v1, v4}, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->LISTCYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    .line 94
    new-instance v0, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    const-string v1, "ALLCYCLE"

    invoke-direct {v0, v1, v5}, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->ALLCYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    .line 90
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->NOMODE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->SINGLECYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->LISTCYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->ALLCYCLE:Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->$VALUES:[Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

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
    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;
    .locals 1
    .parameter

    .prologue
    .line 90
    const-class v0, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    return-object v0
.end method

.method public static values()[Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->$VALUES:[Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    invoke-virtual {v0}, [Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;

    return-object v0
.end method
