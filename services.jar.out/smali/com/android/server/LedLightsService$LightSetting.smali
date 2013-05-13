.class Lcom/android/server/LedLightsService$LightSetting;
.super Ljava/lang/Object;
.source "LedLightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LedLightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LightSetting"
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private lights:[I

.field private mode:I

.field priority:I

.field final synthetic this$0:Lcom/android/server/LedLightsService;


# direct methods
.method constructor <init>(Lcom/android/server/LedLightsService;)V
    .locals 0
    .parameter

    .prologue
    .line 759
    iput-object p1, p0, Lcom/android/server/LedLightsService$LightSetting;->this$0:Lcom/android/server/LedLightsService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/LedLightsService$LightSetting;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 759
    iget-object v0, p0, Lcom/android/server/LedLightsService$LightSetting;->lights:[I

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/LedLightsService$LightSetting;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 759
    iput-object p1, p0, Lcom/android/server/LedLightsService$LightSetting;->lights:[I

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/LedLightsService$LightSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 759
    iget-object v0, p0, Lcom/android/server/LedLightsService$LightSetting;->id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/LedLightsService$LightSetting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 759
    iput-object p1, p0, Lcom/android/server/LedLightsService$LightSetting;->id:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/LedLightsService$LightSetting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 759
    iget v0, p0, Lcom/android/server/LedLightsService$LightSetting;->mode:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/LedLightsService$LightSetting;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 759
    iput p1, p0, Lcom/android/server/LedLightsService$LightSetting;->mode:I

    return p1
.end method
