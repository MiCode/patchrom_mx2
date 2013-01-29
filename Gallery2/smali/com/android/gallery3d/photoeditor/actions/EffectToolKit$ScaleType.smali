.class public final enum Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;
.super Ljava/lang/Enum;
.source "EffectToolKit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScaleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;

.field public static final enum COLOR:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;

.field public static final enum GENERIC:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;

.field public static final enum LIGHT:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;

.field public static final enum SATURATION:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;

.field public static final enum SHADOW:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;

    const-string v1, "LIGHT"

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;->LIGHT:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;

    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;

    const-string v1, "SHADOW"

    invoke-direct {v0, v1, v3}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;->SHADOW:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;

    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;

    const-string v1, "COLOR"

    invoke-direct {v0, v1, v4}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;->COLOR:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;

    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;

    const-string v1, "SATURATION"

    invoke-direct {v0, v1, v5}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;->SATURATION:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;

    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;

    const-string v1, "GENERIC"

    invoke-direct {v0, v1, v6}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;->GENERIC:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;

    .line 41
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;

    sget-object v1, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;->LIGHT:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;->SHADOW:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;->COLOR:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;->SATURATION:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;->GENERIC:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;->$VALUES:[Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;
    .locals 1
    .parameter

    .prologue
    .line 41
    const-class v0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;

    return-object v0
.end method

.method public static values()[Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;->$VALUES:[Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;

    invoke-virtual {v0}, [Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;

    return-object v0
.end method
