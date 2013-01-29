.class public final enum Lcom/android/gallery3d/app/MovieActivity$SensorRotation;
.super Ljava/lang/Enum;
.source "MovieActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MovieActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SensorRotation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/gallery3d/app/MovieActivity$SensorRotation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/gallery3d/app/MovieActivity$SensorRotation;

.field public static final enum VIDEO_ORIENTATION_LANDSCAPE:Lcom/android/gallery3d/app/MovieActivity$SensorRotation;

.field public static final enum VIDEO_ORIENTATION_PORTRAIT:Lcom/android/gallery3d/app/MovieActivity$SensorRotation;

.field public static final enum VIDEO_ORIENTATION_SENSOR:Lcom/android/gallery3d/app/MovieActivity$SensorRotation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-instance v0, Lcom/android/gallery3d/app/MovieActivity$SensorRotation;

    const-string v1, "VIDEO_ORIENTATION_PORTRAIT"

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/app/MovieActivity$SensorRotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/app/MovieActivity$SensorRotation;->VIDEO_ORIENTATION_PORTRAIT:Lcom/android/gallery3d/app/MovieActivity$SensorRotation;

    .line 64
    new-instance v0, Lcom/android/gallery3d/app/MovieActivity$SensorRotation;

    const-string v1, "VIDEO_ORIENTATION_LANDSCAPE"

    invoke-direct {v0, v1, v3}, Lcom/android/gallery3d/app/MovieActivity$SensorRotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/app/MovieActivity$SensorRotation;->VIDEO_ORIENTATION_LANDSCAPE:Lcom/android/gallery3d/app/MovieActivity$SensorRotation;

    .line 65
    new-instance v0, Lcom/android/gallery3d/app/MovieActivity$SensorRotation;

    const-string v1, "VIDEO_ORIENTATION_SENSOR"

    invoke-direct {v0, v1, v4}, Lcom/android/gallery3d/app/MovieActivity$SensorRotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/app/MovieActivity$SensorRotation;->VIDEO_ORIENTATION_SENSOR:Lcom/android/gallery3d/app/MovieActivity$SensorRotation;

    .line 62
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/gallery3d/app/MovieActivity$SensorRotation;

    sget-object v1, Lcom/android/gallery3d/app/MovieActivity$SensorRotation;->VIDEO_ORIENTATION_PORTRAIT:Lcom/android/gallery3d/app/MovieActivity$SensorRotation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/gallery3d/app/MovieActivity$SensorRotation;->VIDEO_ORIENTATION_LANDSCAPE:Lcom/android/gallery3d/app/MovieActivity$SensorRotation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/gallery3d/app/MovieActivity$SensorRotation;->VIDEO_ORIENTATION_SENSOR:Lcom/android/gallery3d/app/MovieActivity$SensorRotation;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/gallery3d/app/MovieActivity$SensorRotation;->$VALUES:[Lcom/android/gallery3d/app/MovieActivity$SensorRotation;

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
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/gallery3d/app/MovieActivity$SensorRotation;
    .locals 1
    .parameter

    .prologue
    .line 62
    const-class v0, Lcom/android/gallery3d/app/MovieActivity$SensorRotation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/MovieActivity$SensorRotation;

    return-object v0
.end method

.method public static values()[Lcom/android/gallery3d/app/MovieActivity$SensorRotation;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/gallery3d/app/MovieActivity$SensorRotation;->$VALUES:[Lcom/android/gallery3d/app/MovieActivity$SensorRotation;

    invoke-virtual {v0}, [Lcom/android/gallery3d/app/MovieActivity$SensorRotation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/gallery3d/app/MovieActivity$SensorRotation;

    return-object v0
.end method
